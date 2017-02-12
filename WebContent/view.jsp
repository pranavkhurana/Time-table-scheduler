<%@page import="scheduler.*"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
	
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>View Time-Table | Time Table Generator</title>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

	<!-- Theme CSS -->
    <link href="css/agency.min.css" rel="stylesheet">


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
	
</head>

<body>
<%
	Chromosome chrom=(Chromosome)request.getAttribute("son");
	int hours=inputdata.hoursperday,days=inputdata.daysperweek;
	int nostgrp=inputdata.nostudentgroup;
	Gene[] gene=chrom.gene;
	
	//days(only for display purpose)
	//String[] day=new String[days];
	
			
	//slot and break timings(only for display purpose)
	String start[]=new String[hours];
	String end[]=new String[hours];
	for(int i=0;i<hours;i++){
		start[i]=request.getParameter("start"+i);
		end[i]=request.getParameter("end"+i);
	}
	int breakslot=0;
	String sbreakslot=request.getParameter("breakslot");
	if(sbreakslot!=null)breakslot=Integer.parseInt(sbreakslot);
	
	//for each student group separate time table
	for(int i=0;i<nostgrp;i++){

		//status used to get name of student grp because in case first class is free it will throw error
		boolean status=false;
		int l=0;
		while(!status){
			
			//printing name of batch
			if(TimeTable.slot[gene[i].slotno[l]]!=null){
				
				out.print("<div class='container'><h3>"+TimeTable.slot[gene[i].slotno[l]].studentgroup.name+"</h3>");
				status=true;
			
			}
			l++;		
		}
		
		//printing column headings
		out.print("<table class='table table-bordered table-striped'>");		
		out.print("<thead><tr><td></td>");
		for(int k=0;k<hours;k++){
			
			//printing break if it exist
			if(sbreakslot!=null)
				if(breakslot==k)
					out.print("<th style='text-align:center;width:60px'>Break</th>");
			
			//printing heading
			if(start[k]!=null)
				out.print("<th style='text-align:center'>"+start[k]+"-"+end[k]+"</th>");
			else out.print("<th style='text-align:center'>Period "+(k+1)+"</th>");
		
		}
		out.print("</tr></thead>");
		out.print("<tbody>");
		
		
		//looping for each day
		for(int j=0;j<days;j++){
			
			
			out.print("<tr><td>Day "+(j+1)+"</td>");
			
			
			//looping for each hour of the day
			for(int k=0;k<hours;k++){
			
				//printing break if it exist
				if(sbreakslot!=null)
					if(breakslot==k)
						out.print("<td></td>");
				
				
				//checking if this slot is free otherwise printing it
				if(TimeTable.slot[gene[i].slotno[k+j*hours]]!=null){
					String teachername=scheduler.inputdata.teacher[TimeTable.slot[gene[i].slotno[k+j*hours]].teacherid].getName();
					out.print("<td style='text-align:center'>"+TimeTable.slot[gene[i].slotno[k+j*hours]].subject+"<br>"+teachername+"</td>");
				}
				else out.print("<td></td>");
			
			}
			
			out.print("</tr>");
		}
		
		out.print("</tbody></table></div><hr>");
	
	}
%>


<!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

<!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

<!-- Theme JavaScript -->
    <script src="js/agency.min.js"></script>

</body>

</html>


<%

/*
String shours=(String)request.getParameter("hours");
int hours=Integer.parseInt(shours);
out.println("Hours per day: "+hours);

String start[]=new String[hours];
String end[]=new String[hours];
for(int i=0;i<hours;i++){
	start[i]=request.getParameter("start"+i);
	end[i]=request.getParameter("end"+i);
	out.println("<br> Start of slot "+i+": "+start[i]);
	out.println("<br> End of slot "+i+": "+end[i]);
}

String breakstart=request.getParameter("breakstart");
String breakend=request.getParameter("breakend");
out.print("<br>Break Timing: "+breakstart+" to "+breakend);

String sdays=request.getParameter("days");
int days=Integer.parseInt(sdays);
out.println("<br> No of days per week: "+days+"<hr>");

String snoteachers=request.getParameter("noteachers");
int noteachers=Integer.parseInt(snoteachers);
String teacher[]=new String[noteachers];
String teachersubject[]=new String[noteachers];
for(int i=0;i<noteachers;i++){
	teacher[i]=request.getParameter("teacher"+i);
	teachersubject[i]=request.getParameter("teachersubject"+i);
	out.println("<br> Teacher "+i+": "+teacher[i]);
	out.println("<br> Subject:"+teachersubject[i]);
}



out.print("<hr>");
String snostgrp=request.getParameter("nostgrp");
int nostgrp=Integer.parseInt(snostgrp);
String stgrpname[]=new String[nostgrp];

for(int i=0;i<nostgrp;i++){
	stgrpname[i]=request.getParameter("stgrpname"+i);
	out.print("<br> Student group name: "+stgrpname[i]);
	
	String snostgrpsubject =request.getParameter("nosubject"+i);
	int nostgrpsubject=Integer.parseInt(snostgrpsubject);
	String stgrpsubject[]=new String[nostgrpsubject];
	for(int j=0;j<nostgrpsubject;j++){
		stgrpsubject[j]=request.getParameter("stgrpsubject"+j);
		out.print("<br>Stgrp Subject:"+stgrpsubject[j]);
	}
}

 */


%>


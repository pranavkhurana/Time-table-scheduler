package scheduler;

public class Utility {
	
	public static void printInputData(){
		System.out.println("Nostgrp="+inputdata.nostudentgroup+" Noteachers="+inputdata.noteacher+" daysperweek="+inputdata.daysperweek+" hoursperday="+inputdata.hoursperday);
		for(int i=0;i<inputdata.nostudentgroup;i++){
			
			System.out.println(inputdata.studentgroup[i].id+" "+inputdata.studentgroup[i].name);
			
			for(int j=0;j<inputdata.studentgroup[i].nosubject;j++){
				System.out.println(inputdata.studentgroup[i].subject[j]+" "+inputdata.studentgroup[i].hours[j]+" hrs "+inputdata.studentgroup[i].teacherid[j]);
			}
			System.out.println("");
		}
		
		for(int i=0;i<inputdata.noteacher;i++){			
			System.out.println(inputdata.teacher[i].id+" "+inputdata.teacher[i].name+" "+inputdata.teacher[i].subject+" "+inputdata.teacher[i].assigned);
		}
	}
	
	
	public static void printSlots(){
		
		int days=inputdata.daysperweek;
		int hours=inputdata.hoursperday;
		int nostgrp=inputdata.nostudentgroup;
		System.out.println("----Slots----");
		for(int i=0;i<days*hours*nostgrp;i++){
			if(TimeTable.slot[i]!=null)
				System.out.println(i+"- "+TimeTable.slot[i].studentgroup.name+" "+TimeTable.slot[i].subject+" "+TimeTable.slot[i].teacherid);
			else
				System.out.println("Free Period");
			if((i+1)%(hours*days)==0) System.out.println("******************************");
		}
		
	}
	
	
	
}


<%
	String si=(String)request.getParameter("val");
	int i;
	if(si!=""){
		i=Integer.parseInt(si);	
		//out.print("Enter Faculty Details");
		for(int j=0;j<i;j++){
%>		  
			<div class="form-inline" role="form" style="padding-left:30px">
				  <div class="form-group">
				    <label for="teachername">Name:</label>
				    <input type="text" class="form-control" id="teachername" name="teacher" required>
				  </div>
				  <div class="form-group">
				    <label for="teachersubject">Subject:</label>
				    <input type="text" class="form-control" id="teachersubject" name="teachersubject" required>
				  </div>
			</div><br>
							  
			  
<%
		}
	}
	
%>

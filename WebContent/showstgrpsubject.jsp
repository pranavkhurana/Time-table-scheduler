<%
	String si=(String)request.getParameter("val");
	int i;
	if(si!=""){
		i=Integer.parseInt(si);
		out.print("<br>");
		for(int j=0;j<i;j++){
%>
			<div class="form-inline" role="form" style="padding-left:50px">
				  <div class="form-group">
				    <label for="s">Subject* :</label>
				    <input type="text" class="form-control" id="s" name="stgrpsubject" required>
				  </div>
				  <div class="form-group">
				    <label for="e">Time Required(in hours)** :</label>
				    <input type="number" class="form-control" id="e" name="subjecttime" style="width:60px" required>
				  </div><br><br>
			</div>
<%
		}
	}
	
%>

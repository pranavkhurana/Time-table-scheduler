<%
	String si=(String)request.getParameter("val");
	int i;
	if(si!=""){
		i=Integer.parseInt(si);	
		for(int j=0;j<i;j++){
%>
			<div class="form-inline" role="form" style="padding-left:30px">
				  <div class="form-group">
				    <label for="start">Start:</label>
				    <input type="time" class="form-control" id="start" name=<%="'start"+j+"'" %> required>
				  </div>
				  <div class="form-group">
				    <label for="end">End:</label>
				    <input type="time" class="form-control" id="end" name=<%="'end"+j+"'" %> required>
				  </div>
			</div><br>
<%
		}
	}
	
%>

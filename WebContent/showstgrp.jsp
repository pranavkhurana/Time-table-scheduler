
<script type="text/javascript" src="vendor/bootstrap/js/custom.js"></script>

<%
	String si=(String)request.getParameter("val");
	int i;
	if(si!=""){
		i=Integer.parseInt(si);	
		for(int j=0;j<i;j++){
%>
			<div class="form-inline" role="form" style="padding-left:30px">
				  
				  <div class="form-group">
				    <label for="stgrpname">Batch Name:</label>
				    <input type="text" class="form-control" id="stgrpname" name="studentgroup" required>
				  </div>
				  
				  <div class="form-group">
				    <label for="nosubject">No of subjects:</label>
				    <input type="number" class="form-control" oninput="sendInfo4(<%=j %>)" style="width:80px" id=<%="'nosubject"+j+"'" %> name="nosubject" required>
				  	
				  </div><br>	  
				  <div id=<%="'sub"+j+"'" %>></div>
				  
			</div><br>
<%
		}
	}
	
%>

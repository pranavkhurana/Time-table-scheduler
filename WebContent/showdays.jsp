<script type="text/javascript" src="vendor/bootstrap/js/custom.js"></script>

<%
	String si=(String)request.getParameter("val");
	int i=7;
	if(si!=""){
		i=Integer.parseInt(si);	
	}
%>
			<div class="checkbox">
			  <label><input type="checkbox" value="Monday" name="day0" onClick= <%="'return KeepCount("+i+")'" %>>Monday</label>
			</div>
			<div class="checkbox">
			  <label><input type="checkbox" value="Tuesday" name="day1" onClick=<%="'return KeepCount("+i+")'" %>>Tuesday</label>
			</div>
			
			<div class="checkbox">
			  <label><input type="checkbox" value="Wednesday" name="day2" onClick=<%="'return KeepCount("+i+")'" %>>Wednesday</label>
			</div>
			
			<div class="checkbox">
			  <label><input type="checkbox" value="Thursday" name="day3" onClick=<%="'return KeepCount("+i+")'" %>>Thursday</label>
			</div>
			
			<div class="checkbox">
			  <label><input type="checkbox" value="Friday" name="day4" onClick=<%="'return KeepCount("+i+")'" %>>Friday</label>
			</div>
			<div class="checkbox">
			  <label><input type="checkbox" value="Saturday" name="day5" onClick=<%="'return KeepCount("+i+")'" %>>Saturday</label>
			</div>
			<div class="checkbox">
			  <label><input type="checkbox" value="Sunday" name="day6" onClick=<%="'return KeepCount("+i+")'" %>>Sunday</label>
			</div><br>


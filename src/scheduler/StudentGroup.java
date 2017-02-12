package scheduler;

public class StudentGroup {
	public int id;
	public String name;
	public String[] subject;
	public int nosubject;
	public int teacherid[];
	public int[] hours;
	
	public StudentGroup() {
		subject=new String[10];
		hours=new int[10];
		teacherid=new int[10];
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String[] getSubject() {
		return subject;
	}
	public void setSubject(String[] subject) {
		this.subject = subject;
	}
	public int getNosubject() {
		return nosubject;
	}
	public void setNosubject(String snosubject) {
		int nosubject=Integer.parseInt(snosubject);
		this.nosubject = nosubject;
	}
	public int[] getTeacherid() {
		return teacherid;
	}
	public void setTeacherid(int[] teacherid) {
		this.teacherid = teacherid;
	}
	public int[] getHours() {
		return hours;
	}
	public void setHours(int[] hours) {
		this.hours = hours;
	}
	
}

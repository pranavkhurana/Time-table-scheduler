package scheduler;

//slot is single block of timetable

public class Slot{
	public StudentGroup studentgroup;
	public int teacherid;
	public String subject;
	
	//non parametrized constructor for allowing free periods
	Slot(){};
	
	Slot(StudentGroup studentgroup,int teacherid,String subject){
		
		this.studentgroup=studentgroup;
		this.subject=subject;
		this.teacherid=teacherid;
	
	}
}

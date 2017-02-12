package scheduler;

import java.io.File;
import java.util.*;

public class inputdata {

	public static StudentGroup[] studentgroup;
	public static Teacher[] teacher;
	public static double crossoverrate = 1.0, mutationrate = 0.1;
	public static int nostudentgroup, noteacher;
	public static int hoursperday, daysperweek;

	public inputdata() {
		studentgroup = new StudentGroup[100];
		teacher =   new Teacher[100];
	}

	boolean classformat(String l) {
		StringTokenizer st = new StringTokenizer(l, " ");
		if (st.countTokens() == 3)
			return (true);
		else
			return (false);
	}

	public void takeinput()// takes input from file input.txt
	{
		//this method of taking input through file is only for development purpose so hours and days are hard coded
		hoursperday = 7;
		daysperweek = 5;
		try {
			File file = new File("c:\\test\\input.txt");
			// File file = new File(System.getProperty("user.dir") +
			// "/input.txt");
			
			Scanner scanner = new Scanner(file);
			
			while (scanner.hasNextLine()) {
				String line = scanner.nextLine();

				// input student groups
				if (line.equalsIgnoreCase("studentgroups")) {
					int i = 0, j;
					while (!(line = scanner.nextLine()).equalsIgnoreCase("teachers")) {
						studentgroup[i] = new StudentGroup();
						StringTokenizer st = new StringTokenizer(line, " ");
						studentgroup[i].id = i;
						studentgroup[i].name = st.nextToken();
						studentgroup[i].nosubject = 0;
						j = 0;
						while (st.hasMoreTokens()) {
							studentgroup[i].subject[j] = st.nextToken();
							studentgroup[i].hours[j++] = Integer.parseInt(st.nextToken());
							studentgroup[i].nosubject++;
						}
						i++;
					}
					nostudentgroup = i;
				}

				//input teachers
				if (line.equalsIgnoreCase("teachers")) {
					int i = 0;
					while (!(line = scanner.nextLine()).equalsIgnoreCase("end")) {
						teacher[i] = new Teacher();
						StringTokenizer st = new StringTokenizer(line, " ");
						teacher[i].id = i;
						teacher[i].name = st.nextToken();
						teacher[i].subject = st.nextToken();

						i++;
					}
					noteacher = i;
				}

			}
			scanner.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		assignTeacher();

	}

	// assigning a teacher for each subject for every studentgroup
	public void assignTeacher() {

		// looping through every studentgroup
		for (int i = 0; i < nostudentgroup; i++) {

			// looping through every subject of a student group
			for (int j = 0; j < studentgroup[i].nosubject; j++) {

				int teacherid = -1;
				int assignedmin = -1;

				String subject = studentgroup[i].subject[j];

				// looping through every teacher to find which teacher teaches the current subject
				for (int k = 0; k < noteacher; k++) {

					// if such teacher found,checking if he should be assigned the subject or some other teacher based on prior assignments
					if (teacher[k].subject.equalsIgnoreCase(subject)) {

						// if first teacher found for this subject
						if (assignedmin == -1) {
							assignedmin = teacher[k].assigned;
							teacherid = k;
						}

						// if teacher found has less no of pre assignments than the teacher assigned for this subject
						else if (assignedmin > teacher[k].assigned) {
							assignedmin = teacher[k].assigned;
							teacherid = k;
						}
					}
				}

				// 'assigned' variable for selected teacher incremented
				teacher[teacherid].assigned++;

				studentgroup[i].teacherid[j]= teacherid;
			}
		}
	}
}
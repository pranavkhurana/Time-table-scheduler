# **AUTOMATED TIME-TABLE SCHEDULER** *(USING GENETIC ALGORITHMS)*

![Preview](/readme-images/preview.png)

## Introduction
Time Table Scheduling is an NP-hard problem and hence polynomial time verifiable using genetic algorithms. It a typical scheduling problem that appears to be a tedious job in every academic institute once or twice a year. In earlier days, time table scheduling was done manually with a single person or some group involved in task of scheduling it manually, which takes a lot of effort and time. Planning timetables is one of the most complex and error-prone applications.
Timetabling is the task of creating a timetable while satisfying some constraints. There are basically two types of constraints, soft constraints and hard constraints. Soft constraints are those if we violate them in scheduling, the output is still valid, but hard constraints are those which if we violate them; the timetable is no longer valid. The search space of a timetabling problem is too vast, many solutions exist in the search space and few of them are not feasible. Feasible solutions here mean those which do not violate hard constraints and as well try to satisfy soft constraints. We need to choose the most appropriate one from feasible solutions. Most appropriate ones here mean those which do not violate soft constraints to a greater extent. In this project hard-constraints have been taken care of strictly and it has been ensured that soft-constraints are as well followed as much as possible.

**Soft-constraints (flexible):**

  •	More or less equal load is given to all faculties

  •	Required time (hours per week) is given to every Batch

**Hard-constraints (rigid):**

  •	There should not be any single instance of a faculty taking two classes simultaneously

  •	A class group must not have more than one lectures at the same time

## Getting Started

Instructions to use this project :

This project is configured in eclipse and is a simple implementation

  * Clone this repository.

  * Import the project in Eclipse ( you can even copy the package into a new project if you use a different IDE / If import of Eclipse project doesnt work well with that IDE )

  * Import users.sql file in your database

  * Set your database credendtials in line no 10-11 in UserDao.java 
```java
  Class.forName("com.mysql.jdbc.Driver");
  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "", "");
```	    

  * Put the input.txt file anywhere in the drive and give its location in inputdata.java at line no 33
```java
  File file = new File("c:\\test\\input.txt");
```

Cheers !

PS : Contributing back to this project will be appreciated.

## Prerequisites

  * Java 8
  
  * Eclipse(compatible with Enterprise Edition)
  
  * Tomcat (or any other) Local Server
  
  * MySql Database

## Running the tests

Click 'Get Started with us today' on homepage

Login (username: pranav password: khurana)

Click on 'Test with custom input'

## Deployment

You need to load the required jar files to make this project run

## Built With

* [Struts](https://struts.apache.org/) - The web framework used
* [Bootstrap](http://getbootstrap.com) - Mobile first Frontend Framework
* Ajax
* JavaScript
* HTML
* CSS
## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone who's code was used
* Inspiration
* etc

<div align="center"><h1><b>AUTOMATED TIME-TABLE SCHEDULER</b><br> (Using Genetic Algorithms)</h1>

<img alt="preview" src="/readme-images/preview.png" width="65%"></div>

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
  * JSP
  * Servlets
  * Ajax
  * JavaScript
  * HTML
  * CSS
  * MySQL (database)
  
## Test Run

<h3>Input</h3>  

Input form is made using Ajax and displays as many fields as the no specified.

<img src="/readme-images/input1.png" alt="input1">

<img src="/readme-images/input2.png" alt="input2">

  
<h3>Output</h3>

<img src="/readme-images/output1.png" alt="out1">

<img src="/readme-images/output2.png" alt="out2">
  
<h3>Console</h3>

For the ease of testing and tracking, a lot of information is printed on the console itself. It involves input information, slots generated, few chromosomes from each generation of chromosome, fitness of these chromosomes, maximum fitness in a generation and final selected chromosome.

<img src="/readme-images/console.png" alt="console">

## Conclusion and Further Work

### Conclusion
The process of Time Table generation has been fully automated with this software. This web app can now cater to multiple colleges, universities and schools which can rely on it for their Time Table scheduling which earlier had to be done by hand.

### Evaluation
Using Genetics Algorithm, a number of trade-off solutions, in terms of multiple objectives of the problem, could be obtained very easily. Moreover, each of the obtained solutions has been found much better than a manually prepared solution which is in use.

### Further Work
•	Though this web-app serves as a basic time table generator, there is a lot more which could be done to make this project even better in terms of consideration of soft constraints like professor giving preference to particular class.

•	The up-gradations I look up to currently will be Classroom size considerations, lab facility consideration and multiple subject selection for faculty. I will try to bring the following up-gradations very soon.

•	More features such as schedule print for individual faculty etc. would also be involved to make this more useful as a final product.


## Author 

**Pranav Khurana**


<i>PS: Project Report(in pdf) is available in root folder as AutomatedTimeTableScheduler.pdf</i>

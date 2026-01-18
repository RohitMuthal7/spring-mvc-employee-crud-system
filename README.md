# Spring MVC Employee CRUD System

A complete Employee Management System built using Spring MVC, Hibernate, JSP, and MySQL.  
This project demonstrates a full CRUD (Create, Read, Update, Delete) web application following proper MVC architecture.

---

## Features

- Add new employee
- View employee list
- Update employee details
- Delete employee
- MVC layered architecture
- Hibernate ORM integration
- JSP-based UI
- MySQL database connectivity

---

## Technology Stack

- Java
- Spring MVC
- Hibernate
- JSP & JSTL
- MySQL
- Maven
- Apache Tomcat

---

## Project Structure

employee-crud  
│── src/main/java  
│   └── com.example.employee  
│       ├── controller  
│       ├── service  
│       ├── dao  
│       └── model  
│  
│── src/main/webapp  
│   ├── WEB-INF  
│   │   ├── views  
│   │   │   ├── employee-list.jsp  
│   │   │   └── employee-form.jsp  
│   │   ├── web.xml  
│   │   └── applicationContext.xml  
│  
│── pom.xml  

---

## Database Configuration

Update database credentials in:

src/main/webapp/WEB-INF/applicationContext.xml

Example configuration:

jdbc:mysql://localhost:3306/employee_db  
username: root  
password: root  

---

## How to Run the Project

1. Clone the repository  
2. Import the project as a Maven Project in Eclipse  
3. Configure Apache Tomcat Server  
4. Create MySQL database named `employee_db`  
5. Run the project on server  
6. Open browser and access:

http://localhost:8080/employee-crud/employee/list

---

## Author

Rohit Muthal

---

## License

This project is created for learning and demonstration purposes.





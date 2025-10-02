# Alien Management System

A **Spring Boot** learning project built with **Java 17** that demonstrates basic CRUD operations using **both MVC and REST APIs**. The application integrates **H2 in-memory database** and **MongoDB** for learning purposes and includes **JSP pages for UI** along with **Swagger documentation** for REST endpoints.

---

## 🛠 Features

- **MVC and REST endpoints:** Supports both traditional JSP-based MVC and modern REST-style APIs.  
- **Databases:**  
  - **H2 in-memory database** for some endpoints.  
  - **MongoDB** for other endpoints to practice NoSQL integration.  
- **UI:** Basic JSP pages for adding and viewing aliens.  
- **Swagger UI:** Interactive API documentation for all REST endpoints.  
- **Notification & Styling:** Alien-themed UI with notifications for actions like adding an alien.  
- **Learning focus:** Demonstrates Spring Boot configuration, multiple datasources, and integration of JSP views.  

---

## 📦 Technologies Used

- **Java:** 17  
- **Spring Boot:** 3.x  
- **Databases:** H2, MongoDB  
- **View:** JSP  
- **API Documentation:** Swagger/OpenAPI  
- **Build Tool:** Maven  
- **Port:** 8080  

---

## 🚀 Getting Started

### Prerequisites

- Java 17 installed  
- Maven installed  
- Cloud MongoDB which can be created using mongodb atlas 
- Optional: H2 console (runs in-memory, no extra setup required)

### Running the Application

Clone the repository:

```bash
git clone https://github.com/crbhumi777/alien-management.git
cd alien-management
```

Build and run the application:

```bash
mvn spring-boot:run
```

Home Page (MVC): http://localhost:8080

Swagger UI (REST endpoints): http://localhost:8080/swagger-ui/index.html

---

##⚙️ **Notes**

Learning purpose: MongoDB and H2 are used together to explore multiple datasources.

The project demonstrates basic CRUD, JSP integration, Spring Boot REST APIs, and Swagger documentation.

---

##📌 **References**

[Spring Boot Documentation](https://spring.io/projects/spring-boot)

[Spring Data JPA](https://spring.io/projects/spring-data-jpa)

[Spring Data MongoDB](https://spring.io/projects/spring-data-mongodb)

[Swagger UI](https://swagger.io/tools/swagger-ui/)

##📝 License

This project is for learning and educational purposes.


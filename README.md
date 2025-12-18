# Training Institute Management System

A Java web application for managing training institutes, students, courses, faculty, and admissions.

## 🚀 Live Demo

**URL:** https://meta-app-0kr2.onrender.com

## 🛠️ Technology Stack

- **Backend:** Java 11, JSP, Servlets
- **Database:** TiDB Cloud (MySQL compatible)
- **Build Tool:** Maven
- **Server:** Apache Tomcat 9.0
- **Deployment:** Render (Docker)
- **Logging:** SLF4J with Logback

## 📁 Project Structure

```
TrainingInstitute/
├── src/
│   ├── main/
│   │   ├── java/com/nttdatacasestudy/
│   │   │   ├── connection/      # Database connection
│   │   │   ├── dao/             # Data Access Object interfaces
│   │   │   ├── daoimpl/         # DAO implementations
│   │   │   ├── dto/             # Data Transfer Objects
│   │   │   ├── exceptions/      # Custom exceptions
│   │   │   └── mapper/          # ResultSet mappers
│   │   ├── resources/           # Configuration files
│   │   └── webapp/              # JSP pages, CSS, JS
│   └── test/                    # Test files
├── Dockerfile                   # Docker configuration
├── pom.xml                      # Maven dependencies
└── database.sql                 # Complete database schema & data
```

## ✨ Features

### Admin Module
- ✅ Login/Logout
- ✅ View all institutes
- ✅ View all students
- ✅ Manage courses
- ✅ Manage faculty
- ✅ View admission requests
- ✅ View feedback

### Student Module
- ✅ Registration
- ✅ Login/Logout
- ✅ View profile
- ✅ Browse courses
- ✅ Submit admission requests
- ✅ Submit feedback
- ✅ View admission status

### Institute Module
- ✅ Login/Logout
- ✅ View profile
- ✅ Manage courses
- ✅ Manage faculty
- ✅ View admission requests
- ✅ Approve/Reject admissions
- ✅ View feedback

## 📊 Database Schema

The application uses 7 tables:
- `admin` - Admin credentials
- `institute` - Training institutes
- `student` - Student information
- `course` - Courses offered
- `faculty` - Faculty members
- `admissionrequest` - Student admission requests
- `feedback` - Student feedback

See `database.sql` for complete schema.

## 🔧 Configuration

### Environment Variables

| Variable | Description | Example |
|----------|-------------|---------|
| `DB_URL` | Database connection URL | `mysql://user:pass@host:port/db` |
| `DB_USER` | Database username | `root` |
| `DB_PASS` | Database password | `password123` |

### Application Properties

Located in `src/main/resources/logback.xml`:
- Log level configuration
- Log file location
- Console output settings

Built as part of NTT Data case study project.

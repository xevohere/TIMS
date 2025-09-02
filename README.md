# Trainee Information Management System (TIMS)

> **A database system designed during my Summer Training at DRDO (Defence Research and Development Organisation)**

##  Project Overview

TIMS is a **Trainee Information Management System** that I developed with other team memebers who worked on backend and frontend of this project during my summer training at **DRDO**. The project focuses on creating a database structure to manage trainee information, course assignments, and attendance tracking for training programs. 

> *"During my time at DRDO, I learned about design principles and the importance of data integrity. While I didn't have access to the frontend/backend infrastructure, I focused on building a solid database foundation."*

##  System Architecture

### Core Components
- **Department Management** - Organization structure
- **HOD Management** - Department leadership tracking
- **Trainer Management** - Instructor assignments
- **Course Management** - Training program organization
- **Trainee Management** - Student information and enrollment
- **Attendance Tracking** - Attendance monitoring

### Database Design Features
- **Normalized Schema** - Optimized for data integrity
- **Referential Integrity** - Proper foreign key relationships
- **Scalable Structure** - Designed for growing programs

##  Technical Implementation

### Database Schema
```sql
-- Core tables with relationships
departments → hods (1:1)
departments → trainers (1:many)
departments → courses (1:many)
courses → trainees (1:many)
attendance → trainees (many:1)
attendance → courses (many:1)
```

### Key Features
- **Auto-incrementing IDs** for data management
- **Cascade operations** for data consistency
- **Enum constraints** for attendance validation


##  Business Value

### For Training Organizations
- **Centralized Management** - Single source for training data
- **Performance Tracking** - Monitor trainee progress
- **Resource Optimization** - Efficient trainer allocation

### For Trainees
- **Transparent Tracking** - Clear attendance visibility
- **Course History** - Training program records

##  Installation & Setup

### Prerequisites
- MySQL 8.0+
- Command Prompt (or any terminal) to run MySQL commands

##  Contact

**LinkedIn:** [[Alok Gupta](https://www.linkedin.com/in/alokgupta5695/)]  
**Email:** [[alokgupta5695@gmail.com](alokgupta5695@gmail.com)]  
**GitHub:** [[xevohere](https://github.com/xevohere)]

---

> *"This project represents my work in database design and my ability to create solutions within given constraints. The experience at DRDO taught me the importance of building solid foundations."*

 **Star this repository if you find it helpful!**

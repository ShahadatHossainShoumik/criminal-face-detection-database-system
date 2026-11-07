<div align="center">

  # 🕵️‍♂️ Criminal Face Detection & Law Enforcement Database Management System
  ### *Relational Database Architecture, ER Modeling, SQL Schema Design, and Java JDBC Persistence Layer for Biometric Criminal Identification & Case Tracking*

  ![MySQL](https://img.shields.io/badge/Database-MySQL_Relational_RDBMS-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
  ![Java](https://img.shields.io/badge/Backend-Java_SE_(JDK)-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)
  ![JDBC](https://img.shields.io/badge/Persistence-Java_JDBC_Connector-007396?style=for-the-badge&logo=java&logoColor=white)
  ![IntelliJ IDEA](https://img.shields.io/badge/IDE-IntelliJ_IDEA-000000?style=for-the-badge&logo=intellijidea&logoColor=white)
  ![Status](https://img.shields.io/badge/Project_Status-Completed-success?style=for-the-badge)

  **Project Domain:** Relational Database Management Systems (RDBMS), Entity-Relationship (ER) Architecture & Java JDBC Integration  
  **Core Modules:** `PersonInfo` | `Criminal` | `Suspect` | `Case` | `LawEnforcement`  
  **Author:** Shahadat Hossain

</div>

---

## 📖 Table of Contents

- [📌 Project Overview](#-project-overview)
- [🎯 Problem Statement & Target Stakeholders](#-problem-statement--target-stakeholders)
- [🛠️ Tech Stack, Tools & Methodologies](#️-tech-stack-tools--methodologies)
- [🏗️ System & Database Architecture](#️-system--database-architecture)
- [📐 Entity-Relationship (ER) Diagrams](#-entity-relationship-er-diagrams)
- [✨ Core Database Modules & Java JDBC Classes](#-core-database-modules--java-jdbc-classes)
- [📸 Visual Walkthrough: Database Tables & JDBC Execution](#-visual-walkthrough-database-tables--jdbc-execution)
- [🧱 Deep-Dive Technical Implementation (SQL & Java JDBC)](#-deep-dive-technical-implementation-sql--java-jdbc)
- [📂 Repository File Structure](#-repository-file-structure)
- [🚀 Installation & Execution Guide](#-installation--execution-guide)
- [👥 Project Author Details](#-project-author-details)

---

## 📌 Project Overview

The **Criminal Face Detection & Law Enforcement Database Management System** is a relational database and backend data-access engineering project designed to store, cross-reference, and query biometric identity records, criminal profiles, suspect watchlists, active investigation cases, and law enforcement personnel data. 

In modern forensic and biometric surveillance pipelines, facial recognition algorithms must rapidly match detected facial embeddings against structured, normalized identity records. This project architects the underlying **Relational Database Management System (RDBMS)** and **Java Database Connectivity (JDBC)** persistence layer (`jdbcMysqldemo`) that powers criminal face detection workflows[cite: 60]. 

The system is structured around five core relational entities—**`PersonInfo`**, **`Criminal`**, **`Suspect`**, **`Case`**, and **`LawEnforcement`**—modeled through two comprehensive **Entity-Relationship (ER) Diagram** schemas and connected to a modular **Java SE** application in **IntelliJ IDEA** via the MySQL JDBC Driver[cite: 60].

---

## 🎯 Problem Statement & Target Stakeholders

### 🔍 Core Engineering Challenges Addressed
1. **Fragmented Identity & Forensic Records:** Traditional law enforcement registries often separate citizen identity data from active suspect watchlists and historical criminal convictions, causing high query latency during real-time facial recognition lookups.
2. **Referential Integrity Across Investigations:** Linking multiple suspects, convicted criminals, and investigating officers to active cases requires strict primary/foreign key constraints (`PK`/`FK`) and normalized relational tables.
3. **Programmatic Database Connectivity:** Biometric frontends and recognition engines require a reliable, modular backend connector capable of executing parameterized SQL queries and retrieving result sets across all entity tables.

### 👥 Target Users & Stakeholders
* **Law Enforcement Officers & Investigators:** Query suspect backgrounds, update case statuses, and track criminal records linked to specific jurisdictions.
* **Forensic & Biometric Systems:** Match facial detection outputs against centralized `PersonInfo`, `Criminal`, and `Suspect` relational tables[cite: 60].
* **Database Administrators (DBAs):** Maintain schema normalization, enforce referential integrity, and audit access logs across investigative tables.

---

## 🛠️ Tech Stack, Tools & Methodologies

| Category | Technology / Methodology | Purpose in Project |
| :--- | :--- | :--- |
| **Relational Database (RDBMS)** | **MySQL Server & SQL (DDL / DML / DQL)** | Schema creation, primary/foreign key enforcement, relational joins, and tabular record storage for cases, criminals, suspects, and officers. |
| **Backend Programming Language** | **Java SE (JDK)** | Object-oriented implementation of table-specific database connector classes (`Main`, `JavaJDBC`, `CaseConnection`, `Criminal`, `LawEnforcement`, `PersonInfo`, `suspect`). |
| **Database Connectivity API** | **Java JDBC (`java.sql.*` / MySQL Connector/J)** | Establishes TCP/IP socket connections to MySQL (`DriverManager.getConnection`), executes SQL statements (`Statement` / `PreparedStatement`), and parses `ResultSet` streams. |
| **Data Modeling & Normalization** | **Entity-Relationship (ER) Modeling (3NF)** | Conceptual and logical schema design illustrated across two structural ER Diagram cases (`ER Diagram Case 1` & `ER Diagram Case 2`). |
| **Integrated Development Environment** | **JetBrains IntelliJ IDEA** | Java project management (`jdbcMysqldemo.iml`), bytecode compilation, and JDBC console output verification. |
| **Presentation & Documentation** | **Microsoft PowerPoint (`.pptx`)** | Executive slide deck detailing the Criminal Face Detection System architecture, relational schema, and query workflows. |

---

## 🏗️ System & Database Architecture

The architecture follows a modular **Two-Tier Client-Database Persistence Pattern**, decoupling the **Java JDBC Data Access Layer** from the **MySQL Relational Storage Engine**[cite: 60]:

```text
+===================================================================================================+
|                        APPLICATION & DATA ACCESS LAYER (JAVA SE / INTELLIJ IDEA)                  |
|                                                                                                   |
|                           +-------------------------------------------+                           |
|                           |        Main.java / JavaJDBC.java          |                           |
|                           |  (Driver Registration & Connection Pool)  |                           |
|                           +---------------------+---------------------+                           |
|                                                 |                                                 |
|            +-----------------+------------------+------------------+-----------------+            |
|            |                 |                                     |                 |            |
|            v                 v                                     v                 v            |
|  +-------------------+ +-------------------+         +-------------------+ +-------------------+  |
|  |  PersonInfo.java  | |CaseConnection.java|         |LawEnforcement.java| |   suspect.java    |  |
|  | (Identity Queries)| | (Case Management) |         | (Officer Records) | | (Suspect Watch)   |  |
|  +---------+---------+ +---------+---------+         +---------+---------+ +---------+---------+  |
+============|=====================|=============================|=====================|============+
             |                     |   JDBC API (java.sql.*)     |                     |
             |                     |   MySQL Connector/J Driver  |                     |
             v                     v                             v                     v
+===================================================================================================+
|                             RELATIONAL DATABASE LAYER (MYSQL RDBMS)                               |
|                                                                                                   |
|  +-------------------+  +-------------------+  +-------------------+  +------------------------+  |
|  | PersonInfo Table  |  |  Criminal Table   |  |   Suspect Table   |  |      Case Table        |  |
|  | ----------------- |  | ----------------- |  | ----------------- |  | ---------------------- |  |
|  | * Person_ID (PK)  |  | * Criminal_ID(PK) |  | * Suspect_ID (PK) |  | * Case_ID (PK)         |  |
|  | * Full_Name       |  | * Person_ID (FK)  |  | * Person_ID (FK)  |  | * Case_Title / Type    |  |
|  | * Biometric_Data  |  | * Crime_Record    |  | * Case_ID (FK)    |  | * Status / Date_Opened |  |
|  | * Contact / DOB   |  | * Status / Threat |  | * Match_Score     |  | * Officer_ID (FK)      |  |
|  +-------------------+  +-------------------+  +-------------------+  +-----------+------------+  |
|                                                                                   |               |
|                                        +------------------------------------------+               |
|                                        v                                                          |
|                         +------------------------------+                                          |
|                         |    LawEnforcement Table      |                                          |
|                         | ---------------------------- |                                          |
|                         | * Officer_ID / Badge_No (PK) |                                          |
|                         | * Officer_Name & Rank        |                                          |
|                         | * Department / Jurisdiction  |                                          |
|                         +------------------------------+                                          |
+===================================================================================================+
```

---

## 📐 Entity-Relationship (ER) Diagrams

The relational schema is modeled across two comprehensive **Entity-Relationship (ER) Diagrams**, illustrating entity attributes, primary/foreign key constraints, and cardinality mappings (`1:1`, `1:N`, `M:N`) across the criminal face detection domain[cite: 60]:

### 📊 ER Diagram – Case 1 (Core Entity-Relationship Schema)
<div align="center">
  <img src="ER%20Diagram/ER%20Diagram%20Case%201.jpg" alt="ER Diagram Case 1 - Criminal Face Detection System" width="820"/>
  <p><i>Figure 1: Entity-Relationship (ER) Diagram Case 1 — Core relational mapping between PersonInfo, Criminal, Suspect, Case, and LawEnforcement entities.</i></p>
</div>

---

### 📊 ER Diagram – Case 2 (Extended Relational & Biometric Schema)
<div align="center">
  <img src="ER%20Diagram/ER%20Diagram%20Case%202.jpg" alt="ER Diagram Case 2 - Criminal Face Detection System" width="820"/>
  <p><i>Figure 2: Entity-Relationship (ER) Diagram Case 2 — Extended relational schema modeling investigative workflows and face detection match associations.</i></p>
</div>

---

## ✨ Core Database Modules & Java JDBC Classes

The repository integrates five core database tables with dedicated Java JDBC source classes inside `DB Connection Source Code/DB Connection Project/src/`:

| # | Database Entity Table | Java JDBC Class | Primary Responsibilities & Relational Role |
| :-: | :--- | :--- | :--- |
| **1** | **`PersonInfo` Table** | `PersonInfo.java` | Stores baseline citizen and subject demographic profiles, physical descriptors, and facial biometric reference identifiers used as the parent identity entity. |
| **2** | **`Criminal` Table** | `JavaJDBC.java` / `Main.java` | Maintains verified criminal records, conviction histories, crime classifications, threat levels, and facial recognition match references linked to `PersonInfo`. |
| **3** | **`Suspect` Table** | `suspect.java` | Tracks individuals flagged during criminal investigations or facial detection scans, storing suspect status, alibi notes, and associated case linkages. |
| **4** | **`Case` Table** | `CaseConnection.java` | Manages active and archived criminal investigation files, recording incident dates, crime locations, case statuses, and assigned law enforcement officers. |
| **5** | **`LawEnforcement` Table** | `LawEnforcement.java` | Catalogs police officers, forensic analysts, badge numbers, ranks, and departmental jurisdictions authorized to access the face detection system[cite: 60]. |

---

## 📸 Visual Walkthrough: Database Tables & JDBC Execution

Below is the complete visual documentation of the SQL database tables, schema structures, and live Java JDBC query outputs captured across all five relational modules[cite: 60].

### 1️⃣ `Case` Table — Schema & JDBC Connection Output (`CaseConnection.java`)

| Screenshot 1 (`190919`) | Screenshot 2 (`194549`) | Screenshot 3 (`194603`) |
| :---: | :---: | :---: |
| <img src="Database%20Connection%20Images/Case%20Table/Screenshot%202024-05-11%20190919.png" alt="Case Table Screenshot 1" width="300"/> | <img src="Database%20Connection%20Images/Case%20Table/Screenshot%202024-05-11%20194549.png" alt="Case Table Screenshot 2" width="300"/> | <img src="Database%20Connection%20Images/Case%20Table/Screenshot%202024-05-11%20194603.png" alt="Case Table Screenshot 3" width="300"/> |
| *Case Table SQL Schema & Records* | *`CaseConnection.java` JDBC Setup* | *Case Table Query Execution Output*[cite: 60] |

---

### 2️⃣ `Criminal` Table — Schema & JDBC Connection Output

| Screenshot 1 (`055520`) | Screenshot 2 (`194859`) |
| :---: | :---: |
| <img src="Database%20Connection%20Images/Criminal%20Table/Screenshot%202024-05-11%20055520.png" alt="Criminal Table Screenshot 1" width="420"/> | <img src="Database%20Connection%20Images/Criminal%20Table/Screenshot%202024-05-11%20194859.png" alt="Criminal Table Screenshot 2" width="420"/> |
| *Criminal Table Relational Structure & Records* | *Criminal Table SQL Query Verification* |

| Screenshot 3 (`194911`) | Screenshot 4 (`194925`) | Screenshot 5 (`195011`) |
| :---: | :---: | :---: |
| <img src="Database%20Connection%20Images/Criminal%20Table/Screenshot%202024-05-11%20194911.png" alt="Criminal Table Screenshot 3" width="300"/> | <img src="Database%20Connection%20Images/Criminal%20Table/Screenshot%202024-05-11%20194925.png" alt="Criminal Table Screenshot 4" width="300"/> | <img src="Database%20Connection%20Images/Criminal%20Table/Screenshot%202024-05-11%20195011.png" alt="Criminal Table Screenshot 5" width="300"/> |
| *Criminal JDBC Driver Connection* | *Criminal Record Retrieval in IDE* | *Complete Criminal Table Console Output*[cite: 60] |

---

### 3️⃣ `LawEnforcement` Table — Schema & JDBC Connection Output (`LawEnforcement.java`)

| Screenshot 1 (`192649`) | Screenshot 2 (`195505`) |
| :---: | :---: |
| <img src="Database%20Connection%20Images/LawEnforcement%20Table/Screenshot%202024-05-11%20192649.png" alt="LawEnforcement Table Screenshot 1" width="420"/> | <img src="Database%20Connection%20Images/LawEnforcement%20Table/Screenshot%202024-05-11%20195505.png" alt="LawEnforcement Table Screenshot 2" width="420"/> |
| *LawEnforcement Table Schema & Officer Data* | *`LawEnforcement.java` JDBC Implementation* |

| Screenshot 3 (`195608`) | Screenshot 4 (`195635`) |
| :---: | :---: |
| <img src="Database%20Connection%20Images/LawEnforcement%20Table/Screenshot%202024-05-11%20195608.png" alt="LawEnforcement Table Screenshot 3" width="420"/> | <img src="Database%20Connection%20Images/LawEnforcement%20Table/Screenshot%202024-05-11%20195635.png" alt="LawEnforcement Table Screenshot 4" width="420"/> |
| *Executing Officer Queries via JDBC* | *LawEnforcement Console ResultSet Output*[cite: 60] |

---

### 4️⃣ `PersonInfo` Table — Schema & JDBC Connection Output (`PersonInfo.java`)

| Screenshot 1 (`193729`) | Screenshot 2 (`194040`) |
| :---: | :---: |
| <img src="Database%20Connection%20Images/PersonInfo%20Table/Screenshot%202024-05-11%20193729.png" alt="PersonInfo Table Screenshot 1" width="420"/> | <img src="Database%20Connection%20Images/PersonInfo%20Table/Screenshot%202024-05-11%20194040.png" alt="PersonInfo Table Screenshot 2" width="420"/> |
| *PersonInfo Table Structure & Identity Attributes* | *Populated PersonInfo Biometric & Demographic Rows* |

| Screenshot 3 (`194100`) | Screenshot 4 (`194150`) |
| :---: | :---: |
| <img src="Database%20Connection%20Images/PersonInfo%20Table/Screenshot%202024-05-11%20194100.png" alt="PersonInfo Table Screenshot 3" width="420"/> | <img src="Database%20Connection%20Images/PersonInfo%20Table/Screenshot%202024-05-11%20194150.png" alt="PersonInfo Table Screenshot 4" width="420"/> |
| *`PersonInfo.java` JDBC Query Source Code* | *PersonInfo Console Execution & Record Fetch*[cite: 60] |

---

### 5️⃣ `Suspect` Table — Schema & JDBC Connection Output (`suspect.java`)

| Screenshot 1 (`063352`) | Screenshot 2 (`195902`) |
| :---: | :---: |
| <img src="Database%20Connection%20Images/Suspect%20Table/Screenshot%202024-05-11%20063352.png" alt="Suspect Table Screenshot 1" width="420"/> | <img src="Database%20Connection%20Images/Suspect%20Table/Screenshot%202024-05-11%20195902.png" alt="Suspect Table Screenshot 2" width="420"/> |
| *Suspect Table Schema & Foreign Key Links* | *`suspect.java` JDBC Source Code* |

| Screenshot 3 (`195923`) | Screenshot 4 (`195932`) |
| :---: | :---: |
| <img src="Database%20Connection%20Images/Suspect%20Table/Screenshot%202024-05-11%20195923.png" alt="Suspect Table Screenshot 3" width="420"/> | <img src="Database%20Connection%20Images/Suspect%20Table/Screenshot%202024-05-11%20195932.png" alt="Suspect Table Screenshot 4" width="420"/> |
| *Suspect Watchlist Query Execution* | *Suspect Table JDBC ResultSet Verification*[cite: 60] |

---

## 🧱 Deep-Dive Technical Implementation (SQL & Java JDBC)

<details>
<summary><b>☕ Click to Expand: Java JDBC Connection Architecture & Workflow</b></summary>
<br>

Each Java connector class in `src/` (`JavaJDBC.java`, `CaseConnection.java`, `LawEnforcement.java`, `PersonInfo.java`, `suspect.java`) implements the standard 5-step **JDBC Data Access Lifecycle**[cite: 60]:

```java
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class JavaJDBC {
    public static void main(String[] args) {
        try {
            // 1. Load and Register the MySQL JDBC Driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // 2. Establish Connection to the MySQL Criminal Face Detection Database
            Connection connection = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/criminal_face_detection_db",
                "root",
                ""
            );

            // 3. Create a SQL Statement Object
            Statement statement = connection.createStatement();

            // 4. Execute SELECT Query & Iterate Over ResultSet
            ResultSet resultSet = statement.executeQuery("SELECT * FROM criminal");
            while (resultSet.next()) {
                System.out.println(
                    resultSet.getInt(1) + " | " +
                    resultSet.getString(2) + " | " +
                    resultSet.getString(3)
                );
            }

            // 5. Close Database Resources Safely
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
```

</details>

<details>
<summary><b>🗄️ Click to Expand: Core Relational SQL Schema Design (DDL Blueprint)</b></summary>
<br>

```sql
-- 1. PersonInfo Table (Base Identity & Biometric Reference Entity)
CREATE TABLE PersonInfo (
    Person_ID INT PRIMARY KEY AUTO_INCREMENT,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Date_Of_Birth DATE,
    Gender VARCHAR(15),
    Address VARCHAR(255),
    Face_Encoding_Ref VARCHAR(255) UNIQUE
);

-- 2. LawEnforcement Table (Investigating Officers & Agencies)
CREATE TABLE LawEnforcement (
    Officer_ID INT PRIMARY KEY AUTO_INCREMENT,
    Officer_Name VARCHAR(100) NOT NULL,
    Badge_Number VARCHAR(50) UNIQUE NOT NULL,
    Rank_Title VARCHAR(50),
    Department VARCHAR(100),
    Contact_Info VARCHAR(100)
);

-- 3. Case Table (Active & Historical Investigation Files)
CREATE TABLE Case_Table (
    Case_ID INT PRIMARY KEY AUTO_INCREMENT,
    Case_Name VARCHAR(150) NOT NULL,
    Crime_Type VARCHAR(100),
    Date_Reported DATE,
    Case_Status VARCHAR(50),
    Officer_ID INT,
    FOREIGN KEY (Officer_ID) REFERENCES LawEnforcement(Officer_ID)
);

-- 4. Criminal Table (Convicted Criminal Profiles & Biometric Links)
CREATE TABLE Criminal (
    Criminal_ID INT PRIMARY KEY AUTO_INCREMENT,
    Person_ID INT NOT NULL,
    Case_ID INT,
    Crime_Committed VARCHAR(150),
    Sentence_Status VARCHAR(100),
    FOREIGN KEY (Person_ID) REFERENCES PersonInfo(Person_ID),
    FOREIGN KEY (Case_ID) REFERENCES Case_Table(Case_ID)
);

-- 5. Suspect Table (Flagged Suspects & Facial Match Candidates)
CREATE TABLE Suspect (
    Suspect_ID INT PRIMARY KEY AUTO_INCREMENT,
    Person_ID INT NOT NULL,
    Case_ID INT NOT NULL,
    Suspect_Status VARCHAR(50),
    Confidence_Score DECIMAL(5,2),
    FOREIGN KEY (Person_ID) REFERENCES PersonInfo(Person_ID),
    FOREIGN KEY (Case_ID) REFERENCES Case_Table(Case_ID)
);
```

</details>

---

## 📂 Repository File Structure

```text
Database-SQL-Criminal-Face-Detection-Systems/
├── DB Connection Source Code/
│   ├── JavaJDBC.java                                       # Standalone JDBC driver test class
│   └── DB Connection Project/                              # IntelliJ IDEA Java JDBC Project (jdbcMysqldemo)
│       ├── .idea/                                          # IntelliJ workspace & module metadata
│       ├── out/production/jdbcMysqldemo/                   # Compiled Java bytecode (.class files)
│       ├── src/
│       │   ├── CaseConnection.java                         # JDBC connector for Case Table queries
│       │   ├── JavaJDBC.java                               # JDBC connector for Criminal Table queries
│       │   ├── LawEnforcement.java                         # JDBC connector for LawEnforcement Table queries
│       │   ├── Main.java                                   # Application entry point
│       │   ├── PersonInfo.java                             # JDBC connector for PersonInfo Table queries
│       │   └── suspect.java                                # JDBC connector for Suspect Table queries
│       └── jdbcMysqldemo.iml                               # IntelliJ IDEA module configuration
├── Database Connection Images/
│   ├── Case Table/                                         # 3 SQL & JDBC execution screenshots
│   ├── Criminal Table/                                     # 5 SQL & JDBC execution screenshots
│   ├── LawEnforcement Table/                               # 4 SQL & JDBC execution screenshots
│   ├── PersonInfo Table/                                   # 4 SQL & JDBC execution screenshots
│   └── Suspect Table/                                      # 4 SQL & JDBC execution screenshots
├── ER Diagram/
│   ├── ER Diagram Case 1.jpg                               # Core Entity-Relationship Diagram (Case 1)
│   └── ER Diagram Case 2.jpg                               # Extended Entity-Relationship Diagram (Case 2)
├── PowerPoint Project Presentation - Criminal Face Detection System.pptx
└── README.md                                               # Project Documentation
```
[cite: 60]

---

## 🚀 Installation & Execution Guide

### Prerequisites
* **Java Development Kit (JDK):** Version 11, 17, or 21+
* **MySQL Server:** Version 8.0+ (or XAMPP / WAMP MySQL service running on port `3306`)
* **MySQL Connector/J:** `mysql-connector-j.jar` added to the project classpath
* **IDE:** JetBrains IntelliJ IDEA (Community or Ultimate Edition)

### Step-by-Step Setup
1. **Clone the Repository:**
   ```bash
   git clone [https://github.com/shahadathossain/criminal-face-detection-database-system.git](https://github.com/shahadathossain/criminal-face-detection-database-system.git)
   cd criminal-face-detection-database-system
   ```
2. **Configure the MySQL Database:**
   * Start your local **MySQL Server** on `localhost:3306`.
   * Create the database schema and tables (`PersonInfo`, `Criminal`, `Suspect`, `Case`, `LawEnforcement`) as depicted in the `Database Connection Images/` and `ER Diagram/` schemas[cite: 60].
3. **Open the Project in IntelliJ IDEA:**
   * Launch **IntelliJ IDEA** and select **Open** $\rightarrow$ navigate to `DB Connection Source Code/DB Connection Project`[cite: 60].
   * Ensure the **MySQL Connector/J** JAR is linked under `File` $\rightarrow$ `Project Structure` $\rightarrow$ `Modules` $\rightarrow$ `Dependencies`.
4. **Compile & Run the JDBC Modules:**
   ```bash
   cd "DB Connection Source Code/DB Connection Project/src"
   javac *.java
   java JavaJDBC
   java CaseConnection
   java LawEnforcement
   java PersonInfo
   java suspect
   ```
  [cite: 60]

---

## 👥 Project Author Details

| Name | Role & Module Contribution |
| :--- | :--- |
| **Shahadat Hossain** | **Database Architect & Backend Developer** — Relational Schema Design, ER Diagram Modeling (`Case 1` & `Case 2`), SQL Table Normalization (`PersonInfo`, `Criminal`, `Suspect`, `Case`, `LawEnforcement`), and Java JDBC Persistence Layer Implementation |

---

<div align="center">
  <i>Designed & Engineered for the Criminal Face Detection Database Management System Project.</i>
</div>

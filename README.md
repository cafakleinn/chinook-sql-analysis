# 📊 **Chinook SQL Analysis**

This project contains a collection of SQL queries of varying difficulty, written to analyze the **Chinook music store database**. Queries are organized into simple, intermediate, and advanced categories and include expected outputs, automated checks, and shell scripts for running tests.

---

## 📁 **Project Structure**

```
CHINOOK-SQL-ANALYSIS/
├── simple/
│   ├── simple_1.sql
│   ├── simple_2.sql
│   └── simple_3.sql
│
├── intermediate/
│   ├── complex_1.sql
│   ├── complex_2.sql
│   └── complex_3.sql
│
├── advanced/
│   ├── hard_1.sql
│   └── hard_2.sql
│
├── expected/
│   ├── simple_1.txt
│   ├── simple_2.txt
│   ├── simple_3.txt
│   ├── complex_1.txt
│   ├── complex_2.txt
│   ├── complex_3.txt
│   ├── hard_1.txt
│   └── hard_2.txt
│
├── tools/
│   ├── init.sh
│   └── run.sh
│
├── checks.json
├── tests.json
├── Makefile
└── README.md
```

---

## 🧠 **Overview**

The goal of this project is to demonstrate SQL proficiency using real-world datasets. Each query answers a specific analytical task over the Chinook database, such as:

* Customer spending analysis
* Genre and album statistics
* Window functions for ranking and running totals
* Aggregations and multi-table joins
* Conditional filtering and sorting

Expected outputs for each query are provided to ensure correctness.

---

## 🚀 **How to Run**

### **1. Initialize the environment**

```bash
./tools/init.sh
```

### **2. Run all tests**

```bash
make test
```

or

```bash
./tools/run.sh
```

### **3. Run a specific SQL file**

(Example for a simple query)

```bash
sqlite3 chinook.db < simple/simple_1.sql
```

---

## 🧪 **Testing**

All test cases are defined in:

* `tests.json` — input/output specifications
* `expected/` — text files containing expected query results
* `checks.json` — metadata for validating structure and formatting

The Makefile automates test execution and output comparison.

---

## 📘 **Skills Demonstrated**

This project highlights the following technical skills:

* **SQL**
* **JOIN Operations**
* **Aggregation & Grouping**
* **Window Functions**
* **Subqueries**
* **Common Table Expressions (CTEs)**
* **Data Filtering & Sorting**
* **Ranking & Running Totals**
* **Relational Schema Understanding**
* **Makefile Automation**
* **Shell Scripting**
* **Version Control: Git & GitHub**
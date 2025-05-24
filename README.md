# road_accident_analysis

# 🚦 Road Accident Data Analysis Dashboard (2021–2022)

### 📊 Project Overview
This project aims to analyze road accident data for the years 2021 and 2022 using Microsoft Excel. The main objective is to derive actionable insights into accident severity, contributing factors, and casualty trends through an interactive dashboard.

The project includes:
- Creation of key performance indicators (KPIs)
- Complete data cleaning and transformation in Excel
- Interactive charts and slicers for dynamic filtering
- A centralized dashboard for clear visualization
- SQL querying to derive KIPs
- Data cleaning and transformation with Python Pandas and Numpy
- Visualisation of KPIs with Python Matplotlib and Seaborn

### 📌 Key Requirements Implemented

**🔹 Primary KPIs**
- Total Casualties occurring after accidents
- Total Casualties by Accident Severity (Fatal, Serious, Slight)
- Percentage of Casualties by Severity
- Vehicle Type with Maximum Casualties

**🔹 Secondary KPIs**
- Casualties by Vehicle Type

**📈 Trend Analysis**
- Monthly trend comparison between current year (2022) and previous year (2021)

**🛣️ Road Characteristics**
- Maximum Casualties by Road Type
- Distribution of Casualties by Road Surface

**🗺️ Spatial and Temporal Patterns**
- Casualties by Area/Location
- Day vs. Night Casualty Comparison

# Excel 

### 🛠 Tools & Techniques
- Microsoft Excel	-> Data cleaning, transformation, and visualization
- Excel Pivot Tables ->	Used for aggregating data for KPIs
- Excel Charts ->	Line, Bar, Donut charts and Treemap
- Slicers & Filters ->	Used for interactivity in the dashboard

### 📷 Sample Dashboard Snapshot
<img width="1244" alt="Screenshot 2025-05-18 at 3 49 56 PM" src="https://github.com/user-attachments/assets/63a6dfbb-7526-4282-9c90-fbe0c3e2c887" />

- Dashboard visuals include line trends, donut charts by severity, bar charts for road types, treemap for road surfaces, and slicers for timeline and areas.  
- Dashboard includes two clickable icons at the side, the first leading to the main dashboard, the second leading to another shee tthat contains all the pivot table analysis

### ✅ Outcomes
- Identified vehicle types most involved in severe accidents
- Highlighted dangerous road types and surfaces
- Visualized seasonal and monthly casualty patterns
- Explored the impact of location and time (day/night) on accident severity

# SQL

### ✅ Summary

After initial data exploration in Excel, the dataset was imported into PostgreSQL for more robust querying, transformation, and KPI derivation using SQL. This allowed for efficient handling of large datasets and reproducible logic for dashboard integration.

### 🗂️ Steps Taken
1. Data Import

Imported the .csv file into a table named roadaccident using pgAdmin.

2. KPI Calculations

Primary KPI
- Total casualties taken place
- Total casualties with respect to accident severity
- Percentage of total casualties with respect to accident severity


Secondary KPI
- Comparison of casualties among the years
- Number of casualties by road type
- Distribution of total casualties by road surface
- Number of casualties by area/location
- Number of casualties by day/night 

# Python 
The Jupyter Notebook in this project contains comprehensive data cleaning, transformation, and visualization using Python, leveraging the capabilities of Pandas, NumPy, Matplotlib, and Seaborn, to derive both primary and secondary KPIs

### 🧹 Data Cleaning & Transformation

The dataset underwent a series of preprocessing steps to ensure data quality and usability:
- Blank Value Handling: Missing or blank records in key categorical columns were replaced with 'Others' for consistency and clarity.
- Column Selection: A new, clean DataFrame was created by selecting only the relevant columns required for analysis and visualization.
- Category Consolidation: Similar or fragmented categories (e.g., various motorcycle engine sizes, road surface conditions) were combined into broader groups (e.g., 'Motorcycle', 'Wet') to simplify analysis and visualization.
- Data Type Conversion: Proper data types were ensured for temporal and categorical data, such as converting numeric months to month names and sorting them chronologically.
- Custom Labeling: Labels were standardized and reformatted for visual clarity in charts.

### 📊 Data Visualization
- 📈 Line Plots: Visualized monthly trends in the number of casualties, with separate lines by year for comparison.
- 📊 Bar Plots: Used to compare casualties across different categories such as accident severity, vehicle type, road type and road surface conditions. Specific bars of interest were highlighted to draw attention.
- 🥧 Pie Charts & Donut Charts: Illustrated the percentage breakdown of accident severity, road surface conditions, urban/rural area, and day/night conditions to emphasize categorical distributions.
- 🎨 Custom Highlighting: Individual bars or slices were color-coded to emphasize particular data points, while others remained neutral for contrast.

# Next steps
- Develop a simple predictive model to predict accidents
- Recreate and enhance dashboard in Tableau

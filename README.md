# 🍕 Pizza Sales Analysis Dashboard

This project analyzes pizza sales data using **MySQL** for querying and **Microsoft Excel** for data manipulation and dashboard creation. It aims to provide actionable business insights through key performance indicators (KPIs) and rich visualizations.

---

## 📁 Project Structure

```
pizza-sales-analysis/
├── data/
│   └── pizza_sales.csv               # Raw dataset (~50k rows, 12 columns)
├── mysql/
│   └── queries.sql                   # SQL queries for KPIs and trend analysis
├── excel/
│   └── Pizza_Sales_Dashboard.xlsx    # Final Excel dashboard with PivotTables & charts
├── screenshots/
│   └── dashboard_overview.png        # Dashboard preview image
├── README.md                         # Project documentation (this file)
└── .gitignore                        # Excludes temp files and backups
```

---

## 🧠 Key Business Questions

1. What is the **total revenue** generated from pizza sales?
2. What is the **average order value**?
3. How many **total pizzas** were sold?
4. How many **total orders** were placed?
5. Which are the **best- and worst-selling pizzas**?
6. What are the **daily and hourly order trends**?

---

## 📊 KPIs Tracked

- ✅ **Total Revenue**
- ✅ **Average Order Value**
- ✅ **Total Pizzas Sold**
- ✅ **Total Orders**
- ✅ **Average Pizzas Per Order**

---

## 📈 Charts and Dashboards

| Visualization Type              | Purpose                                              |
|----------------------------------|------------------------------------------------------|
| 📅 Daily Trend (Mon–Sun)         | Shows order trends over the week                     |
| ⏰ Hourly Order Trend            | Identifies peak hours                                |
| 🍕 Sales by Pizza Category       | Highlights category performance (Pie Chart)          |
| 📏 Sales by Pizza Size           | Customer preference breakdown                        |
| 🏆 Top 5 Best Sellers            | Most popular pizzas by quantity                      |
| 💔 Bottom 5 Worst Sellers        | Least popular pizzas                                 |
| 📉 Sales Funnel by Category      | Visual comparison by category                        |

---

## ⚙️ Tools Used

- **MySQL**: Data extraction and transformation
- **Excel**: PivotTables, PivotCharts, Slicers, and Dashboard creation
- **GitHub**: Version control and project hosting

---

## 🚀 Getting Started

1. **Clone the repo:**

   ```bash
   git clone https://github.com/yourusername/pizza-sales-analysis.git
   cd pizza-sales-analysis
   ```

2. **MySQL Analysis:**
   - Open `mysql/queries.sql` in MySQL Workbench
   - Load your `pizza_sales.csv` data
   - Run and customize the queries for your insights

3. **Excel Dashboard:**
   - Open `excel/Pizza_Sales_Dashboard.xlsx`
   - Explore PivotTables and visual dashboards

---

## 🖼️ Preview

![Dashboard Preview](screenshots/dashboard_overview.png)

---

## 📌 Notes

- The dataset contains ~50,000 rows and 12 columns
- Data types include text, int, double, and datetime fields
- Time and Date columns were parsed and formatted in Excel for visualization

---

## ✍️ Author

**Your Name**  
📧 your.email@example.com  
🔗 [LinkedIn](https://linkedin.com/in/yourprofile)  
🔗 [Portfolio](https://yourportfolio.com)

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

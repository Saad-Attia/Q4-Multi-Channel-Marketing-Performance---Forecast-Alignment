# Q4 Multi-Channel Marketing Performance & Forecast Alignment  
### **Full Marketing Analytics Case Study | Power BI | Python | SQL**

This repository contains a complete end-to-end analytics project analyzing Q4 marketing performance, forecasting accuracy, and product launch impact across five major channels.

The project is structured as a real stakeholder request, followed by professional data cleaning, structured EDA, KPI framework, executive dashboards, and insight-driven recommendations.

This case study is designed to demonstrate business problem-solving, analytical depth, and dashboard storytelling — ideal for hiring managers evaluating real-world data skills.

<img width="1017" height="890" alt="ERD" src="https://github.com/user-attachments/assets/6a20350e-3f1b-46e0-b0c2-123435f3f7fc" />

---

# 1. Stakeholder Request (Real Scenario)

Marketing leadership sent the following request:

> “We need a full Q4 performance review across all channels.  
> Rising spend, uneven ROAS, and inaccurate forecasts are creating risk for next month’s budget.  
> We also launched a new product — we need to know if it worked.”

### **Business Questions to Answer**

- **Spend Efficiency** — Which channels & campaigns use the budget efficiently?
- **Performance Drivers** — What drives impressions, clicks, CTR, CVR, and revenue?
- **Forecast Accuracy** — How well do forecasts match actual performance?
- **Product Launch Impact** — Did the new product actually move awareness, consideration, or conversions?
- **Recommendations** — Where should we increase, reduce, or reallocate spend?

---


# 2. Data Cleaning (Professional Workflow)

### **Data Validations**
- Verified primary & foreign key relationships  
- Checked hourly date granularity  
- Removed duplicated rows  
- Standardized channel/campaign naming  

### **Missing Values**
- Logical imputation for numerical metrics  
- Forward-fill for forecasted values  
- Removed impossible rows (**clicks > impressions**)  

### **Data Type Corrections**
- Dates → `datetime`  
- Metrics → `numeric`  
- Channels/campaigns → `category`  

### **Recalculated Core KPIs**
- CTR  
- CVR  
- CPC  
- CPM  
- POAS  
- Revenue per conversion  
- Forecast residuals  

A final clean dataset is exported into `/clean`.

---

# 3. Structured EDA

### **Univariate**
- Spend, impressions, clicks, conversions  
- KPI distributions (CTR, CVR, POAS)

### **Bivariate**
- Spend vs Revenue  
- CTR vs CVR  
- Conversions vs Impressions  
- Correlation matrix  

### **Time Series**
- Hourly & daily trends  
- Spend pacing  
- Conversion pacing  
- Seasonality windows  

### **Funnel Exploration**
**Awareness → Consideration → Click → Conversion → Revenue**  

A major drop was found between **Awareness → Consideration**.

---

# 4. KPI Framework

### **Efficiency KPIs**
- ROAS / POAS  
- CPC  
- CPM  
- CPA  

### **Funnel KPIs**
- Awareness Index  
- Consideration Index  
- CTR  
- CVR  
- AOV  

### **Forecast Accuracy Metrics**
- MAPE  
- Bias  
- Residual patterns  

### **Optimization KPIs**
- Marginal ROAS  
- Spend Utilization %  
- Revenue Contribution %  

Full dictionary available in `KPIs/kpi_definitions.md`.

---

# 5. Dashboards (Power BI)

This project includes a complete dashboard suite:

## **1. Executive Summary**
- Spend vs Revenue  
- Forecast accuracy  
- Funnel performance  
- Key wins & losses  

<img width="1168" height="655" alt="1" src="https://github.com/user-attachments/assets/0e28fe04-496d-414e-9ea2-1b53afb63454" />

## **2. Channel Performance**
### Answers:
- Which channel is most efficient?  
- Which wastes budget?  

### Visuals:
- POAS by Channel  
- CPA Comparison  
- Channel CTR/CVR  
- Spend vs Revenue Contribution  

<img width="1168" height="654" alt="2" src="https://github.com/user-attachments/assets/b0786dd4-7539-4ff1-bad2-9fe7701a5259" />

## **3. Campaign Insights**
- Campaign ROAS ranking  
- Daily/hourly performance  
- Budget utilization  
- High CPA alerts  

<img width="1168" height="657" alt="3" src="https://github.com/user-attachments/assets/43272201-303c-405f-a326-6bc1d23e56b6" />

## **5. Product Launch Impact**
- Awareness lift  
- Consideration lift  
- Conversion correlation  
- Channel-level impact score  

<img width="1167" height="653" alt="4" src="https://github.com/user-attachments/assets/84d17cab-0842-49fa-96f1-b0c0a117de48" />

---

# 6. Insights

### **Key Findings**
- **POAS is weak (~0.45 average)** — low profitability across all channels.  
- **LinkedIn & Facebook** are the most efficient channels (lowest CPA).  
- **Google** drives the highest revenue but with moderate efficiency.  
- Several campaigns waste **> 113M budget** with almost no return.  
- **Awareness is strong, but Consideration is weak** → funnel leak.  
- **Forecasting model is extremely inaccurate** (MAPE ~444%).  
- Product launch produced **minimal measurable lift**.  

---

# 7. Recommendations

### **1. Budget Reallocation**
**Increase:**  
- LinkedIn  
- Facebook  
- TikTok (high intent, strong CTR/CVR)  

**Reduce:**  
- Low-POAS campaigns  
- Google during low marginal returns  

### **2. Funnel Optimization**
- Improve creative quality for consideration  
- Strengthen value propositions  
- Retarget mid-funnel users  
- Improve landing page speed & clarity  

### **3. Forecasting Model Rebuild**
- Use segmented models by channel  
- Add lag features & spend elasticity  
- Use LightGBM / Prophet  
- Introduce weekly MAPE monitoring  

### **4. Product Launch Strategy**
- Recreate messaging  
- Test multiple creative variants  
- Use structured A/B tests  
- Measure impact by audience segment  

---

# 8. Final Deliverables

- Cleaned datasets + data dictionary  
- SQL cleaning scripts  
- Full EDA Notebook  
- Power BI dashboards (5 dashboards)  
- KPI dictionary  
- Insights & Recommendation report  
- README as final documentation  

---

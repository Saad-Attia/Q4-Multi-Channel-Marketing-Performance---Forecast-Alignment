# **Phase 1 — EDA Summary (Clean & Professional)**

---

## **1. Data Quality Checks**

###  No structural issues
- All tables match expected row counts  
- Merge successful  
- No foreign key breaks  

###  Logical validation flags created
- `flag_clicks_gt_impressions`  
- `flag_conversions_gt_clicks`  
- `flag_negative_spend`  

➡ All three show **False** for all records → dataset is **clean & consistent**.

---

## **2. Univariate Distributions**

### **Spend, impressions, clicks, conversions**
- Approximately normal distribution  
- Resemble well-generated synthetic data  
- No heavy right-skew typical of real marketing data  
➡ Dataset appears **synthetic & well-balanced**

### **CTR / CVR**
- **CTR range:** ~0.05 to 0.12  
- **CVR range:** ~3 to 13  
- CVR is more skewed  
➡ Ranges are realistic for retail performance marketing.

---

## **3. Bivariate Patterns**

###  Spend ↑ → Conversions & Revenue ↑
- Strong positive correlation  
- As expected in controlled synthetic datasets  

###  CTR ↔ CVR mildly correlated
Indicates:
- Higher engagement → higher conversion quality  

---

## **4. Time-Series Patterns**

###  *Most important insight*  
A **major drop in mid-February**:

- Spend collapses  
- Revenue collapses  
- Forecasts stay constant → massive forecast error  
- CTR/CVR remain stable  

This suggests a real-world operational or business event such as:
- Budget cuts  
- Campaign pause  
- Seasonality  
- Platform tracking failure  

➡ This will be the **#1 question** from decision-makers.

---

## **5. KPI Outlier Segments Identified**

Your EDA created **five strong outlier buckets**:

### 🔻 **Low CTR campaigns**
- Creative fatigue or weak targeting  
- (~2159 rows)

### 🔻 **High CPA campaigns**
- CPA > ~25  
- Mostly from channels **2 & 5**  
- (~2159 rows)

### 🔻 **Low revenue despite high spend**
- (~2159 rows)

### 🔺 **Low impact scores**
- Mostly from **channel 5** (TikTok-like behavior)

---

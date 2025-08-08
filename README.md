

#  Warby Parker Funnel Analysis

This project explores and analyzes the marketing and purchase funnels of **Warby Parker**, a socially conscious eyewear brand known for its innovative try-before-you-buy strategy and online style quiz.

---
![image alt](https://github.com/thandipearl/Capstone-Project-I-Warby-Parker-Funnel-Analysis-SQL-/blob/c61e727102e1f3fbd12463c8de0664c16fc18a7e/warby%20parker.png)
---

##  Project Objective

The goal of this analysis is to:

- Understand user behavior across Warby Parker’s marketing funnels.
- Identify where users drop off in the quiz funnel.
- Compare conversion rates in the Home Try-On (HTO) funnel, especially across different A/B test groups (3 pairs vs. 5 pairs).
- Derive actionable business insights to improve conversion and user experience.

---

##  Data Description

The dataset is composed of four tables:

- `quiz`: Records users who completed the style quiz.
- `survey`: Stores individual quiz question responses.
- `home_try_on`: Contains data on users who opted for the home try-on program (3 or 5 pairs).
- `purchase`: Logs product purchases made by users.

---

##  Key Insights

###  Quiz Funnel Completion Rates

| Question                          | Responses | Completion % |
|----------------------------------|-----------|---------------|
| What are you looking for?        | 500       | 100.00%       |
| What's your fit?                 | 475       | 95.00%        |
| How old are you?                 | 380       | 76.00%        |
| Which colors do you like?        | 361       | 72.20%        |
| When was your last eye exam?     | 270       | 54.00%        |

**Insight:** Completion rates drop significantly after the second question, with the final question seeing only 54% completion. Personal or health-related questions may discourage users.

---

###  Home Try-On A/B Test Results

| Number of Pairs | Purchase Rate |
|------------------|----------------|
| 3 Pairs          | 53.03%         |
| 5 Pairs          | 79.25%         |

** Insight:** Users offered **5 pairs** are significantly more likely to make a purchase. This indicates higher engagement and satisfaction when more options are available.

---

### 🔄 Funnel Conversion Rates

- **Quiz → Home Try-On:** 75.00%
- **Home Try-On → Purchase:** 66.00%

---

##  Actionable Recommendations

1. **Shorten the quiz** by removing or rephrasing personal questions like age or last eye exam.
2. **Default to 5-pair try-on** for most users to maximize conversion.
3. **Retarget users who drop off** during the quiz via email reminders or remarketing.
4. **A/B test a shorter quiz version** to improve entry into the funnel.

---

##  Tools Used

- SQL (MySQL)
- Excel / Google Sheets (for % calculations and funnel visualization)
- GitHub (for project versioning and documentation)

---




# Pewlett-Hackard-Analysis

## 1. Overview of the analysis

Pewlett-Hackard is looking to future proof itself as it faces an increased number of retirements coming in the following years. To help the company manage this retiring boom or silver tsunami as is being dubbed inside the company. The scope of this work is to provide data to help Pewlett-Hackard surf this silver tsunami.

## 2. Results

•	Reviewing the tables generated as part of deliverable 1, we cannot use the data to accurately see the current retirement situation at Pewlett-Hackard. If we look at table “retiring_titles” (Table 2.1), we see the employee count being 90,398, which would be over 37% of Pewlett-Hackard’s total workforce, a significant number, but since we do not know how many of these are actual current employees we don't know the true impact. To fix the results of for deliverable 1, we need to update our queries with a filter to only produce include current employees.

**Table 2.1: Retiring Title**

![retiring_titles](https://github.com/calvogeorge/Pewlett-Hackard-Analysis/blob/676ed5e473fca522348526d4208ebbd4f80ad70c/retiring_titles_table_2.1.png)


•	With a retirement being a high percentage of the company's total employees, it is imperative for the company to have all department manager plan to promote current employees to senior roles and leadership positions within the department, and hire new employees to fill their respective departments voids.
•	From the mentorship_eligibility table we see there are 1550 current employees eligible for mentorship programs in Pewlett-Hackard’s, this is an invaluable resource that the company must tab, to help prepare and promote current employees to fill high number of vacancies that will be created in Seniors positions.  
•	The mentorship_eligibility table shows the many senior engineers, senior staff and technique leader, the company should focus its efforts in recruiting these higher ranker members for the membership programs, since it most they have more relevant experience to help nurture the next generation of leader and senior members.


## 3. Summary

In summary to correct provide more accurate information about the actual number of retiring employees and the potential hiring needs for each department, we will update retiring_titles table to count only current employees (Table 3.1 current_retiring_titles), also provide a table with the count of retiring employees by departments for each manager to evaluate its department needs (3.2 current_retiring_dept).

**Table 3.1: Current Retiring By Titles**

![current_retiring_titles](https://github.com/calvogeorge/Pewlett-Hackard-Analysis/blob/676ed5e473fca522348526d4208ebbd4f80ad70c/current_retiring_titles_table_3.1.png)

**Table 3.2: Current Retiring By Departments**

![current_retiring_dept](https://github.com/calvogeorge/Pewlett-Hackard-Analysis/blob/676ed5e473fca522348526d4208ebbd4f80ad70c/current_retiring_dept_table_3.2.png)

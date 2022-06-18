# Pewlett Hackard Analysis
## Overview of Analysis

A large amount of employees will be eligible for retirement from Pewlett Hackard soon. This analysis is to identify the employees that will be eligible for retirement in the near future, see what positions they hold, and see if they are eligible for a new mentorship program to train new employees to take their place.

## Results

- The job title that has the most employees retiring is the Senior Engineer.
- There are 1,549 employees eligible for the mentorship program.
- Every job title will have at least one employee eligible for retirement, with Managers being the least at 2 employees.
- Senior Engineers and Senior Staff take up 70% of the staff eligible for retirement with a total of 50,842 employees.

## Summary
- How many roles will need to be filled as the "silver tsunami" begins to make an impact?
  - There are a total of 72,458 employees that are eligible for retirement
 
- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of employees?
  - There are not enough qualified, retirement-ready employees in the departments to mentor the next generation of employees.
  - The mentorship_count table shows us the number of mentorship eligible employees per job title.
  - ![image](https://user-images.githubusercontent.com/102273449/174418236-0ef55c56-cfd7-4439-a916-20b67ac0cff0.png)
  - When compared to the retiring_titles table, we can see that each staff member eligible for the mentorship program would have to mentor the following number of new employees to adequately train the number needed to replace those retiring
 
Title | # of staff per mentor 
------|:----------------------
Senior Engineer | 95
|Senior Staff| 61|
|Engineer| 23|
|Staff| 24|
|Technique Leader | 47|
|Assistant Engineer| 18|


   - There are no managers eligible for the mentorship program, but 2 are retiring
   - Please note that these numbers do not consider whether the replacement employee for the retiring employee will be a new hire or a currently hired employee that will recieve a promotion. Additional analysis may be needed if certain positions do not need mentorship (such as a seasoned employee getting promoted to Senior Staff or Senior Engineer) or if multiple positions can mentor a single position (such as both Senior Engineers and Engineers mentoring newly hired Engineers).
   - Another thing to consider is that these employees won't all retire at once and new employees be hired at once, so these mentoring numbers may be spread out over a long time and thereby be much more achievable. 

- Average Salary per Job Title
  - The retirement_avg_salary table shows us the average salary of retiring employees for each job title
    - ![image](https://user-images.githubusercontent.com/102273449/174420581-d3cf210b-de7a-43a2-980a-01491099bd26.png)
  - The mentorship_avg_salary table shows us the average salary of employees eligible for the mentorship program
    - ![image](https://user-images.githubusercontent.com/102273449/174420727-8402da07-2ae1-4e63-8241-97ff59ca6437.png)
  - If we assume that each employee eligible for the mentorship program is currently a full-time employee (40 hours) and will transition to being a part-time employee (20 hours), we can use these averages to calculate the approximate salary of each mentor for each job title. This can help the company to in their decision of if the mentorship program is worth the financial cost.

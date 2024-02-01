# Grade Average Web Application 
## Introduction
This web application is designed to help users calculate their final grades based on various assignments, quizzes, code tests, mid-term, and final exams. It's a simple yet practical tool for students or instructors to quickly determine their course grades. Its important to note that the number of assignments for each category is hard coded as a fixed value and the code and interface will need to be changed to accomadate otherwise.

## Features
### Business Logic
The core functionality of the application is implemented in the myBuisinessLogic class, which resides in the "WebApplication1" namespace. Here's what it does:

+ **Grade Calculation:** The class allows you to input grades for five different categories: quizzes, assignments, code tests, mid-term exams, and final exams. Each category has a weightage (percentile) that contributes to the final grade.

- **Weighted Average:** The class calculates a weighted average grade based on the input grades and their respective weightage. The formula used is:

Weighted Average = (QuizWeight * QuizGrades) + (AssignmentWeight * AssignmentGrades) + (CodeTestWeight * CodeTestGrades) + (MidTestWeight * MidTestGrades) + (FinalTestWeight * FinalTestGrades)

* **Letter Grade Conversion**: The class converts the weighted average to a letter grade based on a predefined scale. The scale used is:

1. A: 91 or above
1. A-: 89 to 90.9
1. B+: 86 to 88.9
1. B: 82 to 85.9
1. B-: 79 to 81.9
1. C+: 76 to 78.9
1. C: 72 to 75.9
1. C-: 70 to 71.9
1. D: 60 to 69.9
1. F: Below 60

## Web Interface
The web interface is built using ASP.NET and consists of two main pages:

**Scores.aspx**
Input Fields: This page provides input fields for entering grades and weightage (percentile) for each of the five categories.

Validation: The application includes validation checks to ensure that only valid grades (between 0 and 100) are accepted.

Calculation: When the user clicks the "Calculate" button, the application uses the myBuisinessLogic class to compute the weighted average and letter grade. The result is stored in a cookie for use on the next page.

**Grade.aspx**
Display: This page displays the calculated weighted average grade and its corresponding letter grade, which are retrieved from the cookie set on the previous page.
Usage

To use the application:

+ Clone or download the repository to your local machine.

- Open the project in a compatible development environment (e.g., Visual Studio).

* Build and run the application.

+ Access the application through your web browser.

- Enter grades and weightage (percentile) for each category on the main page (WebForm1).

* Click the "Calculate" button to see the calculated grade.

+ You will be redirected to the "Grade.aspx" page, which displays the calculated grade and letter grade.

## Future Considerations
Plans to adapt the code and modify the UI design using drop down selection for variable # of assignment and test entries is underway but this currently a low priority for me as it was not within the scope of the assignment.

## Customization
Feel free to customize and extend this application to meet your specific grading requirements. You can modify the grading scale, add more categories, or enhance the user interface based on your needs.

using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;

namespace WebApplication1
{
    public class myBuisinessLogic
    {
        string letterGrade;
        double quizGrades, assignmentGrades, codetestGrades, midtestGrades, finaltestGrades;
        double quizCounter, assCounter, cdTestCounter, midTestCounter, finalTestCounter;
        double quizPercentile, assignmentPercentile, codeTestPercentile, midTestPercentile, finalTestPercentile;

        double quizPercent, assignPercent, codetestPercent, midtestPercent, finaltestPercent;
        double percentageGrade;
        //set the counters
        public double TotalQuizTextBoxes
        {
            set 
            {
                quizCounter = value;
                
            }    
        }
        public double TotalAssTextBoxes
        {
            set { assCounter = value; }
        }
        public double TotalCdTestTextBoxes
        {
            set { cdTestCounter = value; }
        }
        public double TotalMidTestTextBoxes
        {
            set { midTestCounter = value; }
        }
        public double TotalFinalTestTextBoxes
        {
            set { finalTestCounter = value; }
        }
        //set pecentages
        public double QuizPercentile
        {
            set
            {
                quizPercentile = value;
            }
        }
        public double AssignmentPercentile
        {
            set
            {
                assignmentPercentile = value;
            }
        }
        public double CodeTestPercentile
        {
            set
            {
                codeTestPercentile = value;
            }
        }
        public double MidTestPercentile
        {
            set
            {
                midTestPercentile = value;
            }
        }
        public double FinalTestPercentile
        {
            set
            {
                finalTestPercentile = value;
            }
        }
        //set grade totals
        public double QuizGrades
        {
            get { return quizGrades; }
            set { quizGrades += value; }
        }

        public double AssignmentGrades
        {
            get { return assignmentGrades; }
            set { assignmentGrades += value; }
        }

        public double CodeTestGrades
        {
            get { return codetestGrades; }
            set { codetestGrades += value; }
        }

        public double MidTestGrades
        {
            get { return midtestGrades; }
            set { midtestGrades += value; }
        }

        public double FinalTestGrades
        {
            get { return finaltestGrades; }
            set { finaltestGrades += value; }
        }

        // Method to update quiz grades sum
        public void UpdateQuizGrades(double sum)
        {
            QuizGrades = sum;
        }

        // Method to update assignment grades sum
        public void UpdateAssignmentGrades(double sum)
        {
            AssignmentGrades = sum;
        }

        // Method to update code test grades sum
        public void UpdateCodeTestGrades(double sum)
        {
            CodeTestGrades = sum;
        }

        // Method to update midterm test grades sum
        public void UpdateMidTestGrades(double sum)
        {
            MidTestGrades = sum;
        }

        // Method to update final test grades sum
        public void UpdateFinalTestGrades(double sum)
        {
            FinalTestGrades = sum;
        }
        public double CalculateAverage()
        {
            Debug.WriteLine($"quizGrades during calc average: {quizGrades}, totalQuizTextBoxes: {quizCounter}, quizPercentile: {quizPercentile}");
            Debug.WriteLine($"assignmentGrades during calc average: {assignmentGrades}, totalAssTextBoxes: {assCounter}, assignmentPercentile: {assignmentPercentile}");
            Debug.WriteLine($"codetestGrades during calc average: {codetestGrades}, totalCdTestTextBoxes: {cdTestCounter}, codeTestPercentile: {codeTestPercentile}");
            Debug.WriteLine($"midtestGrades during calc average: {midtestGrades}, totalMidTestTextBoxes: {midTestCounter}, midTestPercentile: {midTestPercentile}");
            Debug.WriteLine($"finaltestGrades during calc average: {finaltestGrades}, totalFinalTestTextBoxes: {finalTestCounter}, finalTestPercentile: {finalTestPercentile}");
            Debug.WriteLine($"quizPercent during calc average: {quizPercent}, assignPercent: {assignPercent}, codetestPercent: {codetestPercent}, midtestPercent: {midtestPercent}, finaltestPercent: {finaltestPercent}, percentageGrade: {percentageGrade}");
            //The following if else statements are to catch potential divide by zero error. Some may wany the variable to be zero as the dont have certain assignments.
            if (quizCounter == 0)
            {
                quizPercent = 0;
            }
            else 
            { 
                quizPercent = (quizGrades / (quizCounter * 100)) * quizPercentile; 
            }
            
            if (assCounter == 0)
            {
                assignPercent = 0;
            }
            else
            {
                assignPercent = (assignmentGrades / (assCounter * 100)) * assignmentPercentile;
            }

            if (cdTestCounter == 0)
            {
                codetestPercent = 0;
            }
            else
            {
                codetestPercent = (codetestGrades / (cdTestCounter * 100)) * codeTestPercentile;
            }

            if (midTestCounter == 0)
            {
                midtestPercent = 0;
            }
            else
            {
                midtestPercent = (midtestGrades / (midTestCounter * 100)) * midTestPercentile;
            }

            if (finalTestCounter == 0)
            {
                finaltestPercent = 0;
            }
            else
            {
                finaltestPercent = (finaltestGrades / (finalTestCounter * 100)) * finalTestPercentile;
            }

            percentageGrade = quizPercent + assignPercent + codetestPercent + midtestPercent + finaltestPercent;
            double formatpercentageGrade = Math.Floor(percentageGrade * 100) / 100;
            
            return formatpercentageGrade;
        }
        public String ConvertToLetterGrade(double percentageGrade)
        {
            switch (percentageGrade)
            {
                case double i when i >= 91:
                    letterGrade = "A";
                    break;
                case double i when i >= 89.0 && i < 90.9:
                    letterGrade = "A-";
                    break;
                case double i when i >= 86.0 && i < 88.9:
                    letterGrade = "B+";
                    break;
                case double i when i >= 82.0 && i < 85.9:
                    letterGrade = "B";
                    break;
                case double i when i >= 79.0 && i < 81.9:
                    letterGrade = "B-";
                    break;
                case double i when i >= 76.0 && i < 78.9:
                    letterGrade = "C+";
                    break;
                case double i when i >= 72.0 && i < 75.9:
                    letterGrade = "C";
                    break;
                case double i when i >= 70.0 && i < 71.9:
                    letterGrade = "C-";
                    break;
                case double i when i >= 60.0 && i < 69.9:
                    letterGrade = "D";
                    break;
                case double i when i < 60.0:
                    letterGrade = "F";
                    break;
                default:
                    letterGrade = "Error";
                    break;
            }
            return letterGrade;
        }
    }
}
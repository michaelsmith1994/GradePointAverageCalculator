using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1
{
    public class myBuisinessLogic
    {
        double quizGrades, assignmentGrades, codetestGrades, midtestGrades, finaltestGrades;
        double quizPercentile, assignmentPercentile, codeTestPercentile, midTestPercentile, finalTestPercentile;
        double quizPercent, assignPercent, codetestPercent, midtestPercent, finaltestPercent;
        double percentageGrade;
        string letterGrade;
        

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

        public double QuizGrades//5% of grade
        {
            set
            {
                quizGrades += value;
            }
        }
        public double AssignmentGrades//24% of grade
        {
            set
            {
                assignmentGrades += value;
            }
        }
        public double CodeTestGrades//26% of grade
        {
            set
            {
                codetestGrades += value;
            }
        }   
        public double MidTestGrades//20% of grade
        {
            set
            {
                midtestGrades += value;
            }
        }
        public double FinalTestGrades//25% of grade
        {
            set
            {
                finaltestGrades += value;
            }
        }
        public double CalculateAverage()
        {
            quizPercent = quizGrades / 500 * quizPercentile;
            assignPercent = assignmentGrades / 400 * assignmentPercentile;
            codetestPercent = (codetestGrades / 200) * codeTestPercentile;
            midtestPercent = (midtestGrades / 100) * midTestPercentile;
            finaltestPercent = (finaltestGrades / 100) * finalTestPercentile;
            percentageGrade = quizPercent + assignPercent + codetestPercent + midtestPercent + finaltestPercent;
            
            return percentageGrade;
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
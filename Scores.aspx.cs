using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        myBuisinessLogic BuisinessLogic = new myBuisinessLogic();

        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                BuisinessLogic.QuizGrades = Convert.ToDouble(txtboxQuiz1.Text);
                BuisinessLogic.QuizGrades = Convert.ToDouble(txtboxQuiz2.Text);
                BuisinessLogic.QuizGrades = Convert.ToDouble(txtboxQuiz3.Text);
                BuisinessLogic.QuizGrades = Convert.ToDouble(txtboxQuiz4.Text);
                BuisinessLogic.QuizGrades = Convert.ToDouble(txtboxQuiz5.Text);
                BuisinessLogic.QuizPercentile = Convert.ToDouble(txtboxQuizPercent.Text);
                BuisinessLogic.AssignmentGrades = Convert.ToDouble(txtboxAss1.Text);
                BuisinessLogic.AssignmentGrades = Convert.ToDouble(txtboxAss2.Text);
                BuisinessLogic.AssignmentGrades = Convert.ToDouble(txtboxAss3.Text);
                BuisinessLogic.AssignmentGrades = Convert.ToDouble(txtboxAss4.Text);
                BuisinessLogic.AssignmentPercentile = Convert.ToDouble(txtboxAssPercent.Text);
                BuisinessLogic.CodeTestGrades = Convert.ToDouble(txtboxCdTest1.Text);
                BuisinessLogic.CodeTestGrades = Convert.ToDouble(txtboxCdTest2.Text);
                BuisinessLogic.CodeTestPercentile = Convert.ToDouble(txtboxCdTestPercent.Text);
                BuisinessLogic.MidTestGrades = Convert.ToDouble(txtboxMidTest1.Text);
                BuisinessLogic.MidTestPercentile = Convert.ToDouble(txtboxMidTestPercent.Text);
                BuisinessLogic.FinalTestGrades = Convert.ToDouble(txtboxFinalTest1.Text);
                BuisinessLogic.FinalTestPercentile = Convert.ToDouble(txtboxFinalTestPercent.Text);
                hiddenFieldCounter1.Text = BuisinessLogic.CalculateAverage().ToString();
                hiddenFieldCounter2.Text = BuisinessLogic.ConvertToLetterGrade(BuisinessLogic.CalculateAverage());
                HttpCookie myCookie = new HttpCookie("userInfo");
                myCookie["percentage"] = hiddenFieldCounter1.Text.ToString();
                myCookie["gradeLetter"] = hiddenFieldCounter2.Text.ToString();
                Response.Cookies.Add(myCookie);
                Response.Redirect("Grade.aspx");
            }
            
            
        }
    }
}
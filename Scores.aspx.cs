using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        
        myBuisinessLogic BuisinessLogic = new myBuisinessLogic();

        protected void Page_Load(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "ResetForm", "document.getElementById('WebForm1').reset();", true);

            if (!IsPostBack)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "AddTextBoxes", "addAdditionalField('txtboxQuiz'); addAdditionalField('txtboxAss'); addAdditionalField('txtboxCdTest'); addAdditionalField('txtboxMidTest'); addAdditionalField('txtboxFinalTest');", true);
            }
        }
        [WebMethod]
        protected void Button1_Click(object sender, EventArgs e)
        {

            List<string> quizTextBoxIDs = new List<string>();
            List<string> assTextBoxIDs = new List<string>();
            List<string> cdTestTextBoxIDs = new List<string>();
            List<string> midTestTextBoxIDs = new List<string>();
            List<string> finalTestTextBoxIDs = new List<string>();
            Debug.WriteLine("Before death1 " + totalQuizSumHidden.Value);


            if (IsValid == true)
            {
                callBusinessLogicMethods(quizTextBoxIDs, (logic, grade) => logic.QuizGrades = grade);
                callBusinessLogicMethods(assTextBoxIDs, (logic, grade) => logic.AssignmentGrades = grade);
                callBusinessLogicMethods(cdTestTextBoxIDs, (logic, grade) => logic.CodeTestGrades = grade);
                callBusinessLogicMethods(midTestTextBoxIDs, (logic, grade) => logic.MidTestGrades = grade);
                callBusinessLogicMethods(finalTestTextBoxIDs, (logic, grade) => logic.FinalTestGrades = grade);
                Debug.WriteLine("Before death2 " + totalQuizSumHidden.Value);

                //these are working fine 02/18/2024 03:27pm
                BuisinessLogic.QuizPercentile = Convert.ToDouble(txtboxQuizPercent.Text);
                BuisinessLogic.AssignmentPercentile = Convert.ToDouble(txtboxAssPercent.Text);
                BuisinessLogic.CodeTestPercentile = Convert.ToDouble(txtboxCdTestPercent.Text);
                BuisinessLogic.MidTestPercentile = Convert.ToDouble(txtboxMidTestPercent.Text);
                BuisinessLogic.FinalTestPercentile = Convert.ToDouble(txtboxFinalTestPercent.Text);

                BuisinessLogic.TotalQuizTextBoxes = Convert.ToDouble(hiddenquizcounter.Value);
                BuisinessLogic.TotalAssTextBoxes = Convert.ToDouble(hiddenassigncounter.Value);
                BuisinessLogic.TotalCdTestTextBoxes = Convert.ToDouble(hiddentestcounter.Value);
                BuisinessLogic.TotalMidTestTextBoxes = Convert.ToDouble(hiddenmidtestcounter.Value);
                BuisinessLogic.TotalFinalTestTextBoxes = Convert.ToDouble(hiddenfinaltestcounter.Value);

                // Retrieve the values of the hidden fields
                double totalQuizSum = Convert.ToDouble(totalQuizSumHidden.Value);
                double totalAssignmentSum = Convert.ToDouble(totalAssignmentSumHidden.Value);
                double totalTestSum = Convert.ToDouble(totalTestSumHidden.Value);
                double totalMidTestSum = Convert.ToDouble(totalMidTestSumHidden.Value);
                double totalFinalTestSum = Convert.ToDouble(totalFinalTestSumHidden.Value);
                Debug.WriteLine("This Total Quiz Sum: " + totalQuizSum);
                Debug.WriteLine("Total Assignment Sum: " + totalAssignmentSum);
                Debug.WriteLine("Total Test Sum: " + totalTestSum);
                Debug.WriteLine("Total Midterm Test Sum: " + totalMidTestSum);
                Debug.WriteLine("Total Final Test Sum: " + totalFinalTestSum);

                // Update the business logic with the retrieved sums
                BuisinessLogic.UpdateQuizGrades(totalQuizSum);
                BuisinessLogic.UpdateAssignmentGrades(totalAssignmentSum);
                BuisinessLogic.UpdateCodeTestGrades(totalTestSum);
                BuisinessLogic.UpdateMidTestGrades(totalMidTestSum);
                BuisinessLogic.UpdateFinalTestGrades(totalFinalTestSum);

                Debug.WriteLine("Before death3 " + totalQuizSumHidden.Value);

                //need to add the hidden counter field
                hiddenFieldCounter1.Text = BuisinessLogic.CalculateAverage().ToString();
                hiddenFieldCounter2.Text = BuisinessLogic.ConvertToLetterGrade(BuisinessLogic.CalculateAverage());
                Debug.WriteLine("Before death4 " + totalQuizSumHidden.Value);


                HttpCookie myCookie = new HttpCookie("userInfo");
                myCookie["percentage"] = hiddenFieldCounter1.Text.ToString();
                myCookie["gradeLetter"] = hiddenFieldCounter2.Text.ToString();
                Response.Cookies.Add(myCookie);



                Debug.WriteLine("Redirecting page to grade.apsx");
                Response.Redirect("Grade.aspx");
            }
        }

        

        protected void Page_PreRender(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "AddTextBoxes", "addAdditionalField('txtboxQuiz'); addAdditionalField('txtboxAss'); addAdditionalField('txtboxCdTest'); addAdditionalField('txtboxMidTest'); addAdditionalField('txtboxFinalTest');", true);

        }



        protected void callBusinessLogicMethods(List<string> textBoxIDs, Action<myBuisinessLogic, double> businessLogicMethod)
        {

            foreach (var textBoxID in textBoxIDs)
            {
                TextBox textBox = FindControl(textBoxID) as TextBox;
                if (textBox != null && !string.IsNullOrEmpty(textBox.Text))
                {
                    businessLogicMethod(BuisinessLogic, Convert.ToDouble(textBox.Text));
                }
            }
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Grade : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["userinfo"];
            lblTotalPercentage.Text = cookie["percentage"];
            lblLetterGrade.Text = cookie["gradeLetter"];
        }
    }
}
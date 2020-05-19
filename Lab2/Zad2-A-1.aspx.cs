using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2
{
    public partial class Zad2_A_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void proveri_Click(object sender, EventArgs e)
        {
            labela.Text = "Стрингот " + tekst.Text + " се прифаќа.";
        }
    }
}
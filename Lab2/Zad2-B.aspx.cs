using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2
{
    public partial class Zad2_B : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void podnesi_Click(object sender, EventArgs e)
        {
            if(panela.Visible==true)
            {
                if(Int32.Parse(godini.Text)>=5)
                {
                    labela.Text = "Успешна регистрација! Вашата корисничка сметка е "+ime.Text+" "+prezime.Text;
                }
                else
                {
                    labela.Text = "Корисникот нема повеќе од 5 години работно искуство";
                }
            }
                
            panela.Visible = true;
            korisnickaSmetka.Visible = false;
           
        }

        
    }
}
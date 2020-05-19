using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2
{
    public partial class Zad3 : System.Web.UI.Page
    {

        int obidi = 1;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                lblObidi.Text= "Корисникот има 0 обиди за пасворд";
            }
        }

        

        protected void btnPodnesi_Click(object sender, EventArgs e)
        {
            
            if (ViewState["Obidi"] != null)
            {
                obidi = (int)ViewState["Obidi"] + 1;              
            }
            lblObidi.Text = "Корисникот има " + obidi.ToString() + " обиди за пасворд";
            ViewState["Obidi"] = obidi;
            if(obidi>3)
            {
                btnPodnesi.Enabled = false;
                lblObidi.Text = "Ја надминавте квотата за дозволени обиди";
            }

            if (txtLozinka.Text == "mp")
            {
                String korisnik = txtKorisnik.Text;
                Response.Redirect("GlavnaStranica.aspx");
            }
            


            
        }
    }
}
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab2
{
    public partial class Zad1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                //denovi
                for(int i=1;i<=31;i++)
                    ddlDen.Items.Add(i.ToString());

                //meseci
                String [] meseci = new String[] { "Јануари", "Февруари", "Март", "Април", "Мај", "Јуни", "Јули", "Август", "Септември", "Октомври", "Ноември", "Декември" };
                foreach (String mesec in meseci)
                    ddlMesec.Items.Add(mesec);

                //godini
                int godina = Int32.Parse(DateTime.Now.Year.ToString());
                for (int i=0;i<5;i++)
                {
                    ddlGodina.Items.Add(godina.ToString());
                    godina++;
                }

                //vreme
                for(int i=0;i<24;i++)
                {
                    if(i<10)
                    {
                        ddlVreme.Items.Add("0" + i.ToString() + ":00");
                    }
                    else
                    {
                        ddlVreme.Items.Add(i.ToString() + ":00");
                    }
                }


            }
        }

        protected void btnPodnesi_Click(object sender, EventArgs e)
        {
            lblPatnik.Text = txtIme.Text + " " + txtPrezime.Text;
            lblSredstvo.Text = lstSredstvo.SelectedItem.Text;
            lblOd.Text = ddlOd.SelectedItem.Text;
            lblDo.Text = ddlDo.SelectedItem.Text;
            lblVreme.Text = ddlDen.SelectedItem.Text + "." + (ddlMesec.SelectedIndex+1).ToString() + "." + ddlGodina.SelectedItem.Text + " во " + ddlVreme.SelectedItem.Text + " часот";
            lblZona.Text = rblZona.SelectedItem.Text;
            lblKlasa.Text = rblKlasa.SelectedItem.Text;
            //za da moze poveke cekirani da prikazuva:
            foreach(ListItem item in cblPosluga.Items)
            {

                if(item.Selected)
                    lblPosluga.Text += item.Text+" ";
            }
            if (lblSredstvo.Text == "Авион")
            {
                lblSlika.ImageUrl = "~/avion.jpg";
            }
            if (lblSredstvo.Text=="Воз")
            {
                lblSlika.ImageUrl = "~/voz.jpg";
            }
            
            
        }
    }
}
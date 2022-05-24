using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace oef16._1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                if (rbtnNee.Checked)
                {
                    rbtnJa.Visible = false;
                    rbtnNee.Visible = false;
                    btnKeuze.Visible = false;
                    LOGO.Visible = true;
                    lblBedankt.Visible = true;
                }
                else if (rbtnJa.Checked)
                {
                    rbtnJa.Visible = false;
                    rbtnNee.Visible = false;
                    btnKeuze.Visible = false;
                    formsinschrijving.Visible = true;
                    form1.Visible = false;

                }
            }
        }
        protected void rbtnJa_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void rbtnNee_CheckedChanged(object sender, EventArgs e)
        {

        }
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                formsinschrijving.Visible = false;
                frmbedankt.Visible = true;
                naam.Text = txtNaam.Text;
                Vnaam.Text = txtVnaam.Text;
                email.Text = txtEMAIL.Text;
            }
        }
    }
}
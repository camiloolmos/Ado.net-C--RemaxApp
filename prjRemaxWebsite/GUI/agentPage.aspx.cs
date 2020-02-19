using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace prjRemaxWebsite.GUI
{
    public partial class agentPage : System.Web.UI.Page
    {
        static OleDbConnection myCon;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                myCon = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("~/App_Data/RemaxDatabase.mdb"));

                myCon.Open();
                fillComboBox();
            }
        }

        private void fillComboBox()
        {
            //Name
            OleDbCommand cmdName = new OleDbCommand("SELECT * FROM Agent", myCon);
            OleDbDataReader rdName = cmdName.ExecuteReader();
            cboAgentNumber.DataTextField = "AgentName";
            cboAgentNumber.DataValueField = "AgentNumber";
            cboAgentNumber.DataSource = rdName;
            cboAgentNumber.DataBind();

            //gender
            OleDbCommand cmdGender = new OleDbCommand("SELECT * FROM Agent", myCon);
            OleDbDataReader rdGender = cmdGender.ExecuteReader();
            cboGender.DataTextField = "Gender";
            cboGender.DataValueField = "AgentNumber";
            cboGender.DataSource = rdGender;
            cboGender.DataBind();

            //city
            OleDbCommand cmdCity = new OleDbCommand("SELECT * FROM Agent", myCon);
            OleDbDataReader rdCity = cmdCity.ExecuteReader();
            cboCity.DataTextField = "City";
            cboCity.DataValueField = "AgentNumber";
            cboCity.DataSource = rdCity;
            cboCity.DataBind();

            //language
            OleDbCommand cmdLanguage = new OleDbCommand("SELECT * FROM Agent", myCon);
            OleDbDataReader rdLanguage = cmdLanguage.ExecuteReader();
            cboLanguage.DataTextField = "Language";
            cboLanguage.DataValueField = "AgentNumber";
            cboLanguage.DataSource = rdLanguage;
            cboLanguage.DataBind();
        }

        private void Display(OleDbDataReader myRd)
        {
            //Image img = new Image();
            //litHouses.Text = "<table><tr>";
            //int c = 0;
            //DateTime n = DateTime.Now;
            //while (myRd.Read())
            //{
            //    c++;
            //    litHouses.Text += @"<td><div class='card' style='width: 18rem; '><img src='../img/" + myRd["Photo"].ToString() + "' style='width:286px;height:286px;' class='card-img-top'><div class='card-body'><h5 class='card-title'>" + myRd["AgentName"].ToString().ToUpper() + "</h5><p class='card-text'><b>" + myRd["Gender"].ToString() + ",</b>" + myRd["City"].ToString() + "</p><a href = 'webViewProfile.aspx?refV=" + myRd["Language"].ToString() + "' class='btn btn-primary'>More</a></div></div></td>";
            //    if (c == 4)
            //    {
            //        litHouses.Text += "</tr><tr>";
            //        c = 0;
            //    }
            //}
            //litHouses.Text += "</table>";


            Image img = new Image();
            litHouses.Text = "<table><tr>";
            int c = 0;
            DateTime n = DateTime.Now;
            while (myRd.Read())
            {
                c++;
                litHouses.Text += @"<td><div class='card' style='width: 18rem; '><img src='../img /" + myRd["Photo"].ToString() + "' style='width:286px;height:286px;' class='card-img-top'><div class='card-body'><h6 class='card-title'><strong>" + myRd["AgentName"].ToString().ToUpper() + "</strong></h6><p class='card-text'>" + myRd["City"].ToString() + "</p><p>" + myRd["Language"].ToString() + "</p><a href = 'messaginPage.aspx?refA=" + myRd["AgentNumber"] + "' class='btn btn-danger'>Contact Me</a></div></div></td>";
                if (c == 4)
                {
                    litHouses.Text += "</tr><tr>";
                    c = 0;
                }
            }
            litHouses.Text += "</table>";
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            //string sql = "SELECT * FROM Agent WHERE ";
            //if (cboCity.SelectedItem.Text != "Any")
            //{
            //    sql += " AgentCity ='" + cboCity.SelectedItem.Text + "'";
            //}
            //if (cboGender.SelectedItem.Text != "Any")
            //{
            //    sql += " AND Gender = '" + cboGender.SelectedItem.Text + "'";
            //}
            //if (cboLanguage.SelectedItem.Text != "0")
            //{
            //    sql += " AND [Language] =" + cboLanguage.SelectedItem.Value;
            //}
            //if (cboAgentNumber.SelectedItem.Text != "0")
            //{
            //    sql += " AND AgentName = '" + cboAgentNumber.SelectedItem.Text + "'";
            //}
            //OleDbCommand myCmd = new OleDbCommand(sql, myCon);
            //OleDbDataReader myRd = myCmd.ExecuteReader();
            //Display(myRd);

            string sql = "SELECT * FROM Agent WHERE AgentNumber =" + cboAgentNumber.SelectedItem.Value + "AND Gender='" + cboGender.SelectedItem.ToString() + "'AND City='" + cboCity.SelectedItem.ToString() + "'AND [Language]='" + cboLanguage.SelectedItem.ToString() + "'";
            OleDbCommand myCmd = new OleDbCommand(sql, myCon);
            OleDbDataReader myRd = myCmd.ExecuteReader();
            Display(myRd);
        }

        protected void cboGender_SelectedIndexChanged(object sender, EventArgs e)
        {
            string sql = "SELECT * FROM Agent WHERE Gender ='" + cboGender.SelectedItem.Text + "'";
            OleDbCommand myCmd = new OleDbCommand(sql, myCon);
            OleDbDataReader myRd = myCmd.ExecuteReader();
            Display(myRd);
        }

        protected void cboCity_SelectedIndexChanged(object sender, EventArgs e)
        {
            string sql = "SELECT * FROM Agent WHERE City ='" + cboCity.SelectedItem.Text + "'";
            OleDbCommand myCmd = new OleDbCommand(sql, myCon);
            OleDbDataReader myRd = myCmd.ExecuteReader();
            Display(myRd);
        }

        protected void cboLanguage_SelectedIndexChanged(object sender, EventArgs e)
        {
            string sql = "SELECT * FROM Agent WHERE [Language] ='" + cboCity.SelectedItem.Text + "'";
            OleDbCommand myCmd = new OleDbCommand(sql, myCon);
            OleDbDataReader myRd = myCmd.ExecuteReader();
            Display(myRd);
        }
    }
}
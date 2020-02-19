using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace prjRemaxWebsite.GUI
{
    public partial class housePage : System.Web.UI.Page
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
            OleDbCommand cmdType = new OleDbCommand("SELECT * FROM PropertyType", myCon);
            OleDbDataReader rdType = cmdType.ExecuteReader();
            cboTypeOfResidence.DataTextField = "TypeProperty";
            cboTypeOfResidence.DataValueField = "TypeId";
            cboTypeOfResidence.DataSource = rdType;
            cboTypeOfResidence.DataBind();

            OleDbCommand cmdLocation = new OleDbCommand("SELECT * FROM City", myCon);
            OleDbDataReader rdLocatom = cmdLocation.ExecuteReader();
            cboLocation.DataTextField = "CityName";
            cboLocation.DataValueField = "CityId";
            cboLocation.DataSource = rdLocatom;
            cboLocation.DataBind();
        }

        private void Display(OleDbDataReader myRd)
        {
            Image img = new Image();
            litHouses.Text = "<table><tr>";
            int c = 0;
            DateTime n = DateTime.Now;
            while (myRd.Read())
            {
                c++;
                litHouses.Text += @"<td><div class='card' style='width: 18rem; '><img src='../img/" + myRd["Photo"].ToString() + "' style='width:286px;height:286px;' class='card-img-top'><div class='card-body'><h5 class='card-title'>" + myRd["HouseType"].ToString().ToUpper() + "</h5><p class='card-text'><b>" + myRd["Address"].ToString() + ",</b>" + myRd["Location"].ToString() + "</p><a href = 'webViewProfile.aspx?refV=" + myRd["Price"].ToString() + "' class='btn btn-primary'>More</a></div></div></td>";
                if (c == 3)
                {
                    litHouses.Text += "</tr><tr>";
                    c = 0;
                }
            }
            litHouses.Text += "</table>";
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string sql = "SELECT * FROM House WHERE ";
            if (cboTypeOfResidence.SelectedItem.Text != "Any")
            {
                sql += " HouseType ='" + cboTypeOfResidence.SelectedItem.Text + "'";
            }
            if (cboLocation.SelectedItem.Text != "Any")
            {
                sql += " AND Location = '" + cboLocation.SelectedItem.Text + "'";
            }
            if (cboPrice.SelectedItem.Text != "0")
            {
                sql += " AND Price =" + cboPrice.SelectedItem.Value ;
            }
            if(cboNumberOfRooms.SelectedItem.Text != "0")
            {
                sql += " AND NumberOfRooms = '" + cboNumberOfRooms.SelectedItem.Text + "'";
            }
            OleDbCommand myCmd = new OleDbCommand(sql, myCon);
            OleDbDataReader myRd = myCmd.ExecuteReader();
            Display(myRd);
        }
    }
}
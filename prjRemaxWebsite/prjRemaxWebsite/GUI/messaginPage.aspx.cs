using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace prjRemaxWebsite.GUI
{
    public partial class messaginPage : System.Web.UI.Page
    {
        OleDbConnection myCon;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                myCon = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("~/App_Data/RemaxDatabase.mdb"));
                myCon.Open();
                fillCbo();
            }
        }

        private void fillCbo()
        {
            OleDbCommand cmdTo = new OleDbCommand("SELECT AgentNumber, AgentName FROM Agent", myCon);
            OleDbDataReader rdTo = cmdTo.ExecuteReader();
            cboTo.DataTextField = "AgentName";
            cboTo.DataValueField = "AgentNumber";
            cboTo.DataSource = rdTo;
            cboTo.DataBind();

            OleDbCommand cmdCity = new OleDbCommand("SELECT * FROM City", myCon);
            OleDbDataReader rdCity = cmdCity.ExecuteReader();
            cboCity.DataTextField = "CityName";
            cboCity.DataValueField = "CityId";
            cboCity.DataSource = rdCity;
            cboCity.DataBind();

            OleDbCommand cmdLanguage = new OleDbCommand("SELECT * FROM [Language]", myCon);
            OleDbDataReader rdLanguage = cmdLanguage.ExecuteReader();
            cboLanguage.DataTextField = "LanguageName";
            cboLanguage.DataValueField = "LanguageId";
            cboLanguage.DataSource = rdLanguage;
            cboLanguage.DataBind();
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            var receiver = Convert.ToInt32(cboTo.SelectedItem.Value);
            string sql = "INSERT INTO Message (From, To, City, PreferedLanguange, Message) VALUES ('" + txtFrom.Text + "','" + receiver + "'," + cboCity.SelectedItem.ToString() + "," + cboLanguage.SelectedItem.ToString() + ")";
            OleDbCommand myCmd = new OleDbCommand(sql, myCon);
            myCmd.Connection = myCon;
            myCmd.ExecuteNonQuery();
        }
    }
}
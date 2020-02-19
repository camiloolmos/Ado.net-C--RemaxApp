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
            //gender
            OleDbCommand cmdGender = new OleDbCommand("SELECT * FROM Gender", myCon);
            OleDbDataReader rdGender = cmdGender.ExecuteReader();
            cboGender.DataTextField = "GenderName";
            cboGender.DataValueField = "GenderId";
            cboGender.DataSource = rdGender;
            cboGender.DataBind();

            //city
            OleDbCommand cmdCity = new OleDbCommand("SELECT * FROM City", myCon);
            OleDbDataReader rdCity = cmdCity.ExecuteReader();
            cboCity.DataTextField = "CityName";
            cboCity.DataValueField = "Cityid";
            cboCity.DataSource = rdCity;
            cboCity.DataBind();

            //language
            OleDbCommand cmdLanguage = new OleDbCommand("SELECT * FROM [Language]", myCon);
            OleDbDataReader rdLanguage = cmdLanguage.ExecuteReader();
            cboLanguage.DataTextField = "LanguageName";
            cboLanguage.DataValueField = "LanguageId";
            cboLanguage.DataSource = rdLanguage;
            cboLanguage.DataBind();
        }
    }
}
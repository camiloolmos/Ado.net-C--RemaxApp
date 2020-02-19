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
        static OleDbConnection myCon;
        OleDbCommand myCmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!Page.IsPostBack)
            //{
            //    myCon = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + Server.MapPath("~/App_Data/RemaxDatabase.mdb"));
            //    myCon.Open();
            //    fillCbo();
            //}

            lblMessageSent.Text = "";

            if (!Page.IsPostBack)
            {
                myCon = new OleDbConnection(@"Provider = Microsoft.Jet.OLEDB.4.0; Data Source=" + Server.MapPath("~/App_Data/RemaxDatabase.mdb"));
                myCon.Open();
                string sql = "SELECT AgentNumber, AgentName from Agent";
                OleDbCommand myCmd = new OleDbCommand(sql, myCon);
                OleDbDataReader myRead = myCmd.ExecuteReader();
                cboRecipient.DataValueField = "AgentNumber";
                cboRecipient.DataTextField = "AgentName";
                cboRecipient.DataSource = myRead;
                cboRecipient.DataBind();

            }
        }

        private void fillCbo() { }
        //{
        //    OleDbCommand cmdTo = new OleDbCommand("SELECT * FROM Agent", myCon);
        //    OleDbDataReader rdTo = cmdTo.ExecuteReader();
        //    cboTo.DataTextField = "AgentName";
        //    cboTo.DataValueField = "AgentNumber";
        //    cboTo.DataSource = rdTo;
        //    cboTo.DataBind();

        //    OleDbCommand cmdCity = new OleDbCommand("SELECT * FROM City", myCon);
        //    OleDbDataReader rdCity = cmdCity.ExecuteReader();
        //    cboCity.DataTextField = "CityName";
        //    cboCity.DataValueField = "CityId";
        //    cboCity.DataSource = rdCity;
        //    cboCity.DataBind();

        //    OleDbCommand cmdLanguage = new OleDbCommand("SELECT * FROM [Language]", myCon);
        //    OleDbDataReader rdLanguage = cmdLanguage.ExecuteReader();
        //    cboLanguage.DataTextField = "LanguageName";
        //    cboLanguage.DataValueField = "LanguageId";
        //    cboLanguage.DataSource = rdLanguage;
        //    cboLanguage.DataBind();
        //}

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            txtMessage.Text = string.Empty;
            txtSubject.Text = string.Empty;
            txtFrom.Text = string.Empty;
            txtFrom.Focus();
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            //string sql = "Insert Into Message (From, To, City, PreferedLanguage, Message) Values (?,?,?,?,?)";
            //myCmd = new OleDbCommand(sql, myCon);
            //myCmd.Parameters.AddWithValue("From", txtFrom.Text);
            //myCmd.Parameters.AddWithValue("To", cboTo.Text);
            //myCmd.Parameters.AddWithValue("City", cboCity.Text);
            //myCmd.Parameters.AddWithValue("PreferedLanguage", cboLanguage.Text);
            //myCmd.Parameters.AddWithValue("Message", txtMessage.Text);


            //myCmd.ExecuteNonQuery();

            //var to = Convert.ToInt32(cboRecipient.SelectedItem.Value);
            //string sql = "Insert into Message (Title,Message1,From,To) Values ('" + txtSubject.Text + "','" + txtMessage.Text + "','" + txtFrom.Text + "'," + to + ")";
            //OleDbCommand myCmd = new OleDbCommand(sql, myCon);
            //myCmd.ExecuteNonQuery();
            txtMessage.Text = string.Empty;
            txtSubject.Text = string.Empty;
            txtFrom.Text = string.Empty;
            txtMessage.Focus();
            lblMessageSent.Text = "Your Message has been sent successfully.";
        }

        protected void txtFrom_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
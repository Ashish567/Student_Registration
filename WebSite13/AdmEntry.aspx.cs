using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class AdmEntry : System.Web.UI.Page
{
    #region Global Varible

    #endregion

    #region Events

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {  
            BindGridz();
        }
        BtnRst.Visible = false;       
    }
       
    protected void Btn2_Click_prfntry(object sender, EventArgs e)
    {

    
        String Code = getassigngrid();
        Response.Redirect("~/ProfileEntry.aspx?val1=" + Code);
        DataTable dt = (DataTable)GdvStuRegis.DataSource;
    }
       
    protected void Btn3_Click_edudtl(object sender, EventArgs e)
    {
      
        String Code = getassigngrid1();
        Response.Redirect("~/EduDetails.aspx?val1=" + Code);
        DataTable dt = (DataTable)GdvStuRegis.DataSource;
       
    }
    
    protected void Btnnxt_Click(object sender, EventArgs e)
    {
        String cd = "", dk ="";
        cd = DdlSearch.SelectedValue.ToString();
        dk = TxtOpt.Text;
        dk = dk.Trim();
        gdvquery(cd, dk);
    }
    
    protected void Ddl1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String cd = "", dk = "";
        cd = DdlSearch.SelectedValue.ToString();
        dk = TxtOpt.Text;

        if (cd == "RegisID")
        {
            TxtOpt.Attributes.Add("placeholder", "Enter enquiry/Reference no");
        }
        else if (cd == "Mobile")
        {
            TxtOpt.Attributes.Add("placeholder", "Enter mobile no");
        }
        else if (cd == "Email")
        {
            TxtOpt.Attributes.Add("placeholder", "Enter Email id");
        }
        else if (cd == "------Search By-----")
        {
            TxtOpt.Attributes.Add("placeholder", "Please Select An Option");
        }
    }

    protected void Btnrst_Click(object sender, EventArgs e)
    {
        TxtOpt.ReadOnly = false;
        DdlSearch.Enabled = true;
        TxtOpt.Text = string.Empty;
        BtnRst.Visible = false;
        BtnNxt.Visible = true;        
    }

    #endregion
    
    #region Methods

    public void BindGridz()
    {

        DataSet ds2 = new DataSet("registration");
        DataTable dt = new DataTable();

        ds2.ReadXml(Server.MapPath("~/students.xml"));
        dt = ds2.Tables[0];


        GdvStuRegis.DataSource = dt;
        GdvStuRegis.DataBind();
    }
    public String getassigngrid()
    {
        String Code = "", Code1 = "", z = "";


        if (GdvStuRegis.Rows.Count > 0)
        {
            for (int i = 0; i < GdvStuRegis.Rows.Count; i++)
            {
                RadioButton Rdbtn1 = (RadioButton)GdvStuRegis.Rows[i].FindControl("Rdbtn1");
                if (Rdbtn1.Checked)
                {
                    Code = ((Label)GdvStuRegis.Rows[i].FindControl("RegisID")).Text;
                    Code1 = ((Label)GdvStuRegis.Rows[i].FindControl("dte")).Text;
                }
                z = Code + "," + Code1;
            }
        }
        return z;
    }
    private string getassigngrid1()
    {
        String Code = "", Code1 = "", Code2 = "", Code3 = "", Code4 = "", Code5 = "", z = "";


        if (GdvStuRegis.Rows.Count > 0)
        {
            for (int i = 0; i < GdvStuRegis.Rows.Count; i++)
            {
                RadioButton Rdbtn1 = (RadioButton)GdvStuRegis.Rows[i].FindControl("Rdbtn1");
                if (Rdbtn1.Checked)
                {
                    Code = ((Label)GdvStuRegis.Rows[i].FindControl("RegisID")).Text;
                    Code1 = ((Label)GdvStuRegis.Rows[i].FindControl("dte")).Text;
                    Code2 = ((Label)GdvStuRegis.Rows[i].FindControl("name")).Text;
                    Code3 = ((Label)GdvStuRegis.Rows[i].FindControl("fname")).Text;
                    Code4 = ((Label)GdvStuRegis.Rows[i].FindControl("mobile")).Text;
                    Code5 = ((Label)GdvStuRegis.Rows[i].FindControl("email")).Text;
                }
                z = Code + "," + Code1 + "," + Code2 + "," + Code3 + "," + Code4 + "," + Code5;
            }
        }
        return z;
    }
    private void gdvquery(string cd, string dk)
    {

        if (cd == "------Search By-----")
        {
            BindGridz();
            TxtOpt.Text = string.Empty;

        }
        else if (dk == null || dk == String.Empty)
        {
            BindGridz();
        }
        else
        {
            DataSet ds2 = new DataSet("registration");
            DataTable dt2 = new DataTable();


            String h = TxtOpt.Text.ToString();
            h = h.Trim();

            ds2.ReadXml(Server.MapPath("~/students.xml"));
            dt2 = ds2.Tables[0];

            DataRow[] dr = dt2.Select(" " + cd + " ='" + h + "'");

            DataTable dt = dt2.Clone();

            foreach (DataRow row in dr)
            {
                dt.ImportRow(row);
            }

            GdvStuRegis.DataSource = dt;
            GdvStuRegis.DataBind();
            TxtOpt.ReadOnly = true;
            DdlSearch.Enabled = false;
            rst();
        }

    }
    private void rst()
    {
        BtnNxt.Visible = false;

        BtnRst.Visible = true;
        BtnNxt.Attributes.Add("Text", "Reset");
    }

    #endregion
}

   

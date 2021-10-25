using System;
using System.Data;
using System.IO;
using System.Data.SqlClient;
using System.Configuration;


using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class FrmReg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (IsPostBack)
        {
             
        }
       
    }


    protected void Save_Click(object sender, EventArgs e)
    {        
        DataSet ds2 = new DataSet("registration");
        DataTable dt = new DataTable();
        if (File.Exists(Server.MapPath("~/student.xml")))
        {
            ds2.ReadXml(Server.MapPath("~/student.xml"));
            dt = ds2.Tables[0];
        }
        else
        {
            dt.Columns.Add("RegisID", typeof(String));
            dt.Columns.Add("Date", typeof(String));
            dt.Columns.Add("Name", typeof(String));
            dt.Columns.Add("FName", typeof(String));
            dt.Columns.Add("Mobile", typeof(String));
            dt.Columns.Add("Stream", typeof(String));
            ds2.Tables.Add(dt);
        }

        DataRow dr = dt.NewRow();

        dr[0] = (Txt11.Text);
        dr[1] = (Txt2.Text);
        dr[2] = (Txt22.Text);
        dr[3] = (Txt44.Text);
        dr[4] = (Txt4.Text);
        dr[5] = (Ddl1.SelectedValue);
        dt.Rows.Add(dr);

        Gdv1.DataSource = dt;
        Gdv1.DataBind();

        ds2.WriteXml(Server.MapPath("~/student.xml"));

        draw();

    }

    private void draw()
    {
        Txt11.Text = string.Empty;
        Txt2.Text = string.Empty;
        Txt22.Text = string.Empty;
        Txt44.Text = string.Empty;
        Txt4.Text = string.Empty;
        Ddl1.SelectedValue = string.Empty;
    }
}
using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Xml;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EduDetails : System.Web.UI.Page
{
    #region Global Variables


    #endregion

    #region Events

    protected void Page_Load(object sender, EventArgs e)
    {
       


       

        if (!IsPostBack)
        {
            string qryval = Request.QueryString["val1"].ToString();
            String g  = qryval.Split(',')[0];
            TxtRegNo.Text = g;
            TxtRegDt.Text = qryval.Split(',')[1];
            TxtName.Text = qryval.Split(',')[2];
            TxtFname.Text = qryval.Split(',')[3];
            TxtMob.Text = qryval.Split(',')[4];
            TxtEmail.Text = qryval.Split(',')[5];

            alert.Visible = false;

        }

    }

    public void Addnewrow(Object Sender, EventArgs e)
    {

        kemp();
     
    }
    protected void Gdv2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int index = Convert.ToInt32(e.RowIndex);
        DataSet ds = new DataSet();
        ds.ReadXml(Server.MapPath("~/stu1.xml"));
        ds.Tables[0].Rows.RemoveAt(e.RowIndex);
        ds.WriteXml(Server.MapPath("~/stu1.xml"));
        GdvLstEdu.DataSource = ds;
        GdvLstEdu.DataBind();
       

    }
    protected void Ddl11_SelectedIndexChanged(object sender, EventArgs e)
    {
        String cd = "";
        cd = DdlDgre.SelectedValue.ToString();
      

        if (cd == "Matriculation")
        {
           DdlSbDgre.ClearSelection();
           DdlSbDgre.Items.Clear();
           DdlSbDgre.Items.Add(new ListItem("-Select-"));    //("-Select-", "0"));
           DdlSbDgre.Items.Add(new ListItem("Matriculation"));
           DdlSbDgre.Items.Add(new ListItem("Others"));
          
        }
        else if (cd == "Intermediate")
        {

            DdlSbDgre.ClearSelection();
            DdlSbDgre.Items.Clear();
            DdlSbDgre.Items.Add(new ListItem("-Select-"));
            DdlSbDgre.Items.Add(new ListItem("I.A"));
            DdlSbDgre.Items.Add(new ListItem("I.Sc"));
            DdlSbDgre.Items.Add(new ListItem("I.Com"));
            DdlSbDgre.Items.Add(new ListItem("Others"));
        }
        else if (cd == "Graduation")
        {
            DdlSbDgre.ClearSelection();
            DdlSbDgre.Items.Clear();
            DdlSbDgre.Items.Add(new ListItem("-Select-"));
            DdlSbDgre.Items.Add(new ListItem("B.A"));
            DdlSbDgre.Items.Add(new ListItem("B.Sc"));
            DdlSbDgre.Items.Add(new ListItem("B.Com"));
            DdlSbDgre.Items.Add(new ListItem("BBA"));
            DdlSbDgre.Items.Add(new ListItem("BCA"));
            DdlSbDgre.Items.Add(new ListItem("B.Sc(IT)"));
            DdlSbDgre.Items.Add(new ListItem("Others"));
        }
        else if (cd == "Post-Graduation")
        {
            DdlSbDgre.ClearSelection();
            DdlSbDgre.Items.Clear();
            DdlSbDgre.Items.Add(new ListItem("-Select-"));
            DdlSbDgre.Items.Add(new ListItem("M.A"));
            DdlSbDgre.Items.Add(new ListItem("M.Sc"));
            DdlSbDgre.Items.Add(new ListItem("M.Com"));
            DdlSbDgre.Items.Add(new ListItem("MBA"));
            DdlSbDgre.Items.Add(new ListItem("MCA"));
            DdlSbDgre.Items.Add(new ListItem("M.Sc(IT)"));
            DdlSbDgre.Items.Add(new ListItem("Others"));
        }
        else if (cd == "-Select-")
        {
            DdlSbDgre.ClearSelection();
            DdlSbDgre.Items.Clear();
            DdlSbDgre.Items.Add(new ListItem("-Select-"));
            alert.Visible = true;
        }
    }

        #endregion

    #region Methods


    private void draw()
    {
        DdlDgre.ClearSelection();
        DdlSbDgre.ClearSelection();
        TxtPrcnt.Text = string.Empty;
        DdlYop.ClearSelection();
        TxtUniv.Text = string.Empty;
        TxtRegNo.Text = string.Empty;
        TxtRegDt.Text = string.Empty;
        TxtName.Text = string.Empty;
        TxtFname.Text = string.Empty;
        TxtMob.Text = string.Empty;
        TxtEmail.Text = string.Empty;
    }

    public void kemp()
    {
        DataSet ds2 = new DataSet("education");
        DataTable dtk = new DataTable();


        if (File.Exists(Server.MapPath("~/stu1.xml")))
        {
            ds2.ReadXml(Server.MapPath("~/stu1.xml"));
            dtk = ds2.Tables[0];

        }

        else
        {
            dtk.Columns.Add("Degree", typeof(String));
            dtk.Columns.Add("Stream", typeof(String));
            dtk.Columns.Add("Marks(%)", typeof(String));
            dtk.Columns.Add("YearOfPassing", typeof(String));
            dtk.Columns.Add("University", typeof(String));
            ds2.Tables.Add(dtk);
        }
        DataRow drs = dtk.NewRow();

        drs[0] = (DdlDgre.SelectedValue);
        drs[1] = (DdlSbDgre.SelectedValue);
        drs[2] = (TxtPrcnt.Text);
        drs[3] = (DdlYop.SelectedValue);
        drs[4] = (TxtUniv.Text);

        dtk.Rows.Add(drs);

        GdvLstEdu.DataSource = dtk;
        GdvLstEdu.DataBind();

        dtk.WriteXml(Server.MapPath("~/stu1.xml"));

        draw();
    }



    #endregion
 }
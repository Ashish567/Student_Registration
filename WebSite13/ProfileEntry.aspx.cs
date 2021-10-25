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

public partial class Frmadmissionentry2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            
        }
        CheckBox1.CheckedChanged += new EventHandler(this.Check_Clicked);
    }
    void Check_Clicked(Object sender, EventArgs e)
    {

        // Calculate the subtotal and display the result in currency format.
        // Include tax if the check box is selected.
        // Message.Text = CalculateTotal(checkbox1.Checked).ToString("c");
        string aa = CheckBox1.Checked.ToString();
        Txt111.Text = Txt16.Text;
        Txt112.Text = Txt17.Text;
        Txt113.Text = Txt18.Text;
        Txt114.Text = Txt19.Text;
        Ddl112.SelectedValue = Ddl111.SelectedValue;
        Txt116.Text = Txt21.Text;
        Txt117.Text = Txt22.Text;
        Txt118.Text = Txt23.Text;


    }

    public void Addnewrow(Object Sender, EventArgs e)
    {
        DataSet ds2 = new DataSet("ProfileEntry");
        DataTable dt = new DataTable();
        DataTable dt1 = new DataTable();
        DataTable dt1l = new DataTable();

        if (File.Exists(Server.MapPath("~/Profile.xml")))
        {
            ds2.ReadXml(Server.MapPath("~/Profile.xml"));
            dt = ds2.Tables[0];
            dt1 = ds2.Tables[1];
            dt1l = ds2.Tables[2];
        }
        else
        {

            dt.Columns.Add("RegistrationId", typeof(String));
            dt.Columns.Add("RegistrationDate", typeof(String));
            dt.Columns.Add("AdmissionId", typeof(String));
            dt.Columns.Add("AdmissionDate", typeof(String));
            dt.Columns.Add("Name", typeof(String));
            dt.Columns.Add("Father'sName", typeof(String));
            dt.Columns.Add("DateOfBirth", typeof(String));
            dt.Columns.Add("EmailId", typeof(String));
            dt.Columns.Add("Gender", typeof(String));
            dt.Columns.Add("BloodGroup", typeof(String));
            ds2.Tables.Add(dt);


            dt1.Columns.Add("BuildingNo", typeof(String));
            dt1.Columns.Add("Gully/StreetNo", typeof(String));
            dt1.Columns.Add("Mohalla/Village", typeof(String));
            dt1.Columns.Add("AdmissionDate", typeof(String));
            dt1.Columns.Add("PoliceStation", typeof(String));
            dt1.Columns.Add("State", typeof(String));
            dt1.Columns.Add("District", typeof(String));
            dt1.Columns.Add("PIN", typeof(String));
            dt1.Columns.Add("MobileNo", typeof(String));
            ds2.Tables.Add(dt1);


            dt1l.Columns.Add("BuildingNo", typeof(String));
            dt1l.Columns.Add("Gully/StreetNo", typeof(String));
            dt1l.Columns.Add("Mohalla/Village", typeof(String));
            dt1l.Columns.Add("AdmissionDate", typeof(String));
            dt1l.Columns.Add("PoliceStation", typeof(String));
            dt1l.Columns.Add("State", typeof(String));
            dt1l.Columns.Add("District", typeof(String));
            dt1l.Columns.Add("PIN", typeof(String));
            dt1l.Columns.Add("MobileNo", typeof(String));
            ds2.Tables.Add(dt1l);

        }







        DataRow dr = dt.NewRow();
        dr[0] = (Txt1.Text);
        dr[1] = (Txt2.Text);
        dr[2] = (Txt3.Text);
        dr[3] = (Txt4.Text);
        dr[4] = (Txt5.Text);
        dr[5] = (Txt99.Text);
        dr[6] = (Txt7.Text);
        dr[7] = (Txt8.Text);
        dr[8] = (Rdbtn1.SelectedItem);
        dr[9] = (Ddl1.SelectedValue);



        dt.Rows.Add(dr);

        ds2.Merge(dt);





        DataRow drp = dt1.NewRow();
        drp[0] = (Txt16.Text);
        drp[1] = (Txt17.Text);
        drp[2] = (Txt18.Text);
        drp[3] = (Txt19.Text);
        drp[4] = (Ddl111.SelectedValue);
        drp[5] = (Txt21.Text);
        drp[6] = (Txt22.Text);
        drp[7] = (Txt23.Text);

        dt1.Rows.Add(drp);

        ds2.Merge(dt1);







        DataRow drpk = dt1l.NewRow();
        drpk[0] = (Txt111.Text);
        drpk[1] = (Txt112.Text);
        drpk[2] = (Txt113.Text);
        drpk[3] = (Txt114.Text);
        drpk[4] = (Ddl112.SelectedValue);
        drpk[5] = (Txt116.Text);
        drpk[6] = (Txt117.Text);
        drpk[7] = (Txt118.Text);

        dt1l.Rows.Add(drpk);

        ds2.Merge(dt1l);





        ds2.WriteXml(Server.MapPath("~/Profile.xml"));

        Reset_Click();

    }

    private void Reset_Click()
    {

        Txt1.Text = string.Empty;
        Txt2.Text = string.Empty;
        Txt3.Text = string.Empty;
        Txt4.Text = string.Empty;
        Txt5.Text = string.Empty;
        Txt99.Text = string.Empty;
        Txt7.Text = string.Empty;
        Txt8.Text = string.Empty;
        //Rdbtn1.SelectedItem = string.;
        Ddl1.SelectedValue = string.Empty;
        Txt16.Text = string.Empty;
        Txt17.Text = string.Empty;
        Txt18.Text = string.Empty;
        Txt19.Text = string.Empty;
        Ddl111.SelectedValue = string.Empty;
        Txt21.Text = string.Empty;
        Txt22.Text = string.Empty;
        Txt23.Text = string.Empty;
        Txt111.Text = string.Empty;
        Txt112.Text = string.Empty;
        Txt113.Text = string.Empty;
        Txt114.Text = string.Empty;
        Ddl112.SelectedValue = string.Empty;
        Txt116.Text = string.Empty;
        Txt117.Text = string.Empty;
        Txt118.Text = string.Empty;
    }







    //Actuall i GOOGLED AND COPIED THE CODE WRITTEN BELOW.
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        System.IO.Stream fs = FileUpload1.PostedFile.InputStream;
        System.IO.BinaryReader br = new System.IO.BinaryReader(fs);
        Byte[] bytes = br.ReadBytes((Int32)fs.Length);
        string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
        Image1.ImageUrl = "data:image/png;base64," + base64String;
        Image1.Visible = true;
    }

}
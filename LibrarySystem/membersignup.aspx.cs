using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibrarySystem
{
    public partial class signup : System.Web.UI.Page
    {
        //This is important to make connection with DB (ConnectionString)
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //----------signup button click event----------//
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkMemberExist())
            {
                //Response.Write("<script>alert('Member ID already exist. Try different ID.');</script>");
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Author with this ID already exist. Use different ID')", true);
                string script = "alert('Member ID already exist. Try different ID.')";
                Page.ClientScript.RegisterClientScriptBlock(GetType(),
                    "myErrorKey", script, true);

            }
            else
            {
                signUpNewMember();
            }
        }

        //----------user define methods----------//

        //(F1) This function will tell if the member id already exist or not
        bool checkMemberExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                //to check if the connection is open with database or not
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                //command to check if the member id already exist
                SqlCommand cmd = new SqlCommand("SELECT * from member_details_tbl where member_id=' " +TextBox8.Text.Trim()+ " ';", con);

                //this is disconnected architecture concept of DBMS
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if(dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
                //till this

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");
                return false;
            }
        }

        //(F2) This function will insert data/values in DB
        void signUpNewMember()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                //to check if the connection is open with database or not
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                //Inserting values/data in DB
                SqlCommand cmd = new SqlCommand("INSERT INTO member_details_tbl(member_id, password, full_name, dob, contact_no, email, state, city, pincode, address, account_status) values(@member_id, @password, @full_name, @dob, @contact_no, @email, @state, @city, @pincode, @address, @account_status)", con);

                //getting value from front-end
                cmd.Parameters.AddWithValue("@member_id", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@full_name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@address", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status", "pending");

                //this query will execute the code for inserting values in DB
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('SignUp Successful!');</script>");
                Response.Redirect("memberlogin.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");
            }
        }

    }
}
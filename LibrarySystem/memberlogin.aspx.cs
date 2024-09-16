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
    public partial class userlogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //----------user login----------
        protected void Button1_Click(object sender, EventArgs e)
        {
            try 
            {
                //creating connection object
                SqlConnection con = new SqlConnection(strcon);

                //to check if the connection is open with database or not
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                //command to check if the member id exist
                SqlCommand cmd = new SqlCommand("select * from member_details_tbl where member_id='"+TextBox1.Text.Trim()+"' AND password='"+TextBox2.Text.Trim()+"' ", con);

                //this is connected architecture
                SqlDataReader dr = cmd.ExecuteReader();
                if(dr.HasRows)
                {
                    while(dr.Read())
                    {
                        //printing user name
                        Response.Write("<script>alert('Login Successful');</script>");

                        Session["username"] = dr.GetValue(0).ToString();
                        Session["fullname"] = dr.GetValue(2).ToString();
                        Session["role"] = "member";
                        Session["status"] = dr.GetValue(10).ToString();
                    }
                    Response.Redirect("memberprofile.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }
            }
            catch (Exception ex)
            {

            }
            //Response.Write("<script>alert('Login Successful.');</script>");
        }

        //----------user defined function----------
    }
}
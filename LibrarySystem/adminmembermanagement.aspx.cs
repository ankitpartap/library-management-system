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
    public partial class adminmembermanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        //Go button
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            getMemberByID();
        }

        //Active button
        protected void LinkButtonB1_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("active");
        }

        //Pending Button
        protected void LinkButtonB2_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("pending");
        }

        //Deactive Button
        protected void LinkButtonB3_Click(object sender, EventArgs e)
        {
            updateMemberStatusByID("deactive");
        }

        // Delete Button
        protected void Button1_Click(object sender, EventArgs e)
        {
            deleteMember();
        }

        //user defined function

        //F1
        void getMemberByID()
        {
            try
            {
                //creating connection object
                SqlConnection con = new SqlConnection(strcon);

                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                //command to check if the member id exist
                SqlCommand cmd = new SqlCommand("select * from member_details_tbl where member_id= '"+ TextBox1.Text.Trim() +"' ", con);

                //this is connected architecture
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox2.Text= dr.GetValue(2).ToString();
                        TextBox3.Text= dr.GetValue(10).ToString();
                        TextBox4.Text= dr.GetValue(3).ToString();
                        TextBox5.Text= dr.GetValue(4).ToString();
                        TextBox6.Text= dr.GetValue(5).ToString();
                        TextBox7.Text= dr.GetValue(6).ToString();
                        TextBox8.Text= dr.GetValue(7).ToString();
                        TextBox9.Text= dr.GetValue(8).ToString();
                        TextBox10.Text= dr.GetValue(9).ToString();   
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        //F2
        void updateMemberStatusByID(string status)
        {
            //if (checkMemberExist())
            //{
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
                    SqlCommand cmd = new SqlCommand("UPDATE member_details_tbl SET account_status='" + status + "' WHERE member_id='" + TextBox1.Text.Trim() + "' ", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    Response.Write("<script>alert('Member status Updated')</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            //}
            //else
            //{
            //    Response.Write("<script>alert('Invalid Member ID')</script>");
            //}
            
        }

        //F3
        void deleteMember()
        {
            //if (checkMemberExist())
            //{
                try
                {
                    SqlConnection con = new SqlConnection(strcon);

                    //to check if the connection is open with database or not
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    // Inserting values/data in DB
                    SqlCommand cmd = new SqlCommand("DELETE from member_details_tbl WHERE member_id ='" + TextBox1.Text.Trim() + "' ", con);

                    //this query will execute the code for inserting values in DB
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Member deleted successfully');</script>");
                    //ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript:alt1(); ", true);
                    clearFrom();
                    GridView1.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert(' " + ex.Message + " ');</script>");
                }
            //}
            //else
            //{
              //  Response.Write("<script>alert('Invalid Member ID')</script>");
            //}
            
        }

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

                //command to check if the author id already exist
                SqlCommand cmd = new SqlCommand("SELECT * from member_details_tbl where member_id=' " + TextBox1.Text.Trim() + " ';", con);

                //this is disconnected architecture concept of DBMS
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                //dataadapter is adapting the database from the table

                //this will hold the table in object 'da'
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
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

        //F4
        void clearFrom()
        {
            TextBox1.Text = "";
            TextBox2.Text = ""; 
            TextBox3.Text = ""; 
            TextBox4.Text = ""; 
            TextBox5.Text = ""; 
            TextBox6.Text = ""; 
            TextBox7.Text = ""; 
            TextBox8.Text = ""; 
            TextBox9.Text = ""; 
            TextBox10.Text = ""; 
        }

    }
}
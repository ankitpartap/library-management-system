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
    public partial class adminpublishermanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        //----------add button----------
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkPublisherExist())
            {
                Response.Write("<script>alert('Publisher with this ID already exist. Use different ID');</script>");
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Author with this ID already exist. Use different ID')", true);
            }
            else
            {
                addNewPublisher();
            }
        }

        //----------update button----------
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkPublisherExist())
            {
                
                updatePublisher();
                //Response.Write("<script>alert('Author ID deoes not exist. Use different ID');</script>");
                //ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript:alt2(); ", true);

            }
            else
            {
                Response.Write("<script>alert('Publisher ID deoes not exist. Use different ID');</script>");
                //updateAuthor();
            }
        }

        //----------delete button----------
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkPublisherExist())
            {
                deletePublisher();
                //Response.Write("<script>alert('Author ID deoes not exist. Use different ID');</script>");
                //ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript:alt2(); ", true);

            }
            else
            {
                Response.Write("<script>alert('Publisher ID deoes not exist. Use different ID');</script>");
            }
        }

        //----------Go button----------
        /* protected void Button4_Click(object sender, EventArgs e)
        {
            getPublisherByID();
        } */

        //----------user defined function----------

        //(F1) Checking if author with particular ID already exist or not
        bool checkPublisherExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                //to check if the connection is open with database or not
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                string tb_value = TextBox1.Text.Trim();
                //command to check if the author id already exist
                SqlCommand cmd = new SqlCommand("SELECT * from publisher_details_tbl where publisher_id=' "+ TextBox1.Text.Trim() + " ';", con);

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

        //(F2) adding new publisher
        void addNewPublisher()
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
                SqlCommand cmd = new SqlCommand("INSERT INTO publisher_details_tbl(publisher_id, publisher_name) values(@publisher_id, @publisher_name)", con);

                //getting value from front-end
                cmd.Parameters.AddWithValue("@publisher_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@publisher_name", TextBox2.Text.Trim());

                //this query will execute the code for inserting values in DB
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Publisher added successfully');</script>");
                clearFrom();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");
            }
        }

        //(F3) update function
        void updatePublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                //to check if the connection is open with database or not
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                // Inserting values/data in DB
                SqlCommand cmd = new SqlCommand("UPDATE publisher_details_tbl SET publisher_name = @publisher_name WHERE publisher_id ='" + TextBox1.Text.Trim() + "' ", con);

                //getting value from front-end
                cmd.Parameters.AddWithValue("@publisher_name", TextBox2.Text.Trim());

                //this query will execute the code for inserting values in DB
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Publisher updated successfully');</script>");
                //ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript:alt1(); ", true);
                clearFrom();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");
            }
        }

        //(F4) delete function
        void deletePublisher()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                //to check if the connection is open with database or not
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                // Inserting values/data in DB
                SqlCommand cmd = new SqlCommand("DELETE from publisher_details_tbl WHERE publisher_id ='" + TextBox1.Text.Trim() + "' ", con);

                //this query will execute the code for inserting values in DB
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Publisher deleted successfully');</script>");
                //ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript:alt1(); ", true);
                clearFrom();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");
            }
        }

        //(F5) 
        void getPublisherByID()
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
                SqlCommand cmd = new SqlCommand("select * from publisher_details_tbl where publisher_id=' " + TextBox1.Text.Trim() + " ';", con);

                //--this is disconnected architecture concept of DBMS
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                //--dataadapter is adapting the database from the table

                //--this will hold the table in object 'da'
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Publisher ID')</script>");
                }
                //--till this

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");

            }
        }

        void clearFrom()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}
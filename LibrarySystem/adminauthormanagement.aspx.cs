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
    public partial class adminauthormanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        //----------add button----------
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkAuthorExist())
            {
                Response.Write("<script>alert('Author with this ID already exist. Use different ID');</script>");
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Author with this ID already exist. Use different ID')", true);
            }
            else
            {
                addNewAuthor();
            }
        }

        //----------update button----------
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkAuthorExist())
            {
                updateAuthor();
                //Response.Write("<script>alert('Author ID deoes not exist. Use different ID');</script>");
                //ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript:alt2(); ", true);

            }
            else
            {
                Response.Write("<script>alert('Author ID deoes not exist. Use different ID');</script>");
                //updateAuthor();
            }
        }

        //----------delete button----------
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkAuthorExist())
            {
                deleteAuthor();
                //Response.Write("<script>alert('Author ID deoes not exist. Use different ID');</script>");
                //ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript:alt2(); ", true);

            }
            else
            {
                Response.Write("<script>alert('Author ID deoes not exist. Use different ID');</script>");
            }
        }

        //----------Go button----------
        //protected void Button4_Click(object sender, EventArgs e)
       // {
         //   getAuthorByID();
        //}

        //----------user defined function----------

        //(F1) Checking if author with particular ID already exist or not
        bool checkAuthorExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);

                //to check if the connection is open with database or not
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                //Response.Write("<script>Console.log('"+TextBox1+"')</script>");
                //command to check if the author id already exist
                SqlCommand cmd = new SqlCommand("SELECT * from author_details_tbl where author_id='" + TextBox1.Text.Trim() + "';", con);

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

        //(F2) adding new author
        void addNewAuthor()
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
                SqlCommand cmd = new SqlCommand("INSERT INTO author_details_tbl(author_id, author_name) values(@author_id, @author_name)", con);

                //getting value from front-end
                cmd.Parameters.AddWithValue("@author_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@author_name", TextBox2.Text.Trim());

                //this query will execute the code for inserting values in DB
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author added successfully');</script>");
                clearFrom();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert(' " + ex.Message + " ');</script>");
            }
        }

        //(F3) update function
        void updateAuthor()
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
                SqlCommand cmd = new SqlCommand("UPDATE author_details_tbl SET author_name = @author_name WHERE author_id ='" + TextBox1.Text.Trim() + "' ", con);

                //getting value from front-end
                cmd.Parameters.AddWithValue("@author_name", TextBox2.Text.Trim());

                //this query will execute the code for inserting values in DB
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author updated successfully');</script>");
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
        void deleteAuthor()
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
                SqlCommand cmd = new SqlCommand("DELETE from author_details_tbl WHERE author_id ='" + TextBox1.Text.Trim() + "' ", con);

                //this query will execute the code for inserting values in DB
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author deleted successfully');</script>");
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
        void getAuthorByID()
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
                SqlCommand cmd = new SqlCommand("SELECT * from author_details_tbl where author_id=' " + TextBox1.Text.Trim() + " ';", con);

                //this is disconnected architecture concept of DBMS
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                //dataadapter is adapting the database from the table

                //this will hold the table in object 'da'
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('invalid Author ID')</script>");
                }
                //till this
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
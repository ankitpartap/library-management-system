using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibrarySystem
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //when no one is logged in (normal state)
                if (Session["role"].Equals(""))
                {
                    //navbar or member links (show & hidden)
                    LinkButton5.Visible = true; //member login link button
                    LinkButton6.Visible = true; //signup link button

                    LinkButton7.Visible = false; //logout link button
                    LinkButton8.Visible = false; //hello user link button

                    //footer or admin links (show & hidden)
                    LinkButton9.Visible = true; //admin login link button
                    LinkButton10.Visible = false; //author management link button
                    //LinkButton11.Visible = false; //publisher management link button
                    LinkButton12.Visible = false; //book inventory link button
                    LinkButton13.Visible = false; //book issuing link button
                    LinkButton14.Visible = false; //member management button
                }

                //when user logged in
                else if (Session["role"].Equals("member"))
                {
                    //navbar or member links (show & hidden)
                    LinkButton5.Visible = false; //member login link button
                    LinkButton6.Visible = false; //signup link button

                    LinkButton7.Visible = true; //logout link button
                    LinkButton8.Visible = true; //hello user link button

                    //printing the name of the user after he/she logged in
                    LinkButton8.Text = "Hello " + Session["fullname"].ToString();


                    //footer or admin links (show & hidden)
                    LinkButton9.Visible = true; //admin login link button
                    LinkButton10.Visible = false; //author management link button
                    //LinkButton11.Visible = false; //publisher management link button
                    LinkButton12.Visible = false; //book inventory link button
                    LinkButton13.Visible = false; //book issuing link button
                    LinkButton14.Visible = false; //member management button
                }
                
                //when admin logs in
                else if (Session["role"].Equals("admin"))
                {
                    //navbar or member links (show & hidden)
                    LinkButton5.Visible = false; //member login link button
                    LinkButton6.Visible = false; //signup link button

                    LinkButton7.Visible = true; //logout link button
                    LinkButton8.Visible = true; //hello user link button
                    LinkButton8.Text = "Hello Admin!";


                    //footer or admin links (show & hidden)
                    LinkButton9.Visible = false; //admin login link button
                    LinkButton10.Visible = true; //author management link button
                    //LinkButton11.Visible = true; //publisher management link button
                    LinkButton12.Visible = true; //book inventory link button
                    LinkButton13.Visible = true; //book issuing link button
                    LinkButton14.Visible = true; //member management button
                }
                else
                {

                }
            }
            catch (Exception ex)
            {

            }
        }

        //view books button
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewbooks.aspx");
        }

        //member login button
        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("memberlogin.aspx");
        }

        //member signup button
        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("membersignup.aspx");
        }

        //member profile
        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("memberprofile.aspx");
        }

        //admin login button
        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        //author management button
        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminauthormanagement.aspx");
        }

        //publisher management button
        //protected void LinkButton11_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("adminpublishermanagement.aspx");
        //}

        //book inventory button
        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookinventory.aspx");
        }

        //book issuing button
        protected void LinkButton13_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookissuing.aspx");
        }

        //member management button
        protected void LinkButton14_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminmembermanagement.aspx");
        }

        //logout button
        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            //navbar or member links (show & hidden)
            LinkButton5.Visible = true; //member login link button
            LinkButton6.Visible = true; //signup link button

            LinkButton7.Visible = false; //logout link button
            LinkButton8.Visible = false; //hello user link button

            //footer or admin links (show & hidden)
            LinkButton9.Visible = true; //admin login link button
            LinkButton10.Visible = false; //author management link button
            //LinkButton11.Visible = false; //publisher management link button
            LinkButton12.Visible = false; //book inventory link button
            LinkButton13.Visible = false; //book issuing link button
            LinkButton14.Visible = false; //member management button

            Response.Redirect("homepage.aspx");
        }
    }
}
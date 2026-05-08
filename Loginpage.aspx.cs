using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_managemant_Amar
{
    public partial class Loginpage : System.Web.UI.Page
    {
        DBconnect dBconnect = new DBconnect();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //for member  
            MySqlCommand cmd = new MySqlCommand("sp_UserLogin", dBconnect.GetCon());
            dBconnect.OpenCon();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("p_member_id", txtMemberId.Text.Trim());
            cmd.Parameters.AddWithValue("p_password", Txtpassword.Text.Trim());

            // THE CRITICAL FIX: Open before ex
            MySqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    // This sets the Session for your Master Page label
                    Session["username"] = dr["member_id"].ToString();
                    Session["member_id"] = dr["member_id"].ToString();
                    Session["full_name"] = dr["full_name"].ToString();
                    Session["password"] = dr["password"].ToString();
                    Session["role"] = "user";

                }

                Response.Redirect("~/Userscreen/UserHome.aspx");

            }
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Error','wrong Credentials ...try again','error')", true);
        }

        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
            //Admin login button

            MySqlCommand cmd = new MySqlCommand("sp_adminlogin", dBconnect.GetCon());
            dBconnect.OpenCon();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("p_username", txtadminID.Text.Trim());
            cmd.Parameters.AddWithValue("p_password", txtAdminpass.Text.Trim());

            // THE CRITICAL FIX: Open before ex
            MySqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    // This sets the Session for your Master Page label

                    Session["Adminusername"] = dr["username"].ToString();
                    Session["Adminpassword"] = dr["password"].ToString();
                    Session["Adminfull_name"] = dr["full_name"].ToString();
                    Session["role"] = "Admin";

                }

                Response.Redirect("~/Admin/AdminHome.aspx");

            }
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Error','wrong Credentials ...try again','error')", true);
        }


    }
}


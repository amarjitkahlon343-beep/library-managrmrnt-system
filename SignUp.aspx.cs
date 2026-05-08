using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
namespace Library_managemant_Amar
{
    public partial class SignUp : System.Web.UI.Page
    {
        DBconnect dBconnect = new DBconnect();
        MySqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                AutoGenerate();
            }
        }
       
        protected void btnSingUp_Click(object sender, EventArgs e)
        {
            //How to insert data or sigup button
            if(checkDuplicateMemberExist())
            {
                Response.Write("<script>alert('Member already exist with this Id and email');</script>");
            }
            else 
            {
                createAccount();
            
            }
        }
        private void createAccount()
        {
            try
            {
                dBconnect.OpenCon();

                cmd = new MySqlCommand("sp_InsertSignUp", dBconnect.GetCon());
                cmd.CommandType = CommandType.StoredProcedure;

                // Existing Parameters
                cmd.Parameters.AddWithValue("p_member_id", txtMemberId.Text.Trim());
                cmd.Parameters.AddWithValue("p_full_name", Txtfullname.Text.Trim());
                cmd.Parameters.AddWithValue("p_dob", TxtDOB.Text.Trim());
                cmd.Parameters.AddWithValue("p_contact_no", Txtcontactno.Text.Trim());
                cmd.Parameters.AddWithValue("p_email", txtEmail.Text.Trim());
                cmd.Parameters.AddWithValue("p_state", ddlState.SelectedItem.Text);
                cmd.Parameters.AddWithValue("p_city", TxtCity.Text.Trim());
                cmd.Parameters.AddWithValue("p_pincode", Txtpincode.Text.Trim());
                cmd.Parameters.AddWithValue("p_full_address", Txtadress.Text.Trim());
                cmd.Parameters.AddWithValue("p_account_status", "pending");
                cmd.Parameters.AddWithValue("p_password", Txtpassword.Text.Trim());

                // ADDED THIS LINE: Pass the selected role (Student or Employee) to the procedure
                cmd.Parameters.AddWithValue("p_account_type", rblRole.SelectedValue);

                cmd.ExecuteNonQuery();

                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Success','Account created successfully','success')", true);

                ClearControls();
                AutoGenerate();
            }
            catch (Exception )
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Error','Error! record not inserted.. try again','error')", true);
            }
            finally
            {
                dBconnect.CloseCon();
            }
        }

        protected bool checkDuplicateMemberExist()
        {
            try
            {
                dBconnect.OpenCon();

                cmd = new MySqlCommand(
                    "sp_CheckMemberDuplication",
                    dBconnect.GetCon());

                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("p_member_id", txtMemberId.Text.Trim());
                cmd.Parameters.AddWithValue("p_email", txtEmail.Text.Trim());

                object result = cmd.ExecuteScalar();

                return result != null;
            }
            finally
            {
                dBconnect.CloseCon();
            }
        }
        public void AutoGenerate()
        {
            try
            {
                dBconnect.OpenCon();

                MySqlCommand cmd = new MySqlCommand("sp_GetNextMemberId", dBconnect.GetCon());
                cmd.CommandType = CommandType.StoredProcedure;

                // Pass the current selection to the procedure
                cmd.Parameters.AddWithValue("p_account_type", rblRole.SelectedValue);

                object result = cmd.ExecuteScalar();

                int newId;
                if (result == null || result == DBNull.Value)
                {
                    // Set starting points if no records exist for that role
                    newId = (rblRole.SelectedValue == "Employee") ? 5000 : 1001;
                }
                else
                {
                    // Increment the last found ID
                    newId = Convert.ToInt32(result) + 1;
                }

                txtMemberId.Text = newId.ToString();
                txtMemberId.ReadOnly = true;
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('AutoGenerate Error: " + ex.Message + "');</script>");
            }
            finally
            {
                dBconnect.CloseCon();
            }
        }



        private void ClearControls()
        {
            txtMemberId.Text = "";
            Txtfullname.Text = "";
            TxtDOB.Text = "";
            Txtcontactno.Text = "";
            txtEmail.Text = "";
            TxtCity.Text = "";
            Txtpincode.Text = "";
            Txtadress.Text = "";
            Txtpassword.Text = "";

            ddlState.SelectedIndex = 0;   // Reset dropdown
        }
       protected void rblRole_SelectedIndexChanged1(object sender, EventArgs e)
        {
            AutoGenerate();

            if (rblRole.SelectedValue == "Employee")
            {
                txtMemberId.Attributes["placeholder"] = "Employee ID will be generated";
            }
            else
            {
                txtMemberId.Attributes["placeholder"] = "Student ID will be generated";
            }
        }
    }
    
}
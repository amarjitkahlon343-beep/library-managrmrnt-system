using Library_managemant_Amar;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_management_Amar
{
    public partial class forgetpassword : System.Web.UI.Page
    {
        DBconnect dBconnect = new DBconnect();
        MySqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClearControls();
            }
        }
        protected void btnUpdatePass_Click(object sender, EventArgs e)
        {
            // 1. Collect inputs
            string memberId = txtMemberID.Text.Trim();
            string contactNo = txtcontact.Text.Trim();
            string email = txtEmail.Text.Trim();
            string newPass = txtNewPass.Text.Trim();

            // 2. Validation
            if (string.IsNullOrEmpty(memberId) || string.IsNullOrEmpty(contactNo) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(newPass))
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alert", "swal('Error', 'Please fill in all fields', 'warning');", true);
                return;
            }

            try
            {
                using (MySqlConnection con = dBconnect.GetCon())
                {
                    if (con.State == ConnectionState.Closed) con.Open();

                    using (MySqlCommand cmd = new MySqlCommand("sp_ChangeMemberPassword", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        // 3. Mapping parameters to the Procedure
                        cmd.Parameters.AddWithValue("p_MemberID", memberId);
                        cmd.Parameters.AddWithValue("p_ContactNo", contactNo);
                        cmd.Parameters.AddWithValue("p_Email", email);
                        cmd.Parameters.AddWithValue("p_NewPass", newPass);

                        // Execute and get the ROW_COUNT() result
                        int result = Convert.ToInt32(cmd.ExecuteScalar());

                        if (result > 0)
                        {
                            // Success logic
                            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Success',' Password change successfully','success')", true);
                        }
                        else
                        {
                            // If no row was updated, the verification details were wrong
                            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Error','Verification failed. ID, Contact, or Email is incorrect....try again','error')", true);
                        }
                    }
                    
                }
            } 
            catch
            {
                // Handle database errors
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "swal('Error','Verification failed. ID, Contact, or Email is incorrect....try again','error')", true);
            }
        }
        private void ClearControls()
        {
            txtMemberID.Text = "";
            txtcontact.Text = "";
            txtFullName.Text = "";
            txtEmail.Text = "";
            txtNewPass.Text = ""; // Don't forget this one!
            if (lblStatus != null) lblStatus.Visible = false;
        }
    }
    
}




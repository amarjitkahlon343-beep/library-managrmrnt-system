<%@ Page Title="forget password " Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="forgetpassword.aspx.cs" Inherits="Library_management_Amar.forgetpassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  <div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-5">
            <div class="card border-0 shadow-lg">
                <div class="card-header bg-primary text-white text-center">
                    <h4 class="mb-0">Reset Member Password</h4>
                </div>
                <div class="card-body p-4">
                    
                    <div class="mb-3">
                        <label class="form-label font-weight-bold">Member ID</label>
                        <asp:TextBox ID="txtMemberID" runat="server" CssClass="form-control" placeholder="Enter Member ID"></asp:TextBox>
                    </div>

                    <div class="mb-3">
    <label class="form-label font-weight-bold">Full Name</label>
    <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control"></asp:TextBox>
</div>
 <hr />
<div class="mb-3">
    <label class="form-label font-weight-bold">Email</label>
    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
</div>

                    <hr />

                    <div class="mb-3">
                        <label class="form-label">contact no</label>
                        <asp:TextBox ID="txtcontact" runat="server" CssClass="form-control" TextMode="Number" placeholder="1234567890"></asp:TextBox>
                    </div>

                    <div class="mb-3">
                        <label class="form-label text-success">New Password</label>
                        <asp:TextBox ID="txtNewPass" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter New Password"></asp:TextBox>
                    </div>

                    <div class="d-grid gap-2 mt-4">
                        <asp:Button ID="btnUpdatePass" runat="server" Text="Update Password" 
                            CssClass="btn btn-primary btn-lg" OnClick="btnUpdatePass_Click" />
                        <a href="Loginpage.aspx" class="btn btn-outline-secondary">Cancel / Back</a>
                    </div>

                    <div class="mt-3 text-center">
                        <asp:Label ID="lblStatus" runat="server" Visible="false" CssClass="alert d-block"></asp:Label>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>

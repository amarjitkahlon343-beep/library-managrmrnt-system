<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Library_managemant_Amar.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Sign Up</title>
             <meta charset="utf-8" />
<meta name="viewport" content="width-device, initial-scale=1" />
  <%--bottstrap css--%>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
  
  <%--Datatable css--%>
 <link href="bootstrap/css/dataTables.dataTables.min.css" rel="stylesheet" />
  <%--fontawesome css--%>
 <link href="fontawesome-free-7.1.0-web/css/all.css" rel="stylesheet" />
  <%--Jquery js--%>
 <script src="bootstrap/js/jquery-3.7.1.min.js"></script>
  <%--propper js--%>
    <script src="bootstrap/js/popper.min.js"></script>
  <%--bootstrap js--%>
 <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
 <%--sweetalert js--%> 
    <link href="SweetAlert/sweet%20alert/sweetalert.css" rel="stylesheet" />
    <script src="SweetAlert/sweet%20alert/sweetalert.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        
        
       <nav class="navbar navbar-expand-sm navbar-dark bg-primary">
       <a class="navbar-brand" href="default1.aspx">
           <img src="logo img/download (1).jpg" alt="logo" width="49" height="49" />LMS application</a>
<%--<button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
          <span class="navbar-toggler-icon"></span>
    </button>--%>
         <div class="collapse navbar-collapse" id="collapsibleNavbar">
           <ul class="navbar-nav">
               <li class="nav-item">
                   <a class="nav-link" href="default1.aspx"><b>Home</b></a>
               </li>
               <li class="nav-item">
                   <a class="nav-link" href="#"><b>library collection</b></a>
               </li>
               <li class="nav-item">
                   <a class="nav-link" href="#"><b>Gallery</b></a>
               </li>
               <li class="nav-item">
                   <a class="nav-link" href="#"><b>Contact us</b></a>
                   </li>
           </ul>
           </div>
                <%--navbar right icon--%>
          <div class="pmd-navbar-right-icon ml-auto">
        <%--  <a class="btn btn-sm btn-primary" href="SignUp.aspx">sign Up</a>--%>
          <a class="btn btn-sm btn-primary" href="Loginpage.aspx">sign In</a>
              </div>

         </nav>
                     <div class="jumbotron text-center alert alert-primary" style="margin-bottom: 0">
    <h1>Library management system</h1>
    <p>Building community.  Inspring readers. Expanding book access!</p>
</div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-2 border border-info">         
          <%--         <h2>Filter</h2>
            <h5> Category:</h5>
            <div class="fakeimg">Fake Image</div>
          <p>amar libary management pvt ltd.</p>
          <h3>Some Links</h3>--%>
           <p>Top Search. </p>
        <ul class="nav nav-pills flex-column">
        <li class="nav-item">
        <a class="nav-link active" href="#">Active</a>
           </li>
     <li class="nav-item">
     <a class="nav-link" href="#">Link</a>
      </li>
            <li class="nav-item">
   <a class="nav-link" href="#">Link</a>
     </li>
    <li class="nav-item">
<a class="nav-link disabled" href="#">Disabled</a>
        </li>
         </ul>
               <hr class="d-sm=none"/>
           </div>

                   
                    <div class="col-sm-10 border border-info"> 
            <%--Write your code here--%>
   <div class="container mt-5">
    <h3 class="text-center mb-4">Create New Account</h3>
       <div class="row justify-content-center mb-4">
    <div class="col-md-6 text-center">
        <div class="btn-group w-100" role="group" aria-label="Role Selection">
            <asp:RadioButtonList ID="rblRole" runat="server" 
                RepeatDirection="Horizontal" 
                CssClass="role-switch" 
                AutoPostBack="true" 
                OnSelectedIndexChanged="rblRole_SelectedIndexChanged1">
                <asp:ListItem Text="Student" Value="Student" Selected="True"></asp:ListItem>
                <asp:ListItem Text="Employee" Value="Employee"></asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </div>
</div>
    <div class="row g-3">

        <!-- Row 1 -->
        <div class="col-md-4">
            <label class="form-label">Member ID</label>
            <asp:TextBox ID="txtMemberId" CssClass="form-control"
                placeholder="Member Id" runat="server"></asp:TextBox>
        </div>

        <div class="col-md-4">
            <label class="form-label">Password</label>
            <asp:TextBox ID="Txtpassword" CssClass="form-control"
                placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                runat="server" ErrorMessage="* Enter Password"
                ControlToValidate="Txtpassword" ForeColor="Red"
                Display="Dynamic" />
        </div>

        <div class="col-md-4">
            <label class="form-label">Full Name</label>
            <asp:TextBox ID="Txtfullname" CssClass="form-control"
                placeholder="Full Name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                runat="server" ErrorMessage="* Enter Full Name"
                ControlToValidate="Txtfullname" ForeColor="Red"
                Display="Dynamic" />
        </div>

        <!-- Row 2 -->
        <div class="col-md-4">
            <label class="form-label">Date of Birth</label>
              <asp:TextBox ID="TxtDOB" CssClass="form-control"
       placeholder="DOB" TextMode="Date" runat="server"></asp:TextBox>

        </div>

        <div class="col-md-4">
            <label class="form-label">Email</label>
            <asp:TextBox ID="txtEmail" CssClass="form-control"
                placeholder="Email" TextMode="Email" runat="server"></asp:TextBox>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                runat="server" ErrorMessage="* Enter Email"
                ControlToValidate="txtEmail" ForeColor="Red"
                Display="Dynamic" />

            <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                runat="server" ErrorMessage="Invalid Email"
                ControlToValidate="txtEmail"
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ForeColor="Red" Display="Dynamic" />
        </div>

        <div class="col-md-4">
            <label class="form-label">Contact No</label>
              <asp:TextBox ID="Txtcontactno" CssClass="form-control"
       placeholder="ContactNo."  runat="server"></asp:TextBox>

        </div>

        <!-- Row 3 -->
        <div="col-md-4">
            <label class="form-label">State</label>
  <asp:DropDownList ID="ddlState" runat="server" CssClass="form-select">
    <asp:ListItem Text="-- Select State --" Value="0" />
    <asp:ListItem>Andhra Pradesh</asp:ListItem>
    <asp:ListItem>Arunachal Pradesh</asp:ListItem>
    <asp:ListItem>Assam</asp:ListItem>
    <asp:ListItem>Bihar</asp:ListItem>
    <asp:ListItem>Chhattisgarh</asp:ListItem>
    <asp:ListItem>Goa</asp:ListItem>
    <asp:ListItem>Gujarat</asp:ListItem>
    <asp:ListItem>Haryana</asp:ListItem>
    <asp:ListItem>Himachal Pradesh</asp:ListItem>
    <asp:ListItem>Jharkhand</asp:ListItem>
    <asp:ListItem>Karnataka</asp:ListItem>
    <asp:ListItem>Kerala</asp:ListItem>
    <asp:ListItem>Madhya Pradesh</asp:ListItem>
    <asp:ListItem>Maharashtra</asp:ListItem>
    <asp:ListItem>Manipur</asp:ListItem>
    <asp:ListItem>Meghalaya</asp:ListItem>
    <asp:ListItem>Mizoram</asp:ListItem>
    <asp:ListItem>Nagaland</asp:ListItem>
    <asp:ListItem>Odisha</asp:ListItem>
    <asp:ListItem>Punjab</asp:ListItem>
    <asp:ListItem>Rajasthan</asp:ListItem>
    <asp:ListItem>Sikkim</asp:ListItem>
    <asp:ListItem>Tamil Nadu</asp:ListItem>
    <asp:ListItem>Telangana</asp:ListItem>
    <asp:ListItem>Tripura</asp:ListItem>
    <asp:ListItem>Uttar Pradesh</asp:ListItem>
    <asp:ListItem>Uttarakhand</asp:ListItem>
    <asp:ListItem>West Bengal</asp:ListItem>
    <asp:ListItem>Andaman and Nicobar Islands</asp:ListItem>
    <asp:ListItem>Chandigarh</asp:ListItem>
    <asp:ListItem>Dadra and Nagar Haveli and Daman and Diu</asp:ListItem>
    <asp:ListItem>Delhi</asp:ListItem>
    <asp:ListItem>Jammu and Kashmir</asp:ListItem>
    <asp:ListItem>Ladakh</asp:ListItem>
    <asp:ListItem>Lakshadweep</asp:ListItem>
    <asp:ListItem>Puducherry</asp:ListItem>
</asp:DropDownList>
</div>
          <div class="col-md-4">
      <label class="form-label">City</label>
        <asp:TextBox ID="TxtCity" CssClass="form-control"
 placeholder="City"  runat="server"></asp:TextBox>

  </div>
          <div class="col-md-4">
      <label class="form-label">Pin Code</label>
        <asp:TextBox ID="Txtpincode" CssClass="form-control"
 placeholder="Pin code"  runat="server"></asp:TextBox>

  </div>
            <div class="col-md-4">
      <label class="form-label">Full Address</label>
        <asp:TextBox ID="Txtadress" CssClass="form-control"
 placeholder="Full Address"  runat="server"></asp:TextBox>

  </div>  

    <!-- Center Button -->
    <div class="text-center mt-4">
        <asp:Button ID="btnSignUp"
            CssClass="btn btn-success btn-lg px-5"
            runat="server"
            Text="Sign Up"
            OnClick="btnSingUp_Click" />
    </div>

    <!-- Back Link -->
    <div class="text-center mt-3">
        <a href="default1.aspx">&laquo; Back to home page</a>
    </div>
</div>

   </div>
</div>

            <%--design end--%>
        </div> 
            <br />
  <footer class="text-center bg-danger text-white" style="padding:6px 0; border:2px solid red">
    <p style="margin:0;">Footer</p>
</footer>
                <div class="container">
                    <div class="row">
           <div class="col-md-4">
           <div class="footer-pad">
          <h4>Heading1</h4>
           <ul class="list-unstyled">
            <li><a href="#"></a></li>
          <li><a href="#">Payment Center</a></li>
            <li><a href="#">News and updates</a></li>
               </ul>
          </div>
           </div>
          <div class="col-md-4">
           <div class="footer-pad">
          <h4>Heading1</h4>
           <ul class="list-unstyled">
            <li><a href="#"></a></li>
          <li><a href="#">website</a></li>
            <li><a href="#">Disclaimer</a></li>
               </ul>
               </div>
                </div>
        <div class="col-md-4 text-center">
    <h5>Follow Us</h5>
 <a href="#">
    <i class="fa-brands fa-facebook fa-lg"></i>
        Facebook
    </a>
</div>
                    <div class="row">
          <div class="col-12 border-dark">
    <p class="text-center mb-0"> &copy;  copyright-2025 Amar Library Pvt. Ltd. All rights reserved.</p>
</div>
</div>
                        </div>
                 </div>
                </div>


        
    </form>
</body>
</html>

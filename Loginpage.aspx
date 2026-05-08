<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loginpage.aspx.cs" Inherits="Library_managemant_Amar.Loginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Login page</title>
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


</head>
<body>
    <form id="form1" runat="server">
       
        <div>
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
          <a class="btn btn-sm btn-primary" href="SignUp.aspx">Sign Up</a>
          <%--<a class="btn btn-sm btn-primary" href="LOGIN PAGE.aspx">sign In</a>--%>
              </div>

         </nav>
            </div>
                     <div class="jumbotron text-center alert alert-primary" style="margin-bottom: 0">
    <h1>Library management system</h1>
    <p>Building community.  Inspring readers. Expanding book access!</p>
</div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-2 border border-info">         
             <%--      <h2>Filter</h2>
            <h5> Category:</h5>
            <div class="fakeimg">Fake Image</div>
          <p>amar libary management pvt ltd.</p>--%>
          <h3>Some Links</h3>
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
          <%--Login Screen--%> 
<div class="container mt-3">
  <h2>Login Panel</h2>
  <br/>

  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li class="nav-item" role="presentation">
      <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab">
         User Login 
      </button>
    </li>
    <li class="nav-item" role="presentation">
      <button class="nav-link" data-bs-toggle="tab" data-bs-target="#menu1" type="button" role="tab">
        Admin login
      </button>
    </li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div id="home" class="tab-pane fade show active p-3" role="tabpanel">
      <h3> Member Login</h3>
      <p></p>
        <%--Design login--%> 
        <div class="container"> 
            <div class="row">
                <div class="col-sem-6 mx-auto">
                    <div class="card">
                        <div class="card-body">
                      <div class="row">
                          <div class="col">
                              <div class="text-center">
                                  <img width="150" src="logo img/random user.png" />
                                  </div>
                              </div>
                          </div> 
                       <div class="row">
                           <div class="col">
                               <div class="text-center">
                                   <h3> Admin/User Login</h3>
                               </div>
                           </div>
                       </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                               
                        </div>
                        <div class="row">
                            <div class="col">
                               <label> Member id</label>
                                <div class="form-group">
                                <asp:TextBox ID="txtMemberId" CssClass="form-control" placeholder=" Member Id"   runat="server"></asp:TextBox>

                                </div> 
                                 <label> Password</label>
                                <div class="form-group">
                             <asp:TextBox ID="Txtpassword" CssClass="form-control" placeholder=" Password" Textmode="Password" runat="server"></asp:TextBox>
                               </div>
                          <div class="d-grid gap-2 mt-3">

                              <asp:Button ID="btnLogin" Cssclass="btn btn-success btn-lg btn-block"   runat="server" Text="Login" OnClick="btnLogin_Click" />
                            </div>
                           <div class="d-grid gap-2 mt-3">
                      <a href="SignUp.aspx" class="btn btn-info btn-lg text-center">
                       SIGNUP NOW
                         </a>
                            </div>
                                             <div class="d-grid gap-2 mt-3">
                       <a href="forgetpassword.aspx" class="btn btn-link text-center">
                        Forget password
                             </a>
                             </div>    
                              </div>
                    </div>
                    <div class="d-grid gap-2 mt-3">

                    <a href="default1.aspx"><< Back to home page</a></div>
                </div>
           </div>
        </div>
</div> 
            </div>

        <%--design endkk--%>
    </div>
      <%--Admin design star--%>
    <div id="menu1" class="tab-pane fade p-3" role="tabpanel">
      <h3>Admin Login</h3>
      <p></p>
        <%--Design--%> 
        <div class="container"> 
            <div class="row">
                <div class="col-sem-6 mx-auto">
                    <div class="card">
                        <div class="card-body">
                      <div class="row">
                          <div class="col">
                              <div class="text-center">
                                  <img width="150" src="logo img/random user.png" />
                                  </div>
                              </div>
                          </div> 
                       <div class="row">
                           <div class="col">
                               <div class="text-center">
                                   <h3> Admin Login</h3>
                               </div>
                           </div>
                       </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                               
                        </div>
                        <div class="row">
                            <div class="col">
                               <label> Admin id</label>
                                <div class="form-group">
                                <asp:TextBox ID="txtadminID" CssClass="form-control" placeholder=" Admin Id"   runat="server"></asp:TextBox>

                                </div> 
                                 <label> Password</label>
                                <div class="form-group">
                             <asp:TextBox ID="txtAdminpass" CssClass="form-control" placeholder=" Password" Textmode="Password" runat="server"></asp:TextBox>
                               </div>
                          <div class="d-grid gap-2 mt-3">

                              <asp:Button ID="btnAdminLogin" Cssclass="btn btn-success btn-lg btn-block"   runat="server" Text="AdminLogin" Onclick="btnAdminLogin_Click"/>
                            </div>
                           <div class="d-grid gap-2 mt-3">
                      <a href="SignUp.aspx" class="btn btn-info btn-lg text-center">
                       SIGNUP NOW
                         </a>
                            </div>
                            

                              </div>
                    </div>
                    <div class="d-grid gap-2 mt-3">

                    <a href="default1.aspx"><< Back to home page</a></div>
                </div>
           </div>
        </div>
</div> 
            </div>

    </div>
  </div>
</div>
<%--admin end--%>
    
           <%--Screen end--%> 
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

        </div>
                  
    </form>
</body>
</html>

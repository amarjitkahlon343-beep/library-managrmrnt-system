    <%@ Page Title=" Home page" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default1.aspx.cs" Inherits="Library_managemant_Amar.default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container">
        <div class="row">
            <div id="demo" class="carousel slide" data-bs-ride="carousel">

    <!-- Indicators -->
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
        <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
        <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
        <button type="button" data-bs-target="#demo" data-bs-slide-to="3"></button>
        <button type="button" data-bs-target="#demo" data-bs-slide-to="4"></button>
    </div>

    <!-- Slides -->
    <div class="carousel-inner">

        <div class="carousel-item active">
            <img src="https://images.unsplash.com/photo-1524995997946-a1c2e315a42f?auto=format&fit=crop&w=1200&q=80"
                 class="d-block w-100 carousel-img">
        </div>

        <div class="carousel-item">
            <img src="https://images.unsplash.com/photo-1512820790803-83ca734da794?auto=format&fit=crop&w=1200&q=80"
                 class="d-block w-100 carousel-img">
        </div>

        <div class="carousel-item">
            <img src="https://images.unsplash.com/photo-1507842217343-583bb7270b66?auto=format&fit=crop&w=1200&q=80"
                 class="d-block w-100 carousel-img">
        </div>

        <div class="carousel-item">
            <img src="https://images.unsplash.com/photo-1521587760476-6c12a4b040da?auto=format&fit=crop&w=1200&q=80"
                 class="d-block w-100 carousel-img">
        </div>

        <div class="carousel-item">
            <img src="https://images.unsplash.com/photo-1532012197267-da84d127e765?auto=format&fit=crop&w=1200&q=80"
                 class="d-block w-100 carousel-img">
        </div>

    </div>

    <!-- Controls -->
    <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
        <span class="carousel-control-prev-icon"></span>
    </button>

    <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
        <span class="carousel-control-next-icon"></span>
    </button>

</div>
        </div>
        <div class="row">
             <div class="col-sm-12">
                 <h2>TITLE HEADING</h2>
<h5>Title description, Dec 7, 2026</h5>
<div class="fakeimg">Fake Image</div>
<p>Amar library pvt ltd.</p>
<p>The Library Management System ensures efficient book circulation, easy searching of resources, and timely updates on new arrivals. It aims to create a quiet, organised, and learner-friendly environment for academic excellence.</p>
<h2>TITLE HEADING</h2>
<h5>Title description, Sep 2, 2026</h5>
<div class="fakeimg">Fake Image</div>
<p>Some text..</p>
<p>Our library provides a wide range of academic and reference resources to support students, teachers, and researchers. The collection includes textbooks, journals, magazines, newspapers, and digital resources that help users enhance their knowledge and learning experience.  </p>    
</div>

        </div>
    </div>

</asp:Content>

<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Zephyr._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Welcome</h1>
        <p> Login or register to begin! </p>
        <p><a href="Accounts/Login.aspx" class="btn btn-primary btn-lg">Login &raquo;</a> <a href="Accounts/Register.aspx" class="btn btn-primary btn-lg">Register &raquo;</a></p>
        <p>&nbsp;</p>
        <p>Or click the button below to learn more about asp.net!</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a> </p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started with ASP.NET</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
            <h2>Microsoft DreamSpark</h2>
            <p>
                DreamSpark is a Microsoft program to provide students with software design and development tools at no charge. It&#39;s also how I got most of the software used to design this site!</p>
            <p>
                <a class="btn btn-default" href="https://www.dreamspark.com/Default.aspx">Learn more &raquo;</a>
            </p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
            <h2>MATLAB</h2>
            <p>
                MATLAB®&nbsp;is the high-level language and interactive environment used by millions of engineers and scientists worldwide. It lets you explore and visualize ideas and collaborate across disciplines including signal and image processing, communications, control systems, and computational finance. It is a math program I use quite often!</p>
            <p>
                <a class="btn btn-default" href="http://www.mathworks.com/index.html?s_tid=gn_logo">Learn more about MATLAB &raquo;</a>
            </p>
            <p>
                &nbsp;</p>
            <p>
                <asp:Image ID="Image2" runat="server" />
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
            <h2>Villanova University</h2>
            <p>
                <span style="color: rgb(51, 51, 51); font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 20px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; ">Villanova University is a Roman Catholic institution of higher learning founded by the Order of Saint Augustine in 1842. This is where I go to school!</span></p>
            <p>
                <a class="btn btn-default" href="http://www1.villanova.edu/content/main/about.html">Learn more about Villanova &raquo;</a>
            </p>
            <p>
                &nbsp;</p>
            <p>
                <asp:Image ID="Image1" runat="server" />
            </p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
        </div>
    </div>

</asp:Content>

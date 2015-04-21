<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Zephyr.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Your contact page.</h3>
    <address>
        Villanova University<br />
        Villanova, PA 19085<br />
        <abbr title="Phone">P:</abbr>
        865.216.9660
    </address>

    <address>
        <strong>Support:</strong>   <a href="mailto:bjohns20@villanova.edu">bjohns20@villanova.edu</a><br />        
    </address>
</asp:Content>

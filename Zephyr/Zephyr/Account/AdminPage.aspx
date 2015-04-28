<%@ Page Title="Admin Controls" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="Zephyr.Account.AdminPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>


<div class="row">
        <div class="col-md-12">
            <div class="form-horizontal">
                <h4>Web admin tools listed below</h4>
                <hr />

                <asp:Label ID="lbl_admin" runat="server" Text="Label"></asp:Label>
                <br />

            </div>
        </div>
    </div>

                        <asp:Button  Text="View Users" Visible="true" ID="ViewUsers" runat="server" OnClick="ViewUsers_Click" />
                    <br />
    <br />

                        <asp:Button  Text="Alter Users" Visible="true" ID="AlterUsers0" runat="server" OnClick="AlterUsers_Click" />
                    <br />
    <br />

                        <asp:Button  Text="Navigate to user page" Visible="true" ID="AdminToUserPage" runat="server" OnClick="NavigateToUserPage_Click" />
                    <br />
    <br />
    <asp:DropDownList ID="ddl_adminAction" runat="server">
        <asp:ListItem>Delete</asp:ListItem>
        <asp:ListItem>Give Admin Rights</asp:ListItem>
    </asp:DropDownList>
&nbsp;&nbsp;
    <asp:TextBox ID="txt_userid" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_userid" CssClass="text-danger" ErrorMessage="UserID is required" />
    <br />
    <asp:Button ID="Exec_AdminActions" runat="server" OnClick="Exec_AdminActions_Click" Text="Go!" />
                    <br />
    <asp:GridView ID="gridview_users" runat="server" BackColor="#33CC33" BorderColor="#000066">

    </asp:GridView>

    <br />

    <br />

</asp:Content>
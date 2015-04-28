<%@ Page Title="Manage Personal Accounts" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageAccount.aspx.cs" Inherits="Zephyr.Account.ManageAccount" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>


<div class="row">
        <div class="col-md-12">
            <div class="form-horizontal">
                <h4>View and change your personal accounts</h4>
                <hr />
                <dl class="dl-horizontal">
                    <dt>Accounts:</dt>
                    <dd>
                        <asp:Button  Text="Accounts" Visible="true" ID="ViewAccounts" runat="server" OnClick="ViewAccounts_Click" />
                    </dd>
                    <dd>
                    </dd>
                    <dd>
                        <asp:Button  Text="Create Accounts" Visible="true" ID="CreateAccounts" runat="server" OnClick="CreateAccounts_Click" />
                    </dd>
                    <dd>
                        <dd>
                        </dl>
                <p>
                    <asp:GridView ID="gridview_accounts" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </p>
                <p>
                    &nbsp;</p>
                <dl class="dl-horizontal">
                    <dd>
                    <asp:Panel ID="panel_add_account" runat="server" Height="215px">
                        <asp:Label runat="server" AssociatedControlID="txt_Account_name" CssClass="col-md-2 control-label" ID="lbl_account_name">Name the Account</asp:Label>
                        
                        <asp:TextBox ID="txt_Account_name" runat="server" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_Account_name" CssClass="text-danger" ErrorMessage="The account name field is required." />
                        <asp:Label ID="lbl_balance" runat="server" AssociatedControlID="txt_balance" CssClass="col-md-2 control-label">Balance</asp:Label>
                        
                        <asp:TextBox ID="txt_balance" runat="server" CssClass="form-control" TextMode="Number" Width="250px" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="txt_balance" CssClass="text-danger" ErrorMessage="Please add a balance to start your account" />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RegularExpressionValidator ID="rvDecimal" ControlToValidate="txt_balance" runat="server"
                        ErrorMessage="Please enter a valid amount." ValidationExpression="^(-)?\d+(\.\d\d)?$">
                        </asp:RegularExpressionValidator><br>
                        <br />
                        <asp:Button ID="AddAccount" runat="server" OnClick="AddAccounts_Click" Text="Create Account" Visible="true" />
                        </asp:Panel>
                </dl>
            </div>
        </div>
    </div>

    <br />

</asp:Content>
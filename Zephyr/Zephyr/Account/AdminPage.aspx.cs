using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Zephyr.Account
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable admin;
            string adminbit;

            admin = Classes.SQLLoader.GetAdminStatus();
            adminbit = admin.Rows[0].ItemArray[0].ToString();

            if (adminbit == "False")
            {
                Response.Redirect("Default.aspx");
            }
            else 
            {
                gridview_users.Visible = false;
                ddl_adminAction.Visible = false;
                txt_userid.Visible = false;
                Exec_AdminActions.Visible = false;
            }
            

        }

        protected void ViewUsers_Click(object sender, EventArgs e)
        {
            ddl_adminAction.Visible = false;
            txt_userid.Visible = false;
            Exec_AdminActions.Visible = false;
            DataTable dt;
            dt = Classes.SQLLoader.ShowUsers();
            gridview_users.DataSource = dt;
            gridview_users.DataBind();
            gridview_users.Visible = true;
        }

        protected void AlterUsers_Click(object sender, EventArgs e)
        {
            gridview_users.Visible = false;
            ddl_adminAction.Visible = true;
            txt_userid.Visible = true;
            Exec_AdminActions.Visible = true;
        }

        protected void NavigateToUserPage_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manage.aspx");
        }

        protected void Exec_AdminActions_Click(object sender, EventArgs e)
        {
            string decision = ddl_adminAction.SelectedItem.ToString();

            if (decision == "Delete")
            {
                Classes.SQLLoader.AdminActions_DeleteUser(txt_userid.Text);
            }
            else if (decision == "Give Admin Rights")
            {                
                Classes.SQLLoader.AdminActions_MakeAdmin(txt_userid.Text);
            }
        }
    }
}
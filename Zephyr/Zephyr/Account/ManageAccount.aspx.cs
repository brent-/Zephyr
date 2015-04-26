using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace Zephyr.Account
{
    public partial class ManageAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            gridview_accounts.Visible = false;
            panel_add_account.Visible = false;
        }

        

        protected void CreateAccounts_Click(object sender, EventArgs e)
        {
            panel_add_account.Visible = true;
            CreateAccounts.Visible = false;
        }

        protected void AddAccounts_Click(object sender, EventArgs e)
        {
            bool newAcct;
            string username = HttpContext.Current.User.Identity.Name;
            newAcct = Classes.SQLLoader.SaveAccount(username, txt_balance.Text, txt_Account_name.Text);

            if (newAcct == true)
            {
                Response.Redirect(Request.RawUrl);
            }
            else 
            {
              
            }
        }

        protected void ViewAccounts_Click(object sender, EventArgs e)
        {
            panel_add_account.Visible = false;
            DataTable dt;
            string username = HttpContext.Current.User.Identity.Name;
            dt = Classes.SQLLoader.ShowAccounts(username);
            gridview_accounts.DataSource = dt;
            gridview_accounts.DataBind();
            gridview_accounts.Visible = true;

        }

        
    }
}
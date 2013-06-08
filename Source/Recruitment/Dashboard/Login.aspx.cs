using System;
using Action;

namespace Recruitment.Dashboard
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var admin = new Share.Admin();
            admin.Admin_Account = txtAccount.Text;
            admin.Admin_Password = txtPassword.Text;
            string sRole = Logins(admin);
            if (!string.IsNullOrEmpty(sRole))
            {
                if (sRole.Trim().Equals("Admin"))
                {
                    Response.Redirect("Index.aspx");
                }
                else if (sRole.Trim().Equals("Interview"))
                {
                    Response.Redirect("/Dashboard/Controls/Schedule/Index.aspx");
                }
            }
        }

        /// <summary>
        /// Logins the specified admins.
        /// </summary>
        /// <param name="admins">The admins.</param>
        /// <returns></returns>
        public string Logins(Share.Admin admins)
        {
            var admin = new Admin();
            return admin.Login(admins);
        }
    }
}
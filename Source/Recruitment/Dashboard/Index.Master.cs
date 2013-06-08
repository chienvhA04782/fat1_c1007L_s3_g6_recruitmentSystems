using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Recruitment.Dashboard
{
    public partial class Index1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Action.Admin.IdAmin = 0;
            Action.Admin.RoleAdmin = string.Empty;
            Response.Redirect("/Dashboard/Login.aspx");
        }
    }
}
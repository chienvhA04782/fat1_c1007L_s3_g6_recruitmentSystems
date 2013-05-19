using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Recruitment.Dashboard.Controls.Interviewer
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var interView = new Action.Interviewer();
            RadGrid_Interviewer.DataSource = interView.Admin_FetchAllInterViewer();
            RadGrid_Interviewer.DataBind();
        }
    }
}
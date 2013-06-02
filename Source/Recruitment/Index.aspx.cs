using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Action;

namespace Recruitment
{
    public partial class Index1 : System.Web.UI.Page
    {
        readonly Vacancys _vacancys = new Vacancys();
        protected int Count = 1;
        protected void Page_Load(object sender, EventArgs e)
        {
            ltv_AllVacancys.DataSource = Client_FetchAllListVancancys();
            ltv_AllVacancys.DataBind();
        }
        private List<Share.Vacancy> Client_FetchAllListVancancys()
        {
            return _vacancys.Client_FetchAllListVancancys();
        } 
    }
}
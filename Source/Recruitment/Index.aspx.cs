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
        protected void Page_Load(object sender, EventArgs e)
        {
            ltv_AllVacancys.DataSource = FetchAllListVancancys();
            ltv_AllVacancys.DataBind();
        }
        private List<Share.Vacancy> FetchAllListVancancys()
        {
            return _vacancys.FetchAllListVancancys();
        } 
    }
}
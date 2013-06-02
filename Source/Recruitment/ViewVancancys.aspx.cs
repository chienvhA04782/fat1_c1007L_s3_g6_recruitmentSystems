using System;
using System.Collections.Generic;
using Action;

namespace Recruitment
{
    public partial class ViewVancancys : System.Web.UI.Page
    {
        readonly Vacancys _vacancys = new Vacancys();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["appId"] != null)
            {
                LtrViewVacancys.DataSource = Client_FetchVacancysByVacancysId(Convert.ToInt32(Request.QueryString["appId"]));
                LtrViewVacancys.DataBind();
            }
        }

        /// <summary>
        /// Client_s the fetch vacancys by vacancys id.
        /// </summary>
        /// <param name="vacancysId">The vacancys id.</param>
        /// <returns></returns>
        public List<Share.Vacancy> Client_FetchVacancysByVacancysId(int vacancysId)
        {
            return _vacancys.Client_FetchVacancysByVacancysId(vacancysId);
        }
   
    }
}
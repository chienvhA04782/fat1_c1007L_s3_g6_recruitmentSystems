using System;

namespace Recruitment.Dashboard.Controls.Vacancy
{
    /// <summary>
    /// 
    /// </summary>
    public partial class Index : System.Web.UI.Page
    {
        private readonly Action.Vacancys _vacancy = new Action.Vacancys();
        protected int Count = 1;

        protected void Page_Load(object sender, EventArgs e)
        {
            FetchAllListVancancys();
        }

        /// <summary>
        /// Fetches all list vancancys.
        /// </summary>
        public void FetchAllListVancancys()
        {
            RadGridListVacancys.DataSource = _vacancy.FetchAllListVancancys();
            RadGridListVacancys.DataBind();
        }
    }
}
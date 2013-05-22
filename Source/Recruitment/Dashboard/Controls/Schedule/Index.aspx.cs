using System;
using System.Collections.Generic;
using Action;


namespace Recruitment.Dashboard.Controls.Schedule
{
    public partial class Index : System.Web.UI.Page
    {
        private readonly Action.Schedule _schedule = new Action.Schedule();
        private readonly Vacancys _vacancys = new Vacancys();
        private readonly Admin _admin = new Admin();

        protected void Page_Load(object sender, EventArgs e)
        {
            DataGridSchedule.DataSource = _schedule.FetchListSchedule();
            DataGridSchedule.DataBind();
        }

        /// <summary>
        /// Fetches the count schedule by date schedule.
        /// </summary>
        /// <param name="scheduleId">The schedule id.</param>
        /// <returns></returns>
        public int FetchCountScheduleByDateSchedule(int scheduleId)
        {
            return _vacancys.FetchCountScheduleByDateSchedule(scheduleId);
        }

        /// <summary>
        /// Fetches the name vacancys by schedule id.
        /// </summary>
        /// <param name="scheduleId">The schedule id.</param>
        /// <returns></returns>
        public string FetchNameVacancysByScheduleId(int scheduleId)
        {
            string str = string.Empty;
            int count = 1;
            List<Share.Vacancy> listVacancys = _vacancys.FetchNameVacancysByScheduleId(scheduleId);
            // ReSharper disable LoopCanBeConvertedToQuery
            foreach (var listVacancy in listVacancys)
            // ReSharper restore LoopCanBeConvertedToQuery
            {
                str += "<li>" + "<a href='#' class='itemsVacancys'>" + count + ".&nbsp;" + listVacancy.Vacancy_Name + "</a></li>";
                count++;
            }
            return str;
        }

        /// <summary>
        /// Fetches the user name admin by admin id.
        /// </summary>
        /// <param name="adminId">The admin id.</param>
        /// <returns></returns>
        public string FetchUserNameAdminByAdminId(int adminId)
        {
            return _admin.FetchUserNameAdminByAdminId(adminId);
        }
    }
}
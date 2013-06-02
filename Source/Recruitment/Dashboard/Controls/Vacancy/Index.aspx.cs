using System;
using System.Web.Services;
using Action;

namespace Recruitment.Dashboard.Controls.Vacancy
{
    /// <summary>
    /// 
    /// </summary>
    public partial class Index : System.Web.UI.Page
    {
        private readonly Action.Vacancys _vacancy = new Action.Vacancys();
        private readonly Action.Applicant _applicant = new Applicant();
        private readonly Action.Schedule _schedule = new Action.Schedule();
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

        /// <summary>
        /// Handles the Click event of the lbtnSubmitAddnew control.
        /// </summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
        protected void lbtnSubmitAddnew_Click(object sender, EventArgs e)
        {
            var vacancys = new Share.Vacancy
                {
                    Vacancy_Name = txtName.Text,
                    Vacancy_WorkAddress = txtAddress.Text,
                    Vacancy_Salary = txtsalary.Text,
                    Vacancy_Positions = txtposition.Text,
                    Vacancy_NumberPeople = Convert.ToInt32(txtnumberpeople.Text),
                    Vacancy_Skill = txtskill.Text,
                    Vacancy_Exp = txtxexp.Text,
                    Vacancy_TypeTime = dropTypeTime.SelectedValue,
                    Vacancy_Gender = dropGender.SelectedValue,
                    Vacancy_Age = txtage.Text,
                    Vacancy_Description = txtDescription.Text,
                    Vacancy_DateUp = DateTime.Now.ToString(),
                    Vacancy_DateStart = rdDate_Start.SelectedDate.ToString(),
                    Vacancy_DateEnd = rdDate_End.SelectedDate.ToString()
                };
            // create
            Panel_ContentAddnew.Visible = false;
            _vacancy.CreateNewVacancys(vacancys);
            // reaload datasource
            FetchAllListVancancys();
            Ltr_action.Text = "<script>CloseAddnewVacancys();" + "</script>";
        }

        /// <summary>
        /// LBTN_s the addnew_ click.
        /// </summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
        protected void lbtn_Addnew_Click(object sender, EventArgs e)
        {
            Panel_ContentAddnew.Visible = true;
        }

        /// <summary>
        /// Fetches the schedule id by vacancys id.
        /// </summary>
        /// <param name="vacancysId">The vacancys id.</param>
        /// <returns></returns>
        public int FetchScheduleIdByVacancysId(int vacancysId)
        {
            return _vacancy.FetchScheduleIdByVacancysId(vacancysId);
        }

        public static int ResultVacancysBySchedule = 0;

        /// <summary>
        /// Filters the vacancys by schedule.
        /// </summary>
        /// <returns></returns>
        public string FilterVacancysBySchedule(int vacancyId)
        {
            ResultVacancysBySchedule = FetchScheduleIdByVacancysId(vacancyId);
            return FetchCountApplicantAdminConfirm(vacancyId) +
                   FetchCountApplicantAdminNotConfirm(vacancyId) +
                   "<a class='btn' href='CheckApplicant.aspx?AppliId=" + vacancyId + "'>View</a>";
        }

        /// <summary>
        /// Filters the vacancys by schedule.
        /// </summary>
        /// <returns></returns>
        public string FilterVacancysHaveOrNotByvacancyId(int vacancyId, int scheduleId)
        {
            ResultVacancysBySchedule = FetchScheduleIdByVacancysId(vacancyId);
            if (ResultVacancysBySchedule == 0)
            {
                return "<span class='label'>not scheduling" + "</span>";
            }
            return FetchDateScheduleByScheduleId(scheduleId);
        }

        /// <summary>
        /// Fetches the date schedule by schedule id.
        /// </summary>
        /// <param name="scheduleId">The schedule id.</param>
        /// <returns></returns>
        public String FetchDateScheduleByScheduleId(int scheduleId)
        {
            return _schedule.FetchDateScheduleByScheduleId(scheduleId);
        }

        /// <summary>
        /// Filters the vacancys by schedule show create interviewer.
        /// </summary>
        /// <param name="vacancyId">The vacancy id.</param>
        /// <returns></returns>
        public string FilterVacancysByScheduleShowCreateInterviewer(int vacancyId)
        {
            if (FetchScheduleIdByVacancysId(vacancyId) == 0)
            {
                return "<li><a href='#' onclick='interviewerThis(" + vacancyId + ")'>Interviewer this vacancys" + "</a></li>" +
                    "<li><a href='#' onclick='attachNewApplicant(" + vacancyId + ")'>Attach new applicant" + "</a><li>";
            }
            return string.Empty;
        }

        /// <summary>
        /// Fetches the count applicant admin confirm.
        /// </summary>
        /// <param name="vacancysId">The vacancys id.</param>
        /// <returns></returns>
        public string FetchCountApplicantAdminConfirm(int vacancysId)
        {
            int st = _applicant.FetchCountApplicantAdminConfirm(vacancysId);
            if (st != 0)
            {
                return "<span class='label label-success'>"
                       + st + "</span>&nbsp;";
            }
            return string.Empty;
        }

        /// <summary>
        /// Fetches the count applicant admin not confirm.
        /// </summary>
        /// <param name="vacancysId">The vacancys id.</param>
        /// <returns></returns>
        public string FetchCountApplicantAdminNotConfirm(int vacancysId)
        {
            var st = _applicant.FetchCountApplicantAdminNotConfirm(vacancysId);
            if (st != 0)
            {
                return "<span class='label label-warning'>"
                       + st + "</span>&nbsp;";
            }
            return string.Empty;
        }
    }
}
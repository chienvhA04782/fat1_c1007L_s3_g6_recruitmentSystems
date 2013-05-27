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
            _vacancy.CreateNewVacancys(vacancys);
            Panel_ContentAddnew.Visible = false;
            // reaload datasource
            FetchAllListVancancys();
        }

        /// <summary>
        /// LBTN_s the addnew_ click.
        /// </summary>
        /// <param name="sender">The source of the event.</param>
        /// <param name="e">The <see cref="EventArgs"/> instance containing the event data.</param>
        protected void lbtn_Addnew_Click(object sender,EventArgs e)
        {
            Panel_ContentAddnew.Visible = true;
        }
    }
}
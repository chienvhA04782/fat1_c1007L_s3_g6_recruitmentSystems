using System.Net.Mail;

namespace Share
{
    public class EmailsProcess
    {
        public EmailsProcess()
        {

        }
        public void Sendmail(string emailTo,Share.Schedule schedule,Share.Vacancy vacancys)
        {
            var client = new SmtpClient
                {
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    EnableSsl = true,
                    Host = "smtp.gmail.com",
                    Port = 587
                };

            // setup Smtp authentication
            var credentials = new System.Net.NetworkCredential("chienmanship@gmail.com", "013481311");
            client.UseDefaultCredentials = false;
            client.Credentials = credentials;

            var msg = new MailMessage { From = new MailAddress("chienmanship@gmail.com") };
            msg.To.Add(new MailAddress(emailTo));

            msg.Subject = "SCHEDULE INTERVIEW BY HR GROUP";
            msg.IsBodyHtml = true;
            msg.Body = string.Format("<html><head></head><body>Dear applicant. we have a schedule in: "
                + schedule.Schedule_Date + ": " + vacancys.Vacancy_TimeInterViewer + " for position "+ vacancys.Vacancy_Name +"</body>");
            client.Send(msg);
        }
    }
}

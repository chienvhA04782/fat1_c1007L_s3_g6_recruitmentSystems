using System.Net.Mail;

namespace Share
{
    class EmailsProcess
    {
        public EmailsProcess()
        {

        }
        private void Sendmail()
        {
            var client = new SmtpClient
                {
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    EnableSsl = true,
                    Host = "smtp.gmail.com",
                    Port = 587
                };

            // setup Smtp authentication
            var credentials = new System.Net.NetworkCredential("acn.reply@gmail.com", "acn1024_1");
            client.UseDefaultCredentials = false;
            client.Credentials = credentials;

            var msg = new MailMessage { From = new MailAddress("acn.reply@gmail.com") };
            msg.To.Add(new MailAddress("vh04782@acnvn.vn"));

            msg.Subject = "Test Emails";
            msg.IsBodyHtml = true;
            msg.Body = string.Format("<html><head></head><body><h2>Hello</h2></body>");
            client.Send(msg);
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Web.Services;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string senderEmail = TextBoxMail.Text;
        string recipientEmail = "safa.chaouali@esprit.tn";
        string subject = "NOUVELLE REPONSE FORMULAIRE";

        string message = "le nom :" + TextBox1.Text + Environment.NewLine + "L'email :" + TextBoxMail.Text + Environment.NewLine
            + "Le message :" + TextBox4.Text;
        MailMessage mail = new MailMessage(senderEmail, recipientEmail, subject, message);
        // Configuration du client SMTP
        SmtpClient MonSmtpClient = new SmtpClient("smtp.gmail.com", 587);
        // Credentials = new NetworkCredential(senderEmail, senderPassword);
        MonSmtpClient.EnableSsl = true;
        MonSmtpClient.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
        MonSmtpClient.Credentials = new NetworkCredential("safa.chaouali@esprit.tn", "pkhuoaefjrudzwre");
        //MonSmtpClient.UseDefaultCredentials = true;
        MonSmtpClient.Send(mail);
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Configuration;
using SendGrid;
using SendGrid.SmtpApi;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using BotDetect.Web.UI;
using BotDetect;
using System.Text.RegularExpressions;

namespace GirlsGK
{
    public partial class contactUs : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string SendEmail = ConfigurationManager.AppSettings.Get("SendEmail");
            string FromAddress = ConfigurationManager.AppSettings.Get("FromAddress");
            string pwd = ConfigurationManager.AppSettings.Get("pwd");
            try
            {
                bool ishuman = CaptchaBox.Validate(txtCaptcha.Text);
                txtCaptcha.Text = null;
                string from = tbemail.Text;
                string to = FromAddress;
                string name = tbname.Text;
                string pattern = @"([a-zA-Z0-9_\-\.]+)@";
                Match match = Regex.Match(from, pattern);

                MailMessage mailMessage = new MailMessage(from, to);



                if (tbname.Text != null && tbemail.Text != null && tbSubject.Text != null && tbmsg.Text != null)
                {

                    if (match.Success)
                    {
                        if (ishuman)
                        {

                            mailMessage.Subject = tbSubject.Text;
                            mailMessage.Body = "Name: " + tbname.Text + "\n" + "Contact Email: " + tbemail.Text + "\n" + "Message: " + tbmsg.Text + "\n";


                            SmtpClient smtpClient = new SmtpClient();
                            smtpClient.Send(mailMessage);

                            Labelmsg.ForeColor = Color.Green;
                            Labelmsg.Text = "Valid Code";

                            Labelmsg.Text = "Form Submit";

                            tbname.Text = "";
                            tbemail.Text = "";
                            tbSubject.Text = "";
                            tbmsg.Text = "";
                        }
                        else
                        {
                            Labelmsg.ForeColor = Color.Red;
                            Labelmsg.Text = "Invalid code";
                        }

                    }

                    else
                    {

                        Labelmsg.Text = "Email address not in correct format";
                        Labelmsg.ForeColor = Color.Red;

                    }
                }
                else
                {
                    Labelmsg.Text = "form not submit";
                    Labelmsg.ForeColor = Color.Red;

                }
            }
            catch (Exception ex)
            {
                Labelmsg.Text = "Something went wrong! Please try again";
                Labelmsg.ForeColor = Color.Red;
            }
        }
    }
}


















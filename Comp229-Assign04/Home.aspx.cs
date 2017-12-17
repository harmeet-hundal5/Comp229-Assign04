using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string file_path = Server.MapPath("~/App_Data/Assign04.json");
        string json = File.ReadAllText(file_path);
        var games_list = JsonConvert.DeserializeObject<List<GamesModel>>(json);
        RptAllItems.DataSource = games_list;
        RptAllItems.DataBind();
    }
    protected void btnEmail_Click(object sender, EventArgs e)
    {
        try
        {
            System.Net.Mail.AlternateView htmlView = null;
            string from = "cc-comp229f2016@outlook.com";
            using (MailMessage mail = new MailMessage(from, txtEmail.Text.Trim()))
            {
                mail.Subject = "Json File";
                htmlView = System.Net.Mail.AlternateView.CreateAlternateViewFromString("<html><body><div style='border-style:solid;border-width:5px;border-radius: 10px; padding-left: 10px;margin: 20px; font-size: 18px;'> <p style='font-family: Vladimir Script;font-weight: bold; color: #f7d722;font-size: 48px;'>Kindly find the Attachment.</p><hr><div width=40%;> <p  style='font-size: 20px;'>Thanks</div></body></html>", null, "text/html");
                mail.AlternateViews.Add(htmlView);
                mail.IsBodyHtml = true;
                System.Net.Mime.ContentType contentType = new System.Net.Mime.ContentType();
                contentType.MediaType = System.Net.Mime.MediaTypeNames.Application.Octet;
                contentType.Name = "New-Assign04.json";
                mail.Attachments.Add(new Attachment(Server.MapPath("~/App_Data/New-Assign04.json"), contentType));
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp-mail.outlook.com";
                smtp.EnableSsl = true;
                NetworkCredential networkCredential = new NetworkCredential("cc-comp229f2016@outlook.com", "comp229pwd");   // username and password
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = networkCredential;
                smtp.Port = 587;
                smtp.Send(mail);
                string message = "alert('Email Sent Successfully.')";
                ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
            }
        }
        catch (System.Exception ex)
        {
            string message = "alert('Email Sending Failed.')";
            ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
        }
    }

    protected void btnCopy_Click(object sender, EventArgs e)
    {
        string file_path = Server.MapPath("~/App_Data/Assign04.json");
        string json = File.ReadAllText(file_path);
        var games_list = JsonConvert.DeserializeObject<List<GamesModel>>(json);
        String updated_json = JsonConvert.SerializeObject(games_list);
        File.WriteAllText(Server.MapPath("~/App_Data/New-Assign04.json"), updated_json);
        string message = "alert('File Copied Successfully.')";
        ScriptManager.RegisterClientScriptBlock((sender as Control), this.GetType(), "alert", message, true);
    }
}
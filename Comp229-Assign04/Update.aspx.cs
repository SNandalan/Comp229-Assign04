using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Hosting;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json.Linq;
using Newtonsoft.Json;

namespace Comp229_Assign04
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Update add = new Update();
            add.Name = txtModelName.Text;
            add.Faction = ddlFaction.SelectedValue;
            add.Rank = Convert.ToInt32(radRank.SelectedValue);
            add.Base = Convert.ToInt32(txtBase.Text);
            add.Size = Convert.ToInt32(txtSize.Text);
            add.DeploymentZone = ddlDeploymentZone.SelectedValue;
            add.Mobility = Convert.ToInt32(txtMobility.Text);
            add.Willpower = Convert.ToInt32(txtMobility.Text);
            add.Resiliance = Convert.ToInt32(txtResiliance.Text);
            add.Wounds = Convert.ToInt32(txtWounds.Text);

            var filepath = MapPath("~/Scripts/Json.json");
            if (File.Exists(filepath))
            {
                //Deserialize json file
                var jsonData = JsonConvert.DeserializeObject<List<Update>>(File.ReadAllText(filepath));

                //Add object to jsonData
                jsonData.Add(add);

                //Serialize jsonData to file
                File.WriteAllText(filepath, JsonConvert.SerializeObject(jsonData));

                this.SendEmail();

                //Redirect to Home page
                Response.Redirect("~/Home.aspx");
            }
        }

        protected void SendEmail()
        {
            SmtpClient client = new SmtpClient();
            MailMessage message = new MailMessage();
            try
            {
                MailAddress from = new MailAddress("cc-comp229f2016@outlook.com", "from me");
                MailAddress to = new MailAddress("to@outlook.com", "to you");
                message.From = from; message.To.Add(to);
                message.Subject = "hello!";
                //just sending the basic json due to time constraints
                System.Net.Mail.Attachment attachment;
                attachment = new System.Net.Mail.Attachment("~/Scripts/newAssign04.json");
                message.Attachments.Add(attachment);
                client.Host = "mailserver.example.com";
                client.Credentials = new System.Net.NetworkCredential("username", "password");
                client.Send(message);


                updateLabel.Text = "Email sent";
            }
            catch (Exception ex)
            {
                Response.Write("Email could not be sent. Error: " + ex.Message);
            }
        }
    }
}
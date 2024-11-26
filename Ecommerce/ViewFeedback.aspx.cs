using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.IO;
using System.Net.Mail;
using System.Text;

namespace Ecommerce
{
    public partial class ViewFeedback1 : System.Web.UI.Page
    {
        ConCls obj = new ConCls();
        protected void Page_Load(object sender, EventArgs e)
            {
                BindGrid();
            }
        public void BindGrid()
        {
            string sel = "select tbl_UserReg.User_Name,tbl_UserReg.User_Email,tbl_Feedback.Id,tbl_Feedback.Feedback_Msg from tbl_UserReg join tbl_Feedback on tbl_UserReg.User_RegId=tbl_Feedback.User_RegId where tbl_Feedback.Reply_Msg=null";
            DataSet ds = obj.Fn_ExeAdapter(sel);
            if (ds.Tables[0].Rows.Count!= 0)
            {
                grdFeedBack.DataSource = ds;
                grdFeedBack.DataBind();
            }
            else
            {
                lblmsgfdbk.Text = "No Pending Feedbacks..!! Thankyou";
            }
        }
        protected void lbtnSend_Command(object sender, CommandEventArgs e)
        {
            int fbid = Convert.ToInt32(e.CommandArgument);
            hdnfb.Value = fbid.ToString();
            string sel = "select tbl_Feedback.Id,tbl_Feedback.User_RegId,tbl_Feedback.Feedback_Msg,tbl_Feedback.Reply_Msg,tbl_Feedback.Status,tbl_UserReg.User_Email  from tbl_Feedback join tbl_UserReg  on tbl_Feedback.User_RegId=tbl_UserReg.User_RegId where Id='" + fbid + "'";
            SqlDataReader dr = obj.Fn_ExeReader(sel);
            if (dr.Read() == true)
            {
                txtMail.Text = dr["User_Email"].ToString();
                hdnUser.Value = dr["User_RegId"].ToString();
                pnlSendEmail.Visible = true;
            }
            else
            {
                pnlSendEmail.Visible = false;
            }

        }

        protected void btnEmail_Click(object sender, EventArgs e)
        {
            SendEmail("GIFTY", "Sreele2024@gmail.com", "zpos rsmf wcpx arfn", "User", txtMail.Text, "Feedback reply", txtReply.Text);
            string update = "update tbl_Feedback set Reply_Msg='" + txtReply.Text + "' where Id=" + hdnfb.Value + " and User_RegId=" + hdnUser.Value + "";
            int i = obj.Fn_ExeNonQuery(update);
            if (i == 1)
            {
                lblMsg.Text = "Mail send successfully...";
                lblMsg.Visible = true;
            }
            else
            {
                lblMsg.Text = "Mail send failed...";
                lblMsg.Visible = true;
            }
        }
        public static void SendEmail(string yourName, string yourGmailUserName, string yourGmailPassword, string toName, string toEmail, string subject, string body)
        {
            string to = toEmail; //To address    
            string from = yourGmailUserName; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = body;
            message.Subject = subject;
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential(yourGmailUserName, yourGmailPassword);
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
                Response.Redirect("AdminHome.aspx");
        }
    }
}


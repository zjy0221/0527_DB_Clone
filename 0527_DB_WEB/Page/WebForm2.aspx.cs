using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _0527_DB_WEB.Page
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            resultLabel.Text = "到底有沒有讀到頁面啦！";
        }
        protected void btn_Click (object sender, EventArgs e)
        {
            string patientNumber = mr_num.Value;

            resultLabel.Text = "到底有沒有讀到頁面啦2222！";

            resultLabel.Text = "您输入的患者編號是：" + patientNumber;

            //Response.Write("按钮点击事件触发！患者編號为：" + patientNumber);
        }

    }
}
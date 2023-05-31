using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _0527_DB_WEB.Page
{
    public partial class Another : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_Click (object sender, EventArgs e)
        {
            //string patientNumber = mr_num.Value;

            result_ID.Text = "到底有沒有讀到頁面啦2222！";

            //result_ID.Text = "您输入的病歷編號是：" + patientNumber;

            //Response.Write("按钮点击事件触发！患者編號为：" + patientNumber);
        }

    }
}
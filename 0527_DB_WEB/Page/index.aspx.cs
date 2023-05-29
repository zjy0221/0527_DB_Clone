using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _0527_DB_WEB.Page
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            string ID_Number = ID_card.Value;
            bool ID_check = Regex.IsMatch(ID_Number, @"^[A-Z][0-9]{9}$"); //格式判斷

            if (string.IsNullOrEmpty(ID_Number))
            {
                result_ID1.Text = "你給我輸入東西喔！";
            }
            else if (ID_check)
            {
                result_ID1.Text = "您输入的身分證是：" + ID_Number;
                SerchID();
            }
            else
            {
                result_ID1.Text = "你給我輸入正確格式喔！";
            }

            //Response.Write("按钮点击事件触发！患者編號为：" + patientNumber);
        }

        private void SerchID()
        {
            
        }
    }
}
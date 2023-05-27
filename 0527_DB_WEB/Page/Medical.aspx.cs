using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _0527_DB_WEB.Page
{
    public partial class Medical : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            resultLabel.Text = "到底有沒有讀到頁面啦！";
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            // string choice = .Value;
            Button btn = (Button)sender;
            string btn_ID = btn.ID;


            resultLabel.Text = "您输入的身分證是："  ;

            switch (btn_ID) 
            {
                case "heart_btn": //心臟
                    resultLabel.Text = "你選到心臟科了，ㄟ嘿";
                    break;
                case "child_btn": //小兒
                    resultLabel.Text = "你選到小兒科了，ㄟ嘿";
                    break;
                case "women_btn": //婦產
                    resultLabel.Text = "你選到婦產科了，ㄟ嘿";
                    break;
                case "recover_btn": //復健
                    resultLabel.Text = "你選到復健科了，ㄟ嘿";
                    break;
                case "ENT_btn": //耳、鼻、喉
                    resultLabel.Text = "你選到耳鼻喉科了，ㄟ嘿";
                    break;
                case "recoverMed_btn": //復健醫學
                    resultLabel.Text = "你選到復健醫學科了，ㄟ嘿";
                    break;
                case "bone_btn":  //骨
                    resultLabel.Text = "你選到骨科了，ㄟ嘿";
                    break;
                case "nerves_btn": //神經
                    resultLabel.Text = "你選到神經科了，ㄟ嘿";
                    break;
                case "metabolic_btn": //新陳代謝
                    resultLabel.Text = "你選到新陳代謝科了，ㄟ嘿";
                    break;
                default:
                    resultLabel.Text = "你選到眼科了，ㄟ嘿";
                    break;
            }

            //Response.Write("按钮点击事件触发！患者編號为：" + patientNumber);
        }

    }
}
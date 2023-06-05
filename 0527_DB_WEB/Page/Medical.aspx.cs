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
            
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            // string choice = .Value;
            Button btn = (Button)sender;
            string btn_ID = btn.ID;

            string dpm_name;

            switch (btn_ID) 
            {
                case "heart_btn": //心臟
                    resultLabel.Text = "你選到心臟內科了，ㄟ嘿";
                    dpm_name = "心臟內科";
                    Serch_doc(dpm_name);
                    break;

                case "child_btn": //小兒
                    resultLabel.Text = "你選到小兒科了，ㄟ嘿";
                    dpm_name = "小兒科";
                    Serch_doc(dpm_name);
                    break;

                case "women_btn": //婦產
                    resultLabel.Text = "你選到婦產科了，ㄟ嘿";
                    dpm_name = "婦產科";
                    Serch_doc(dpm_name);
                    break;

                case "recover_btn": //復健
                    resultLabel.Text = "你選到復健科了，ㄟ嘿";
                    dpm_name = "復健科";
                    Serch_doc(dpm_name);
                    break;

                case "ENT_btn": //耳、鼻、喉
                    resultLabel.Text = "你選到耳鼻喉科了，ㄟ嘿";
                    dpm_name = "耳鼻喉科";
                    Serch_doc(dpm_name);
                    break;

                case "recoverMed_btn": //復健醫學
                    resultLabel.Text = "你選到復健醫學部了，ㄟ嘿";
                    dpm_name = "復健醫學部";
                    Serch_doc(dpm_name);
                    break;

                case "bone_btn":  //骨
                    resultLabel.Text = "你選到骨科了，ㄟ嘿";
                    dpm_name = "骨科";
                    Serch_doc(dpm_name);
                    break;

                case "nerves_btn": //神經
                    resultLabel.Text = "你選到神經科了，ㄟ嘿";
                    dpm_name = "神經科";
                    Serch_doc(dpm_name);
                    break;

                case "metabolic_btn": //新陳代謝
                    resultLabel.Text = "你選到新陳代謝科了，ㄟ嘿";
                    dpm_name = "新陳代謝科";
                    Serch_doc(dpm_name);
                    break;

                case "all_btn": //全部科別
                    resultLabel.Text = "這是全部科別歐，ㄟ嘿";
                    Serch_doc_all();
                    break;

                default:
                    resultLabel.Text = "你選到眼科了，ㄟ嘿";
                    dpm_name = "眼科";
                    Serch_doc(dpm_name);
                    break;
            }
        }

        public void Serch_doc(string dpm_name)
        {

            string name =  dpm_name ;

            SqlDataSource1.SelectCommand =
            "SELECT Department.dpm_num as 科室代號 , Department.dpm_name as 科室, Doctor.doc_num as 醫師編號 , Doctor.doc_name as 醫師姓名 , Doctor.expertise as 專長 , Doctor.AcademicQualifications as 最高學歷 , Doctor.license as 證照    FROM Department   INNER JOIN Doctor  ON Department.dpm_num = Doctor.dpm_num    WHERE Department.dpm_name = '" + name + "' ORDER BY 醫師編號 ASC ";
        }

        public void Serch_doc_all()
        {
            SqlDataSource1.SelectCommand =
            "SELECT * FROM dpm_to_doc ORDER BY 科室代號 ASC";
        }

    }
}
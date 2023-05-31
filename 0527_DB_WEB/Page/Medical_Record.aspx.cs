using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _0527_DB_WEB.Page
{
    public partial class Medical_Record : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FormView1.DataSource = null;
                FormView1.DataBind();
            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            string Patient_Number = p_num.Value;
            bool p_num_check = Regex.IsMatch(Patient_Number, @"^[0-9]+$"); //格式判斷


            if (string.IsNullOrEmpty(Patient_Number))
            {
                result_ID.Text = "你給我輸入東西喔！";
                FormView1.DataSource = null;
                FormView1.DataBind();
            }
            else if (p_num_check)
            {
                bool p_num__exist = P_Exist(Patient_Number);

                if (p_num__exist) 
                {
                    result_ID.Text = "您输入的患者編號是：" + Patient_Number;
                    ViewState["p_num"] = Patient_Number;
                    Serch_p_num(Patient_Number);
                }

                else
                {
                    result_ID.Text = "很抱歉，查無此資料！";
                    FormView1.DataSource = null;
                    FormView1.DataBind();
                }

            }
            else if (!p_num_check)
            {
                result_ID.Text = "你給我輸入正確格式喔！";
                FormView1.DataSource = null;
                FormView1.DataBind();
            }
        }

        private void Serch_p_num(string Patient_Number)
        {

            string p_num = Patient_Number;

            SqlDataSource1.SelectCommand =
            "SELECT Patient.p_num as 患者編號 , Patient.p_name as 患者 , Patient.ID as 身分證號 , Patient.IC_num as 健保卡號 , NedicalRecords.DiagnosisContent as 病因 , NedicalRecords.DiagnosisTime as 時間 , NedicalRecords.ICIdentity as 是否使用健保 , NedicalRecords.hospitalized as 是否住院 FROM Patient , NedicalRecords  WHERE  Patient.p_num = NedicalRecords.p_num  and  Patient.p_num = " + p_num + " ORDER BY  Patient.p_num asc --由小到大、排序";

            FormView1.DataBind();
        }

        private bool P_Exist(string p_num)
        {
            //Data Source：伺服器名稱 、 Initial Catalog ：資料庫名稱 、 Integrated Security=True 給Windows驗證連線的人]
            string connection_DB= "Data Source = USER002\\SQLEXPRESS ; Initial Catalog = PrescriptionSign ; Integrated Security=True;";
            bool exists = false;

            using (SqlConnection connection = new SqlConnection(connection_DB))
            {
                string sqlQuery = "SELECT COUNT(*) FROM Patient WHERE p_num = @p_num";

                using (SqlCommand command = new SqlCommand(sqlQuery, connection))
                {
                    command.Parameters.AddWithValue("@p_num", p_num);

                    connection.Open();
                    exists = ((int)command.ExecuteScalar() > 0);
                }
            }

            return exists;
        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {
            if (ViewState["p_num"] != null)
            {
                string p_num = ViewState["p_num"].ToString();
                Serch_p_num(p_num);
            }
        }

    }
}
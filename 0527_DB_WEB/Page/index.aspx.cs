using Google.Protobuf.WellKnownTypes;
using MySqlX.XDevAPI;
using Org.BouncyCastle.Asn1.X509;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _0527_DB_WEB.Page
{
    public partial class index : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FormView1.DataSource = null;
                FormView1.DataBind();
                Serch_Default();
            }

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            string ID_Number = ID_card.Value;
            bool ID_check = Regex.IsMatch(ID_Number, @"^[A-Z][0-9]{9}$"); //格式判斷

            if (string.IsNullOrEmpty(ID_Number))
            {
                result_ID.Text = "你給我輸入東西喔！";
                FormView1.DataSource = null;
                FormView1.DataBind();
                Serch_Default();

            }

            else if (ID_check)
            {
                bool ID_exist = ID_Exist(ID_Number);
                if (ID_exist) 
                {
                    result_ID.Text = "您输入的身分證是：" + ID_Number;
                    ViewState["ID_Number"] = ID_Number;
                    SerchID(ID_Number);

                }

                else
                {
                    result_ID.Text = "很抱歉，查無此資料！";
                    FormView1.DataSource = null;
                    FormView1.DataBind();
                    Serch_Default();
                }

            }
            else if (!ID_check)
            {
                result_ID.Text = "你給我輸入正確格式喔！";
                FormView1.DataSource = null;
                FormView1.DataBind();
                Serch_Default();

            }
            
        }

        private void SerchID(string ID_Number)
        {
            
            string id = "'"+ ID_Number +"'";

            SqlDataSource1.SelectCommand =
            "SELECT Patient.p_name AS 患者, Patient.ID AS 身分證, Patient.IC_num AS 健保卡號, NedicalRecords.DiagnosisContent AS 診斷內容, PrescriptionSign.DrugName AS 藥名, PrescriptionSign.application AS 用途, PrescriptionSign.dose AS 劑量, PrescriptionSign.TakeTime AS 服用時間, PrescriptionSign.frequency AS 服用頻率, PrescriptionSign.lnvoice AS 開立時間, PrescriptionSign.mr_num AS 病歷號   FROM PrescriptionSign   INNER JOIN NedicalRecords ON PrescriptionSign.mr_num = NedicalRecords.mr_num    INNER JOIN Patient ON Patient.p_num = NedicalRecords.p_num    WHERE Patient.ID = " + id + " ORDER BY PrescriptionSign.lnvoice DESC--時間排序 ";

        }

        private void Serch_Default()
        {

            SqlDataSource1.SelectCommand =
            "SELECT * FROM [ID_Serch_PS]";

        }

        private bool ID_Exist(string ID_Number)
        {
            DataView dataView = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            DataTable dataTable = dataView.ToTable();

            DataRow[] rows = dataTable.Select("身分證 = " + "'" + ID_Number + "'");
            return rows.Length > 0;
        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {
            if (ViewState["ID_Number"] != null)
            {
                string ID_Number = ViewState["ID_Number"].ToString();
                SerchID(ID_Number);


            }
        }

    }
}
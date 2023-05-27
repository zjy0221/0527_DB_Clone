using System.Web;

namespace _0527_DB_WEB.Page
{
    public class Prescription_Search : IHttpHandler
    {
        //var searchTerm = Request.QueryString["searchGenre"];
        /// <summary>
        /// 您將需要在您 Web 的 Web.config 檔中設定此處理常式，
        /// 並且向 IIS 註冊該處理程式，才能使用它。如需詳細資訊，
        /// 參閱下列連結: https://go.microsoft.com/?linkid=8101007
        /// </summary>
        #region IHttpHandler 成員

        public bool IsReusable
        {
            // 如果您的受控處理常式無法重新使用於其他要求，則傳回 false。
            // 如果您有針對要求保留的一些狀態資訊，通常是 false。
            get { return true; }
        }

        public void ProcessRequest(HttpContext context)
        {
            //在這裡寫下您的處理常式實作。
        }

        #endregion
    }
}

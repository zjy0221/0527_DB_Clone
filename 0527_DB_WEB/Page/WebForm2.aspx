<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="_0527_DB_WEB.Page.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="zh">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>測試</title>

    <webopt:BundleReference runat="server" Path="~/Content/css" />

</head>
<body>
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" runat="server" href="~/Page/index">處方籤追蹤系統</a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a runat="server" href="~/Page/index">首頁</a></li>
                    <li><a runat="server" href="~/Page/Medical">醫科專區</a></li>
                    <li><a runat="server" href="~/Page/Medical_Record">過往病歷</a></li>
                    <li><a runat="server" href="~/Page/WebForm2">測試用</a></li>
                </ul>
            </div>
        </div>
    </div>

    <div>
        <h2>病歷查詢</h2>

        <form id="form1" runat="server">

            <p>病歷查詢：<input type="search" id="mr_num" name="mr_num" placeholder="請輸入患者編號" runat="server" /></p>
            <button type="submit" id="mr_btn" runat="server" onserverclick="btn_Click">搜尋</button>

             <p/><p/><p/>
            <p>搜尋結果：<asp:Label ID="resultLabel" runat="server"> " </asp:Label></p>

        </form>


    </div>

    <div class="container body-content">
        <hr />
        <footer>
            <p>&copy; <%: DateTime.Now.Year %> - 處方籤追蹤系統，感謝您的使用~</p>
        </footer>
    </div>


</body>
</html>

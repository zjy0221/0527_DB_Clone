<%@ Page Title="Another" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Another.aspx.cs" Inherits="_0527_DB_WEB.Page.Another" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2>您好~</h2>
        <p>用病歷號，查詢處方籤：<input type="search" id="ID_card" name="mr_num" placeholder="請輸入病歷號" runat="server"></p>
        <button type="submit" id="id_btn" runat="server" onserverclick="btn_Click">搜索</button>

        <p />
        <p />
        <p />
        <p>搜尋結果：<asp:Label ID="result_ID" runat="server">  </asp:Label></p>

        <p />
        <p />
        <p />

    </div>

</asp:Content>


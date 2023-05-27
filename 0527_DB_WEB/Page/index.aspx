<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="_0527_DB_WEB.Page.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2>歡迎回來~</h2>
            <p>處方籤查詢：<input type="search" id="ID_card" name="ID_card" placeholder="請輸入身分證號" runat="server"></p>
            <button type="submit"  id="id_btn" runat="server" onserverclick="btn_Click">搜索</button>

             <p/><p/><p/>
            <p>搜尋結果：<asp:Label ID="resultLabel" runat="server">  </asp:Label></p>

    </div>
</asp:Content>

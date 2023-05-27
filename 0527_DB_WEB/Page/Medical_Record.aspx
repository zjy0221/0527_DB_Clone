<%@ Page Title="患者病歷" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Medical_Record.aspx.cs" Inherits="_0527_DB_WEB.Page.Medical_Record" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2><%: Title %></h2>
            <p>病歷查詢：<input type="search" id="mr_num" name="mr_num" placeholder="請輸入患者編號" runat="server" /></p>
            <button type="submit" id="mr_btn" runat="server" onserverclick="btn_Click">搜尋</button>

             <p/><p/><p/>
            <p>搜尋結果：<asp:Label ID="resultLabel" runat="server">  </asp:Label></p>
    </div>
</asp:Content>

<%@ Page Title="患者病歷" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Medical_Record.aspx.vb" Inherits="_0527_DB_WEB.Medical_Record" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
             <div>
             <h2><%: Title %></h2>
             <form action="" method ="post">
             <p> 病歷查詢：<input type="search" id="mySearch" name="q"  placeholder="請輸入患者編號"></p>
            <button>搜索</button>
             </form>
         </div>
</asp:Content>

<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.vb" Inherits="_0527_DB_WEB._Default" %>

 <asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
         <div>
             <h2>歡迎回來~</h2>
             <form action="" method ="post">
             <p> 處方籤查詢：<input type="search" id="mySearch" name="q"  placeholder="請輸入身分證號"></p>
            <button>搜索</button>
             </form>
         </div>
 </asp:Content>


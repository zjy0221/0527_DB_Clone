<%@ Page Title="醫科專區" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Medical.aspx.cs" Inherits="_0527_DB_WEB.Page.Medical" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%: Title %>.</h2>
    <!-- -->
    <asp:Button ID="heart_btn" runat="server" Text="心臟內科" OnClick="btn_Click" />
    <asp:Button ID="child_btn" runat="server" Text="小兒科" OnClick="btn_Click" />
    <asp:Button ID="women_btn" runat="server" Text="婦產科" OnClick="btn_Click" />
    <asp:Button ID="recover_btn" runat="server" Text="復健科" OnClick="btn_Click" />
    <asp:Button ID="ENT_btn" runat="server" Text="耳鼻喉科" OnClick="btn_Click" />
    <asp:Button ID="recoverMed_btn" runat="server" Text="復健醫學部" OnClick="btn_Click" />
    <asp:Button ID="bone_btn" runat="server" Text="骨科" OnClick="btn_Click" />
    <asp:Button ID="nerves_btn" runat="server" Text="神經科" OnClick="btn_Click" />
    <asp:Button ID="metabolic_btn" runat="server" Text="新陳代謝科" OnClick="btn_Click" />
    <asp:Button ID="eyes_btn" runat="server" Text="眼科" OnClick="btn_Click" />

    <p/><p/><p/>
     <p>搜尋結果：<asp:Label ID="resultLabel" runat="server">  </asp:Label></p>

</asp:Content>

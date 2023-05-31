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

    <p/>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PrescriptionSignConnectionString %>" 
            SelectCommand="SELECT * FROM [dpm_to_doc] ORDER BY 科室代號 ASC"></asp:SqlDataSource>

    <p/>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="科室代號,醫師編號" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" Height="341px" Width="1354px">
            <Columns>
                <asp:BoundField DataField="科室代號" HeaderText="科室代號" ReadOnly="True" SortExpression="科室代號" />
                <asp:BoundField DataField="科室" HeaderText="科室" SortExpression="科室" />
                <asp:BoundField DataField="醫師編號" HeaderText="醫師編號" ReadOnly="True" SortExpression="醫師編號" />
                <asp:BoundField DataField="醫師姓名" HeaderText="醫師姓名" SortExpression="醫師姓名" />
                <asp:BoundField DataField="專長" HeaderText="專長" SortExpression="專長" />
                <asp:BoundField DataField="最高學歷" HeaderText="最高學歷" SortExpression="最高學歷" />
                <asp:BoundField DataField="證照" HeaderText="證照" SortExpression="證照" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
    <p/>

</asp:Content>

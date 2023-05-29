<%@ Page Title="DATA Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="_0527_DB_WEB.Page.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2>資料表</h2>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PrescriptionSignConnectionString %>" DeleteCommand="DELETE FROM [Department] WHERE [dpm_num] = @dpm_num" InsertCommand="INSERT INTO [Department] ([dpm_num], [dpm_name], [ParentDpm]) VALUES (@dpm_num, @dpm_name, @ParentDpm)" SelectCommand="SELECT * FROM [Department]" UpdateCommand="UPDATE [Department] SET [dpm_name] = @dpm_name, [ParentDpm] = @ParentDpm WHERE [dpm_num] = @dpm_num">
            <DeleteParameters>
                <asp:Parameter Name="dpm_num" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="dpm_num" Type="Int32" />
                <asp:Parameter Name="dpm_name" Type="String" />
                <asp:Parameter Name="ParentDpm" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="dpm_name" Type="String" />
                <asp:Parameter Name="ParentDpm" Type="String" />
                <asp:Parameter Name="dpm_num" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <p/>

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
            </asp:GridView>

        <p/>



    </div>
</asp:Content>
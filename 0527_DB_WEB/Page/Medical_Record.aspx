<%@ Page Title="患者病歷" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Medical_Record.aspx.cs" Inherits="_0527_DB_WEB.Page.Medical_Record" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2><%: Title %></h2>
        <p>病歷查詢：<input type="search" id="p_num" name="p_num" placeholder="請輸入患者編號" runat="server" /></p>
        <button type="submit" id="mr_btn" runat="server" onserverclick="btn_Click">搜尋</button>

        <p />
        <p />
        <p />
            &nbsp;<p>搜尋結果：<asp:Label ID="result_ID" runat="server">  </asp:Label></p>

        <p />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PrescriptionSignConnectionString %>" SelectCommand="SELECT * FROM [P_Serch_to_N]"></asp:SqlDataSource>

        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" Height="183px" Width="422px" AllowPaging="True" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" OnPageIndexChanging="FormView1_PageIndexChanging">
            
            <EditItemTemplate>
                患者編號:
                <asp:TextBox ID="患者編號TextBox" runat="server" Text='<%# Bind("患者編號") %>' />
                <br />
                患者:
                <asp:TextBox ID="患者TextBox" runat="server" Text='<%# Bind("患者") %>' />
                <br />
                身分證號:
                <asp:TextBox ID="身分證號TextBox" runat="server" Text='<%# Bind("身分證號") %>' />
                <br />
                健保卡號:
                <asp:TextBox ID="健保卡號TextBox" runat="server" Text='<%# Bind("健保卡號") %>' />
                <br />
                診斷內容:
                <asp:TextBox ID="診斷內容TextBox" runat="server" Text='<%# Bind("診斷內容") %>' />
                <br />
                時間:
                <asp:TextBox ID="時間TextBox" runat="server" Text='<%# Bind("時間") %>' />
                <br />
                是否使用健保:
                <asp:TextBox ID="是否使用健保TextBox" runat="server" Text='<%# Bind("是否使用健保") %>' />
                <br />
                是否住院:
                <asp:TextBox ID="是否住院TextBox" runat="server" Text='<%# Bind("是否住院") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>

            <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />

            <InsertItemTemplate>
                患者編號:
                <asp:TextBox ID="患者編號TextBox" runat="server" Text='<%# Bind("患者編號") %>' />
                <br />
                患者:
                <asp:TextBox ID="患者TextBox" runat="server" Text='<%# Bind("患者") %>' />
                <br />
                身分證號:
                <asp:TextBox ID="身分證號TextBox" runat="server" Text='<%# Bind("身分證號") %>' />
                <br />
                健保卡號:
                <asp:TextBox ID="健保卡號TextBox" runat="server" Text='<%# Bind("健保卡號") %>' />
                <br />
                診斷內容:
                <asp:TextBox ID="診斷內容TextBox" runat="server" Text='<%# Bind("診斷內容") %>' />
                <br />
                時間:
                <asp:TextBox ID="時間TextBox" runat="server" Text='<%# Bind("時間") %>' />
                <br />
                是否使用健保:
                <asp:TextBox ID="是否使用健保TextBox" runat="server" Text='<%# Bind("是否使用健保") %>' />
                <br />
                是否住院:
                <asp:TextBox ID="是否住院TextBox" runat="server" Text='<%# Bind("是否住院") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>

            <ItemTemplate>
                <br />
                患者編號:
                <asp:Label ID="患者編號Label" runat="server" Text='<%# Bind("患者編號") %>' />
                <br />
                <br />
                患者:
                <asp:Label ID="患者Label" runat="server" Text='<%# Bind("患者") %>' />
                <br />
                <br />
                身分證號:
                <asp:Label ID="身分證號Label" runat="server" Text='<%# Bind("身分證號") %>' />
                <br />
                <br />
                健保卡號:
                <asp:Label ID="健保卡號Label" runat="server" Text='<%# Bind("健保卡號") %>' />
                <br />
                <br />
                診斷內容:
                <asp:Label ID="診斷內容Label" runat="server" Text='<%# Bind("診斷內容") %>' />
                <br />
                <br />
                時間:
                <asp:Label ID="時間Label" runat="server" Text='<%# Bind("時間") %>' />
                <br />
                <br />
                是否使用健保:
                <asp:Label ID="是否使用健保Label" runat="server" Text='<%# Bind("是否使用健保") %>' />
                <br />
                <br />
                是否住院:
                <asp:Label ID="是否住院Label" runat="server" Text='<%# Bind("是否住院") %>' />
                <br />
                <br />

            </ItemTemplate>

            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />

        </asp:FormView>
        <p />

            &nbsp;</div>
</asp:Content>

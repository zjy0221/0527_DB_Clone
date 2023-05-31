<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="_0527_DB_WEB.Page.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2>歡迎回來~</h2>
        <p>處方籤查詢：<input type="search" id="ID_card" name="ID_card" placeholder="請輸入身分證號" runat="server"></p>
        <button type="submit" id="id_btn" runat="server" onserverclick="btn_Click">搜索</button>

        <p />
        <p />
        <p />
        <p>搜尋結果：<asp:Label ID="result_ID" runat="server">  </asp:Label></p>

        <p />
            <asp:SqlDataSource ID="SqlDataSource1" 
                runat="server" 
                ConnectionString="<%$ ConnectionStrings:PrescriptionSignConnectionString %>" 
                SelectCommand="SELECT * FROM [ID_Serch_PS]">
                
            </asp:SqlDataSource>

        <p />  <!-- 上面是叫資料庫，下面是表格檢視 -->

            <asp:FormView ID="FormView1" runat="server" AllowPaging="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Both" Height="226px" Width="478px" CellSpacing="2" OnPageIndexChanging="FormView1_PageIndexChanging" DataKeyNames="mr_num">
                <EditItemTemplate>
                    患者:
                    <asp:TextBox ID="患者TextBox" runat="server" Text='<%# Bind("患者") %>' />
                    <br />
                    身分證:
                    <asp:TextBox ID="身分證TextBox" runat="server" Text='<%# Bind("身分證") %>' />
                    <br />
                    健保卡號:
                    <asp:TextBox ID="健保卡號TextBox" runat="server" Text='<%# Bind("健保卡號") %>' />
                    <br />
                    DiagnosisContent:
                    <asp:TextBox ID="DiagnosisContentTextBox" runat="server" Text='<%# Bind("DiagnosisContent") %>' />
                    <br />
                    DrugName:
                    <asp:TextBox ID="DrugNameTextBox" runat="server" Text='<%# Bind("DrugName") %>' />
                    <br />
                    application:
                    <asp:TextBox ID="applicationTextBox" runat="server" Text='<%# Bind("application") %>' />
                    <br />
                    dose:
                    <asp:TextBox ID="doseTextBox" runat="server" Text='<%# Bind("dose") %>' />
                    <br />
                    TakeTime:
                    <asp:TextBox ID="TakeTimeTextBox" runat="server" Text='<%# Bind("TakeTime") %>' />
                    <br />
                    frequency:
                    <asp:TextBox ID="frequencyTextBox" runat="server" Text='<%# Bind("frequency") %>' />
                    <br />
                    lnvoice:
                    <asp:TextBox ID="lnvoiceTextBox" runat="server" Text='<%# Bind("lnvoice") %>' />
                    <br />
                    mr_num:
                    <asp:Label ID="mr_numLabel1" runat="server" Text='<%# Eval("mr_num") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                </EditItemTemplate>

                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />

                <InsertItemTemplate>
                    患者:
                    <asp:TextBox ID="患者TextBox" runat="server" Text='<%# Bind("患者") %>' />
                    <br />
                    身分證:
                    <asp:TextBox ID="身分證TextBox" runat="server" Text='<%# Bind("身分證") %>' />
                    <br />
                    健保卡號:
                    <asp:TextBox ID="健保卡號TextBox" runat="server" Text='<%# Bind("健保卡號") %>' />
                    <br />
                    DiagnosisContent:
                    <asp:TextBox ID="DiagnosisContentTextBox" runat="server" Text='<%# Bind("DiagnosisContent") %>' />
                    <br />
                    DrugName:
                    <asp:TextBox ID="DrugNameTextBox" runat="server" Text='<%# Bind("DrugName") %>' />
                    <br />
                    application:
                    <asp:TextBox ID="applicationTextBox" runat="server" Text='<%# Bind("application") %>' />
                    <br />
                    dose:
                    <asp:TextBox ID="doseTextBox" runat="server" Text='<%# Bind("dose") %>' />
                    <br />
                    TakeTime:
                    <asp:TextBox ID="TakeTimeTextBox" runat="server" Text='<%# Bind("TakeTime") %>' />
                    <br />
                    frequency:
                    <asp:TextBox ID="frequencyTextBox" runat="server" Text='<%# Bind("frequency") %>' />
                    <br />
                    lnvoice:
                    <asp:TextBox ID="lnvoiceTextBox" runat="server" Text='<%# Bind("lnvoice") %>' />
                    <br />
                    mr_num:
                    <asp:TextBox ID="mr_numTextBox" runat="server" Text='<%# Bind("mr_num") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                </InsertItemTemplate>

                <ItemTemplate>
                    <br />
                    患者:
                    <asp:Label ID="患者Label" runat="server" Text='<%# Bind("患者") %>' />
                    <br />
                    <br />
                    身分證:
                    <asp:Label ID="身分證Label" runat="server" Text='<%# Bind("身分證") %>' />
                    <br />
                    <br />
                    健保卡號:
                    <asp:Label ID="健保卡號Label" runat="server" Text='<%# Bind("健保卡號") %>' />
                    <br />
                    <br />
                    DiagnosisContent:
                    <asp:Label ID="DiagnosisContentLabel" runat="server" Text='<%# Bind("DiagnosisContent") %>' />
                    <br />
                    <br />
                    <br />
                    DrugName:
                    <asp:Label ID="DrugNameLabel" runat="server" Text='<%# Bind("DrugName") %>' />
                    <br />
                    <br />
                    application:
                    <asp:Label ID="applicationLabel" runat="server" Text='<%# Bind("application") %>' />
                    <br />
                    <br />
                    dose:
                    <asp:Label ID="doseLabel" runat="server" Text='<%# Bind("dose") %>' />
                    <br />
                    <br />
                    TakeTime:
                    <asp:Label ID="TakeTimeLabel" runat="server" Text='<%# Bind("TakeTime") %>' />
                    <br />
                    <br />
                    frequency:
                    <asp:Label ID="frequencyLabel" runat="server" Text='<%# Bind("frequency") %>' />
                    <br />
                    <br />
                    lnvoice:
                    <asp:Label ID="lnvoiceLabel" runat="server" Text='<%# Bind("lnvoice") %>' />
                    <br />
                    <br />
                    mr_num:
                    <asp:Label ID="mr_numLabel" runat="server" Text='<%# Eval("mr_num") %>' />
                    <br />
                    <br />
                </ItemTemplate>

                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />

                <RowStyle ForeColor="#8C4510" BackColor="#FFF7E7" />

            </asp:FormView>
        <p />

    </div>

</asp:Content>

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

            <asp:FormView ID="FormView1" runat="server" AllowPaging="True" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Both" Height="226px" Width="478px" CellSpacing="2" OnPageIndexChanging="FormView1_PageIndexChanging" DataKeyNames="病歷號">
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
                    診斷內容:
                    <asp:TextBox ID="診斷內容TextBox" runat="server" Text='<%# Bind("診斷內容") %>' />
                    <br />
                    藥名:
                    <asp:TextBox ID="藥名TextBox" runat="server" Text='<%# Bind("藥名") %>' />
                    <br />
                    用途:
                    <asp:TextBox ID="用途TextBox" runat="server" Text='<%# Bind("用途") %>' />
                    <br />
                    劑量:
                    <asp:TextBox ID="劑量TextBox" runat="server" Text='<%# Bind("劑量") %>' />
                    <br />
                    服用時間:
                    <asp:TextBox ID="服用時間TextBox" runat="server" Text='<%# Bind("服用時間") %>' />
                    <br />
                    服用頻率:
                    <asp:TextBox ID="服用頻率TextBox" runat="server" Text='<%# Bind("服用頻率") %>' />
                    <br />
                    開立時間:
                    <asp:TextBox ID="開立時間TextBox" runat="server" Text='<%# Bind("開立時間") %>' />
                    <br />
                    病歷號:
                    <asp:Label ID="病歷號Label1" runat="server" Text='<%# Eval("病歷號") %>' />
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
                    診斷內容:
                    <asp:TextBox ID="診斷內容TextBox" runat="server" Text='<%# Bind("診斷內容") %>' />
                    <br />
                    藥名:
                    <asp:TextBox ID="藥名TextBox" runat="server" Text='<%# Bind("藥名") %>' />
                    <br />
                    用途:
                    <asp:TextBox ID="用途TextBox" runat="server" Text='<%# Bind("用途") %>' />
                    <br />
                    劑量:
                    <asp:TextBox ID="劑量TextBox" runat="server" Text='<%# Bind("劑量") %>' />
                    <br />
                    服用時間:
                    <asp:TextBox ID="服用時間TextBox" runat="server" Text='<%# Bind("服用時間") %>' />
                    <br />
                    服用頻率:
                    <asp:TextBox ID="服用頻率TextBox" runat="server" Text='<%# Bind("服用頻率") %>' />
                    <br />
                    開立時間:
                    <asp:TextBox ID="開立時間TextBox" runat="server" Text='<%# Bind("開立時間") %>' />
                    <br />
                    病歷號:
                    <asp:TextBox ID="病歷號TextBox" runat="server" Text='<%# Bind("病歷號") %>' />
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
                    診斷內容:
                    <asp:Label ID="診斷內容Label" runat="server" Text='<%# Bind("診斷內容") %>' />
                    <br />
                    <br />
                    藥名:
                    <asp:Label ID="藥名Label" runat="server" Text='<%# Bind("藥名") %>' />
                    <br />
                    <br />
                    用途:
                    <asp:Label ID="用途Label" runat="server" Text='<%# Bind("用途") %>' />
                    <br />
                    <br />
                    劑量:
                    <asp:Label ID="劑量Label" runat="server" Text='<%# Bind("劑量") %>' />
                    <br />
                    <br />
                    服用時間:
                    <asp:Label ID="服用時間Label" runat="server" Text='<%# Bind("服用時間") %>' />
                    <br />
                    <br />
                    服用頻率:
                    <asp:Label ID="服用頻率Label" runat="server" Text='<%# Bind("服用頻率") %>' />
                    <br />
                    <br />
                    開立時間:
                    <asp:Label ID="開立時間Label" runat="server" Text='<%# Bind("開立時間") %>' />
                    <br />
                    <br />
                    病歷號:
                    <asp:Label ID="病歷號Label" runat="server" Text='<%# Eval("病歷號") %>' />
                    <br />
                    <br />
                </ItemTemplate>

                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />

                <RowStyle ForeColor="#8C4510" BackColor="#FFF7E7" />

            </asp:FormView>
        <p />

    </div>

</asp:Content>

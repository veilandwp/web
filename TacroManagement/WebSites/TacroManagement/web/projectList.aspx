<%@ Page Language="C#" Async="true" AutoEventWireup="true" MasterPageFile="~/web/index.master"  CodeFile="projectList.aspx.cs" Inherits="web_projectList" Title="��Ŀ�б�" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server" >
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="��Ŀһ��"></asp:Label>
    
    </div>
        <asp:GridView ID="ProjectGridView" runat="server" BackColor="White" 
        BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" >
        <Columns>
            <asp:BoundField DataField="��Ŀ����" HeaderText="��Ŀ����" ReadOnly="True" />
            <asp:BoundField DataField="��Ŀ������" HeaderText="��Ŀ������" ReadOnly="True" />
            <asp:BoundField DataField="��Ŀ���" HeaderText="��Ŀ���" ReadOnly="True" />                                                          
            <asp:BoundField DataField="�ͻ�����" HeaderText="�ͻ�����" ReadOnly="True" />
            <asp:BoundField DataField="��ʼʱ��" HeaderText="��ʼʱ��" ReadOnly="True" />
             <asp:BoundField DataField="����ʱ��" HeaderText="����ʱ��" ReadOnly="True" />
             <asp:CommandField HeaderText="ѡ��" ShowSelectButton="True" />
              <asp:CommandField HeaderText="�༭" ShowEditButton="True" />
              <asp:CommandField HeaderText="ɾ��" ShowDeleteButton="True" />
        </Columns>
        <RowStyle BackColor="#F7F7DE" />
        <FooterStyle BackColor="#CCCC99" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />

    </asp:GridView>
</asp:Content>
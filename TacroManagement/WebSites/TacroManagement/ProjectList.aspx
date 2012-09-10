﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProjectList.aspx.cs" Inherits="ProjectList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="项目一览"></asp:Label>
    
    </div>
        <asp:GridView ID="ProjectGridView" runat="server" BackColor="White" 
        BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" >
        <Columns>
            <asp:BoundField DataField="项目名称" HeaderText="项目名称" ReadOnly="True" />
            <asp:BoundField DataField="项目负责人" HeaderText="项目负责人" ReadOnly="True" />
            <asp:BoundField DataField="项目类别" HeaderText="项目类别" ReadOnly="True" />                                                          
            <asp:BoundField DataField="客户名称" HeaderText="客户名称" ReadOnly="True" />
            <asp:BoundField DataField="开始时间" HeaderText="开始时间" ReadOnly="True" />
             <asp:BoundField DataField="结束时间" HeaderText="结束时间" ReadOnly="True" />
             <asp:CommandField HeaderText="选择" ShowSelectButton="True" />
              <asp:CommandField HeaderText="编辑" ShowEditButton="True" />
              <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
        </Columns>
        <RowStyle BackColor="#F7F7DE" />
        <FooterStyle BackColor="#CCCC99" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" />

    </asp:GridView>
    </form>
</body>
</html>

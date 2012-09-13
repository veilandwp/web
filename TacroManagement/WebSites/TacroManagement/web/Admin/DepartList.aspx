﻿<%@ Page Title="" Language="C#" MasterPageFile="~/web/Admin/admin.master" AutoEventWireup="true" CodeFile="DepartList.aspx.cs" Inherits="web_Admin_DepartList" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <div>
        <h3>
            部门管理 > 部门列表</h3>
        <div style="width: 500px; margin: 0 auto;">
            <div style="border-bottom: 2px solid gray; height: 20px;">
                <div style="float: left; width: 200px; text-align: center;">
                    部门名称
                </div>
                <div style="float: left; width: 200px; text-align: center;">
                    部门管理人员
                </div>
            </div>
            <asp:DataList ID="dlDepart" runat="server" Width="500px" OnDeleteCommand="dlUser_DeleteCommand">
                <ItemTemplate>
                    <div style="border-bottom: 1px dashed gray; width: 500px;">
                        <div style="float: left; text-align: center;">
                            <asp:Label ID="lblDepartID" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "DepartID")%>'
                                Visible="false"></asp:Label></a>
                        </div>
                        <div style="float: left; width: 200px; text-align: center;">
                            <asp:Label ID="lblDepartName" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "DepartName")%>'></asp:Label>
                        </div>
                        <div style="float: left; width: 200px; text-align: center;">
                            <asp:Label ID="lblDepartAdmin" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "DepartAdmin")%>'></asp:Label>
                        </div>
                        <div style="float: left; width: 50px; text-align: center;">
                            <a href='ModifyDepart.aspx?departId=<%# DataBinder.Eval(Container.DataItem, "DepartID")%>'>
                                <asp:Label ID="lblEditDepart" Text="编辑" runat="server">
                                </asp:Label>
                            </a>
                        </div>
                        <div style="float: left; width: 50px; text-align: center;">
                            <asp:LinkButton ID="lbDeleteDepart" Text="删除" CommandName="Delete" runat="server"
                                OnClientClick="return confirm('确定删除吗？')"></asp:LinkButton>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
        <div style="height: 20px; text-align: center;">
            <webdiyer:AspNetPager ID="AspNetPager1" runat="server" AlwaysShow="True" ButtonImageAlign="Middle"
                CssClass="p_num" CurrentPageButtonClass="p_num_currentPage" CustomInfoClass=""
                CustomInfoStyle="" FirstPageText="[首页]" Font-Size="9pt" Font-Underline="False"
                InputBoxStyle="p_input" LastPageText="[尾页]" NextPageText="[后一页]" NumericButtonCount="8"
                NumericButtonTextFormatString="[{0}]" OnPageChanged="AspNetPager1_PageChanged"
                PageSize="5" PrevPageText="[前一页]" ShowInputBox="Never" ShowNavigationToolTip="True"
                ToolTip="分页" CustomInfoTextAlign="NotSet">
            </webdiyer:AspNetPager>
        </div>
    </div>
</asp:Content>

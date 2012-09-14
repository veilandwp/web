<%@ Page Title="" Language="C#" MasterPageFile="~/web/Admin/admin.master" AutoEventWireup="true"
    CodeFile="NewUser.aspx.cs" Inherits="web_Admin_NewUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../../bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div style="padding-top: 10px;">
        </div>
        <ul class="breadcrumb">
            <li><a href="#">�û�����</a><span class="divider">/���</span> </li>
        </ul>
        <div class="row">
            <form class="form-horizontal">
            <div class="form-horizontal control-group">
                <label class="control-label">
                    �û���
                </label>
                <div class="controls">
                    <div class="input-prepend">
                        <asp:TextBox runat="Server" ID="txtUserName" Text=""></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtUserName"
                        ErrorMessage="�������û���" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblUserName" Text="�û����Ѵ���" runat="server" Visible="false" Style="color: Red"></asp:Label>
                </div>
            </div>
            <div class="form-horizontal control-group">
                <label class="control-label">
                    �û�����
                </label>
                <div class="controls">
                    <div class="input-prepend">
                        <asp:TextBox runat="Server" ID="txtPassword" Text="" TextMode="Password"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ID="rfvPwd" runat="server" ErrorMessage="����������" ControlToValidate="txtPassword"
                        Display="Dynamic"></asp:RequiredFieldValidator></div>
            </div>
            <div class="form-horizontal control-group">
                <label class="control-label">
                    ȷ������
                </label>
                <div class="controls">
                    <div class="input-prepend">
                        <asp:TextBox runat="Server" ID="txtConfirmPassword" Text="" TextMode="Password"></asp:TextBox>
                    </div>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="������ȷ������"
                        ControlToValidate="txtConfirmPassword" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="�������벻һ��"
                        ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" Display="Dynamic"></asp:CompareValidator>
                </div>
            </div>
            <div class="form-horizontal control-group">
                <label class="control-label">
                    �û�����
                </label>
                <div class="controls">
                    <div class="input-prepend">
                        <asp:DropDownList ID="ddlUserType" runat="server">
                            <asp:ListItem Value="ϵͳ����Ա">ϵͳ����Ա</asp:ListItem>
                            <asp:ListItem Value="��Ŀ����Ա">��Ŀ����Ա</asp:ListItem>
                            <asp:ListItem Value="���Ź���Ա">���Ź���Ա</asp:ListItem>
                            <asp:ListItem Value="��ͨ�û�">��ͨ�û�</asp:ListItem>
                            <asp:ListItem Value="�ͻ�">�ͻ�</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
            </div>
            <div class="form-horizontal control-group">
                <label class="control-label">
                    �û�����
                </label>
                <div class="controls">
                    <div class="input-prepend">
                        <asp:TextBox runat="Server" ID="txtEmail" Text=""></asp:TextBox>
                    </div>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail"
                        ErrorMessage="�����ʽ����ȷ" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="form-horizontal control-group">
                <label class="control-label">
                    �û��ֻ�
                </label>
                <div class="controls">
                    <div class="input-prepend">
                        <asp:TextBox runat="Server" ID="txtPhone" Text=""></asp:TextBox>
                    </div>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPhone"
                        ErrorMessage="�ֻ������ʽ����ȷ" ValidationExpression="^(13[1-9]|15[0-9]|18[8|9])\d{8}$"></asp:RegularExpressionValidator>
                </div>
            </div>
            <div class="form-horizontal control-group">
                <label class="control-label">
                    ��������
                </label>
                <div class="controls">
                    <asp:DropDownList ID="ddlDepart" runat="server">
                    </asp:DropDownList>
                </div>
            </div>
            <div class="form-horizontal control-group">
                <div class="controls">
                    <asp:Button ID="btAdd" class="btn btn-primary" runat="Server" Text="ȷ��" OnClick="btAdd_Click" />
                    <asp:Button ID="btnCancle" class="btn" runat="Server" Text="ȡ��" OnClick="btnCancle_Click"
                        CausesValidation="False" />
                    <asp:Label ID="lblPrompt" Text="" runat="server" Visible="false" Style="color: Red"></asp:Label>
                </div>
            </div>
            </form>
        </div>
    </div>
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GamePage.aspx.cs" Inherits="TicTakTik.GamePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>  TIKTAKTIK</title>
    <style type="text/css">
        .auto-style1 {
            width: 69%;
            height: 300px;
        }
        .auto-style4 {
            height: 100px;
            width: 300px;
        }
        .auto-style5 {
            width: 300px;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
    <div>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Menu ID="Menu1" runat="server" BackColor="#E3EAEB" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#666666" OnMenuItemClick="Menu1_MenuItemClick" StaticSubMenuIndent="10px">
            <DynamicHoverStyle BackColor="#666666" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#E3EAEB" />
            <DynamicSelectedStyle BackColor="#1C5E55" />
            <DynamicItemTemplate>
                <%# Eval("Text") %>
            </DynamicItemTemplate>
            <Items>
                <asp:MenuItem Text="NewGame" Value="NG"></asp:MenuItem>
                <asp:MenuItem Text="EXIT" Value="EXIT"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#666666" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#1C5E55" />
        </asp:Menu>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="A1" runat="server" Height="100px" OnClick="button_click" Width="300px" />
                </td>
                <td class="auto-style4">
                    <asp:Button ID="A2" runat="server" Height="100px" OnClick="button_click" Width="300px" />
                </td>
                <td class="auto-style4">
                    <asp:Button ID="A3" runat="server" Height="100px" OnClick="button_click" Width="300px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="B1" runat="server" Height="100px" OnClick="button_click" Width="300px" />
                </td>
                <td class="auto-style4">
                    <asp:Button ID="B2" runat="server" Height="100px" OnClick="button_click" Width="300px" />
                </td>
                <td class="auto-style4">
                    <asp:Button ID="B3" runat="server" Height="100px" OnClick="button_click" Width="300px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="C1" runat="server" Height="100px" OnClick="button_click" Width="300px" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="C2" runat="server" Height="100px" OnClick="button_click" Width="300px" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="C3" runat="server" Height="100px" OnClick="button_click" Width="300px" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

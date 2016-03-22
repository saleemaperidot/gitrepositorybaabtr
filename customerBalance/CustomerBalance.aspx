<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerBalance.aspx.cs" Inherits="CustomerBalance" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:TextBox ID="TextBox1" runat="server">enter customer id</asp:TextBox>
    <div style="height: 69px; width: 881px">

        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="GO" 
                style="width: 34px; height: 26px" />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        </ContentTemplate>
        </asp:UpdatePanel>

        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
        <ContentTemplate>


        </ContentTemplate>
        </asp:UpdateProgress>


       
       



       


        
    </div>
    </form>
</body>
</html>

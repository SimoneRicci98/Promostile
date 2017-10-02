<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="Login" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="col-md-offset-3" style="font-size:18px">
    <div class="col-md-12" style="margin-top: 3%">
        <div class="col-md-2">
            <div class="row">
                <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
                <br /><br />
            </div>
            <div class="row" style="margin-top: 2%">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            </div>
        </div>
        <div class="col-md-3">
            <div class="row">
                <asp:TextBox ID="TxtEmail" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="row" style="margin-top: 2%">
                <asp:TextBox ID="TxtPass" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
    </div>
    <br />
    <div class="col-md-4">
        &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Entra" OnClick="Button1_Click" CssClass="btn btn-success" />
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblErr" runat="server" ForeColor="Red"></asp:Label>
    </div>
    <div class="col-md-4" style="margin-top:3%">
        Non hai ancora un account? Crealo usando il bottone sottostante!<br /><br />
        <asp:LinkButton ID="btnReg" CssClass ="btn btn-success" runat="server" Text="Registrati subito!">
        </asp:LinkButton>
    </div>
         </div>
</asp:Content>

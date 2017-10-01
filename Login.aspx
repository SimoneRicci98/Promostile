﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="Login" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-xs-12" style="margin-top: 3%">
        <div class="col-xs-1">
            <div class="row">
                <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
                <br />
            </div>
            <div class="row" style="margin-top: 2%">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            </div>
        </div>
        <div class="col-xs-3">
            <div class="row">
                <asp:TextBox ID="TxtEmail" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="row" style="margin-top: 2%">
                <asp:TextBox ID="TxtPass" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
    </div>
    <br />
    <div class="col-xs-4">
        &nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Entra" OnClick="Button1_Click" CssClass="btn btn-success" />
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblErr" runat="server" ForeColor="Red"></asp:Label>
    </div>
</asp:Content>

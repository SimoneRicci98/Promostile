<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="_Default" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <p style="text-align:center">Benvenuto <asp:Label ID="lblCLiente" runat="server" Text=""></asp:Label>, qui sono mostrati gli articoli acquistabili
    </p>
    <div class="col-md-12">
        <asp:GridView ID="grdArticoli" runat="server" AutoGenerateColumns="False" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None" Width="100%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                <asp:ImageField DataImageUrlField="img" HeaderText="Immagine" ItemStyle-Width="60px" ControlStyle-Width="100" ControlStyle-Height="100">
            <ControlStyle Height="150px" Width="150px"></ControlStyle>
            <ItemStyle Width="60px"></ItemStyle>

                </asp:ImageField>
                <asp:BoundField DataField="Codice" HeaderText="Codice articolo" />
                <asp:BoundField DataField="Desc" HeaderText="Descrizione" />
                <asp:BoundField DataField="Prezzo" HeaderText="Prezzo" />
                <asp:TemplateField HeaderText="Quantità nel magazzino">
                    <ItemTemplate>
                        <asp:Label ID="lblQtaMag" runat="server" Text=""></asp:Label>
                        </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Quantità nel carrello">
                    <ItemTemplate>
                       <asp:TextBox Width="40%" ID="txtQta" runat="server" ></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Taglie disponibli">
                    <ItemTemplate>
                        <asp:DropDownList ID="Taglie" runat="server"></asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>
             <asp:ButtonField HeaderText="Aggiungi" Text="Aggiungi" />
            </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        </asp:GridView>
    </div>
</asp:Content>
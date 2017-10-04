<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GestisciProdotti.aspx.cs" Inherits="GestisciProdotti" %>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="col-xs-12">
        Aggiungi qui i nuovi prodotti
   <asp:GridView ID="grvProdotti" runat="server" OnRowUpdating="gridView_RowUpdating" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleting="grvStudentDetails_RowDeleting" ShowFooter="True" Style="text-align: left" Width="95%" >
                   <Columns>
                       <asp:BoundField DataField="RowNumber" HeaderText="Nr." />
                          <asp:TemplateField HeaderText="Codice">
                           <ItemTemplate>
                               <asp:TextBox Width="80%" ID="txtCodice" runat="server" ></asp:TextBox>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="Descrizione">
                           <ItemTemplate>
                               <asp:TextBox Width="80%" ID="txtDesc" runat="server" ></asp:TextBox>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="Prezzo">
                           <ItemTemplate>
                               <asp:TextBox Width="80%" ID="txtPrezzo" runat="server" ></asp:TextBox>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="Quantità">
                           <ItemTemplate>
                               <asp:TextBox Width="80%" ID="txtQta" runat="server"></asp:TextBox>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="Marca">
                           <ItemTemplate>
                               <asp:TextBox Width="80%" ID="txtMarca" runat="server" ></asp:TextBox>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="Taglie">
                           <ItemTemplate>
                               <asp:TextBox Width="80%" ID="txtTaglie" runat="server" ></asp:TextBox>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField HeaderText="Immagine">
                           <ItemTemplate>
                               <asp:FileUpload ID="FileUpload1" OnClick="UploadBtn_Click" runat="server"  />
                           </ItemTemplate>
                          <FooterStyle HorizontalAlign="Center" />
                           <FooterTemplate>
                               <asp:Button ID="ButtonAdd" CssClass="btn btn-primary" runat="server" OnClick="ButtonAdd_Click" Text="Aggiungi una riga" />
                           </FooterTemplate>
                       </asp:TemplateField>
                       <asp:CommandField ShowDeleteButton="True" />
                   </Columns>
                   <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                   <RowStyle BackColor="#EFF3FB" />
                   <EditRowStyle BackColor="#2461BF" />
                   <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                   <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                   <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                   <AlternatingRowStyle BackColor="White" />
               </asp:GridView>
            
            <br /><br />
        <asp:Button ID="btnSave" runat="server" CssClass="btn btn-primary" OnClick="btnSave_Click" Text="Salva dati" />
    </div>
</asp:Content>
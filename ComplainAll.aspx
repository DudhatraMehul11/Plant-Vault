<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="ComplainAll.aspx.cs" Inherits="ComplainAll" %>

<asp:Content ID="Content1" ContentPlaceHolderId="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="css/style.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderId="ContentPlaceHolder1" runat="Server">
    <div class="main">
        <div class="content">
            <div class="section group">
                <div class="col span_2_of_3">
                    <div class="contact-form">
                        <h2>Complain All</h2>

                    </div>
                </div>
                <%--<asp:GridView ID="" runat="server"  
   >
 </asp:GridView>--%>
                <div class="col span_3_of_2">
                    <asp:GridView runat="server" ID="datagrid"
                        CssClass="mydatagrid"
                        PagerStyle-CssClass="pager"
                        HeaderStyle-CssClass="header"
                        RowStyle-CssClass="rows"
                        AllowPaging="True"
                        AutoGenerateColumns="False"
                        DataKeyNames="id" >

                        <Columns>
                            <asp:TemplateField HeaderText="#" >
                                <ItemTemplate>
                                    <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="Name" DataField="name" />
                            <asp:BoundField HeaderText="modified_date" DataField="modified_date" />
                            <asp:BoundField HeaderText="entry_date" DataField="entry_date" />
                            <asp:BoundField HeaderText="registration_id" DataField="registration_id" />
                            <asp:BoundField HeaderText="login_id" DataField="login_id" />
                            <asp:BoundField HeaderText="description" DataField="description" />
                        </Columns>
                    </asp:GridView>

                </div>
            </div>
        </div>
    </div>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="Holder.aspx.cs" Inherits="Holder" %>

<asp:Content ID="Content1" ContentPlaceHolderId="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderId="ContentPlaceHolder1" runat="Server">
    <div class="main">
        <div class="content">
            <div class="section group">
                <div class="col span_2_of_3">
                    <div class="contact-form">
                        <h2>View Holder</h2>

                    </div>
                </div>

                <div class="col span_3_of_2">
                    <asp:GridView runat="server" ID="datagrid"
                        CssClass="mydatagrid"
                        PagerStyle-CssClass="pager"
                        HeaderStyle-CssClass="header"
                        RowStyle-CssClass="rows"
                        AllowPaging="True"
                        AutoGenerateColumns="False"
                        DataKeyNames="id">
                        <Columns>
                            <asp:TemplateField HeaderText="#" >
                                <ItemTemplate>
                                    <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                </ItemTemplate>

                                <ItemStyle></ItemStyle>
                            </asp:TemplateField>

                            <asp:BoundField HeaderText="Name" DataField="name" />
                            <asp:BoundField HeaderText="address" DataField="address" />
                            <asp:BoundField HeaderText="Postal Code" DataField="postal_code" />
                            <asp:BoundField HeaderText="Office No" DataField="office_no" />
                            <asp:BoundField HeaderText="Extension No" DataField="extention_no" />
                            <asp:BoundField HeaderText="Fax No" DataField="fax_no" />
                            <asp:BoundField HeaderText="Website" DataField="website" />
                            <asp:BoundField HeaderText="contact_name" DataField="contact_name" />
                            <asp:BoundField HeaderText="service_email_id" DataField="service_email_id" />
                            <asp:BoundField HeaderText="info_email_id" DataField="info_email_id" />
                            <asp:BoundField HeaderText="short_info" DataField="short_info" />

                        </Columns>
                    </asp:GridView>

                </div>
            </div>
        </div>
    </div>

</asp:Content>


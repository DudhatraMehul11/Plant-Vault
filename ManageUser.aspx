<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="ManageUser.aspx.cs" Inherits="ManageUser" %>

<asp:Content ID="Content1" ContentPlaceHolderId="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderId="ContentPlaceHolder1" runat="Server">
    <div class="main">
        <div class="content">
            <div class="section group">
                <div class="col span_2_of_3">
                    <div class="contact-form">
                        <h2>All User</h2>

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
                            <asp:TemplateField HeaderText="#">
                                <ItemTemplate>
                                    <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                </ItemTemplate>

                                <ItemStyle></ItemStyle>
                            </asp:TemplateField>
                            <%--select registration_id, , , last_name, email_id, mobile_no, phone_no, gender, birth_date, postal_code, address, city_id, state_id, country_id, login_id--%>
                            <asp:BoundField HeaderText="First Name" DataField="first_name" />
                            <asp:BoundField HeaderText="Middle Name" DataField="middle_name" />
                            <asp:BoundField HeaderText="Last Name" DataField="last_name" />
                            <asp:BoundField HeaderText="Email ID" DataField="email_id" />
                            <asp:BoundField HeaderText="Mobile No" DataField="mobile_no" />
                            <asp:BoundField HeaderText="Phone No" DataField="phone_no" />
                            <asp:BoundField HeaderText="Gender" DataField="gender" />
                            <asp:BoundField HeaderText="Postal Code" DataField="postal_code" />
                            <asp:BoundField HeaderText="Address" DataField="address" />
                            <asp:BoundField HeaderText="City ID" DataField="city_id" />
                             <asp:BoundField HeaderText="State ID" DataField="state_id" />
                            <asp:BoundField HeaderText="Country ID" DataField="country_id" />
                            <asp:BoundField HeaderText="Login ID" DataField="login_id" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>


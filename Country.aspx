<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="Country.aspx.cs" Inherits="Country" %>

<asp:Content ID="Content1" ContentPlaceHolderId="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderId="ContentPlaceHolder1" runat="Server">
    <div class="main">
        <div class="content">
            <div class="section group">
                <div class="col span_2_of_3">
                    <div class="contact-form">
                        <h2>Country</h2>
                        <asp:HiddenField ID="hdnId" runat="server" />

                        <div class="row">

                            <%--<span>
                                         <asp:Label ID="lblCountryid" runat="server" Text="Country Id" Width="75px" Font-Size="13px"></asp:Label>
                                    </span>
                                    <div class="col-12 col-lg-4 wow fadeInUp text-center" data-wow-delay="100ms"></div>
                                    <div class="col-12 col-lg-4 wow fadeInUp text-center" data-wow-delay="100ms">

                                        <span>
                                            
                                            <asp:DropDownList ID="ddlcountryid" runat="server" >
                                                <asp:ListItem Text="text" />
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RFVName" runat="server" ErrorMessage="Please Enter Id" ControlToValidate="ddlcountryid" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </span>--%>
                            <div class="col-12 col-lg-4 wow fadeInUp text-center" data-wow-delay="100ms"></div>
                        </div>
                        <div>
                            <span>
                                <asp:Label ID="lblcountryname" runat="server" Text="Name" Width="75px" Font-Size="13px"></asp:Label>
                            </span>
                            <span>

                                <asp:TextBox ID="txtcountryname" ToolTip="name" class="bigTextBox" runat="server"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RFVcountryname" runat="server" ErrorMessage="Please Enter Country Name" ControlToValidate="txtcountryname" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div>
                            <span>
                                <asp:Label ID="lblcountrycode" runat="server" Text="Code" Width="75px" Font-Size="13px"></asp:Label>
                            </span>
                            <span>

                                <asp:TextBox ID="txtcountrycode" ToolTip="code" class="bigTextBox" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVcountrycode" runat="server" ErrorMessage="Please Enter Country Code" ControlToValidate="txtcountrycode" ForeColor="Red"></asp:RequiredFieldValidator>

                            </span>
                        </div>


                        <div>
                            <span>

                                <asp:Button ID="btnSave" runat="server" value="Submit" ToolTip="Submit your details. We will contact you as soon as posibile." class="submitButton" Text="Save" OnClick="btnSave_Click" />

                                <asp:Button ID="btnUpdate" runat="server" value="Update" class="updateButton" Text="Update" OnClick="btnUpdate_Click" />

                                <asp:Button ID="btnDelete" runat="server" value="Delete" class="deleteButton" Text="Delete" OnClick="btnDelete_Click" />

                                <asp:Button ID="btnCancel" runat="server" value="Cancel" class="cancelButton" Text="Cancel" OnClick="btnCancel_Click" />
                            </span>
                        </div>

                    </div>


                    <div class="col span_3_of_3">
                            <asp:GridView ID="datagrid" runat="server"
                                AutoGenerateSelectButton="True"
                                AutoGenerateColumns="False"
                                DataKeyNames="id"
                                CssClass="mydatagrid"
                                PagerStyle-CssClass="pager"
                                HeaderStyle-CssClass="header"
                                RowStyle-CssClass="rows"
                                AllowPaging="True"
                                OnSelectedIndexChanging="grdView_SelectedIndexChanging">
                                <Columns>
                                    <asp:TemplateField HeaderText="#">
                                        <ItemTemplate>
                                            <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                        </ItemTemplate>

                                        <ItemStyle></ItemStyle>
                                    </asp:TemplateField>
                                    <asp:BoundField HeaderText="Name" DataField="Name" />
                                    <asp:BoundField HeaderText="code" DataField="code" />
                                </Columns>
                            </asp:GridView>
                        </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>


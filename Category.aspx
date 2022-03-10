<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="Category" %>

<asp:Content ID="Content1" ContentPlaceHolderId="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderId="ContentPlaceHolder1" runat="Server">
    <div class="main">
        <div class="content">
            <div class="section group">
                <div class="col span_2_of_3">
                    <div class="contact-form">
                        <h2>Category</h2>
                        <asp:hiddenfield runat="server" id="hdnId"></asp:hiddenfield>
                        <div class="row">

                            <%--<span>
                                <asp:Label ID="lblCategoryid" runat="server" Text="ID" Width="75px" Font-Size="13px"></asp:Label>
                            </span>
                            <div class="col-12 col-lg-4 wow fadeInUp text-center" data-wow-delay="100ms"></div>
                            <div class="col-12 col-lg-4 wow fadeInUp text-center" data-wow-delay="100ms">

                                <span>

                                    <asp:DropDownList ID="ddlCategoryid" runat="server">
                                        <asp:ListItem Text="0" />
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RFVCategoryid" runat="server" ErrorMessage="Please Enter Id" ControlToValidate="ddlCategoryid" ForeColor="Red"></asp:RequiredFieldValidator>
                                </span>
                                <div class="col-12 col-lg-4 wow fadeInUp text-center" data-wow-delay="100ms"></div>
                            </div>--%>
                            <div>
                                <span>
                                    <asp:Label ID="lblCategoryname" runat="server" Text="Name" Width="75px" Font-Size="13px"></asp:Label>
                                </span>
                                <span>

                                    <asp:TextBox ID="txtCategoryname" ToolTip="name" class="bigTextBox" runat="server"></asp:TextBox>

                                    <asp:RequiredFieldValidator ID="RFVCategoryname" runat="server" ErrorMessage="Please Enter Your Category" ControlToValidate="txtCategoryname" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </span>
                            </div>
                            <div>
                                <span>
                                    <asp:Label ID="lblCategoryDes" runat="server" Text="Description" Width="75px" Font-Size="13px"></asp:Label>
                                </span>
                                <span>

                                    <asp:TextBox ID="txtCategoryDes" ToolTip="name" TextMode="MultiLine" Width="495px" class="bigTextBox" runat="server"></asp:TextBox>

                                    <asp:RequiredFieldValidator ID="RFVCategoryDes" runat="server" ErrorMessage="Please Enter Category Description" ControlToValidate="txtCategoryDes" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </span>
                            </div>

                            <div>
                                <span>


                                    <asp:Button ID="btnSave" runat="server" value="Submit" class="submitButton" Text="Save" OnClick="btnSave_Click" />

                                    <asp:Button ID="btnUpdate" runat="server" value="Update" class="updateButton" Text="Update" OnClick="btnUpdate_Click" />

                                    <asp:Button ID="btnDelete" runat="server" value="Delete" class="deleteButton" Text="Delete" OnClick="btnDelete_Click" />

                                    <asp:Button ID="btnCancel" runat="server" value="Cancel" class="cancelButton" Text="Cancel" OnClick="btnCancel_Click" />
                                </span>
                            </div>

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
                                OnSelectedIndexChanging="grdView_SelectedIndexChanging" >
                                
                                <Columns>
                                    <asp:TemplateField HeaderText="#" ItemStyle-Width="100" >
                                        <ItemTemplate>
                                            <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField HeaderText="Name" DataField="Name" />
                                    <asp:BoundField HeaderText="Description" DataField="description" />
                                </Columns>
                            </asp:GridView>
                        </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

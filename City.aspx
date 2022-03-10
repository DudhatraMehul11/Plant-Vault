<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="City.aspx.cs" Inherits="City" %>

<asp:Content ID="Content1" ContentPlaceHolderId="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderId="ContentPlaceHolder1" runat="Server">
    <div class="main">
        <div class="content">
            <div class="section group">
                <div class="col span_2_of_3">
                    <div class="contact-form">
                        <h2>City</h2>
                        <asp:HiddenField runat="server" ID="hdnId"></asp:HiddenField>
                        <div class="row">

                            <%-- <span>
                                <asp:Label ID="lblCityid" runat="server" Text="ID" Width="75px" Font-Size="13px"></asp:Label>
                            </span>
                            <div class="col-12 col-lg-4 wow fadeInUp text-center" data-wow-delay="100ms"></div>
                            <div class="col-12 col-lg-4 wow fadeInUp text-center" data-wow-delay="100ms">

                                <span>

                                    <asp:DropDownList ID="ddlCityid" runat="server">
                                        <asp:ListItem Text="0" />
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RFVCityid" runat="server" ErrorMessage="Please Enter Id" ControlToValidate="ddlCityid" ForeColor="Red"></asp:RequiredFieldValidator>
                                </span>
                                <div class="col-12 col-lg-4 wow fadeInUp text-center" data-wow-delay="100ms"></div>
                            </div>--%>
                            <div>
                                <span>
                                    <asp:Label ID="lblCityname" runat="server" Text="Name" Width="75px" Font-Size="13px"></asp:Label>
                                </span>
                                <span>

                                    <asp:TextBox ID="txtCityname" ToolTip="name" class="bigTextBox" runat="server"></asp:TextBox>

                                    <asp:RequiredFieldValidator ID="RFVCityname" runat="server" ErrorMessage="Please Enter Your City" ControlToValidate="txtCityname" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <span>
                                    <asp:Label ID="lblCitycode" runat="server" Text="Code" Width="75px" Font-Size="13px"></asp:Label>
                                </span>
                                <span>

                                    <asp:TextBox ID="txtCitycode" ToolTip="code" class="bigTextBox" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RFVCitycode" runat="server" ErrorMessage="Please Enter City Code" ControlToValidate="txtCitycode" ForeColor="Red"></asp:RequiredFieldValidator>

                                </span>
                            </div>
                            <%-- <div>
                                <span>
                                    <asp:Label ID="lblState" runat="server" Text="Search State" Width="104px" Font-Size="13px"></asp:Label>
                                </span>
                                <span>

                                    <asp:DropDownList ID="ddlState" runat="server">
                                        <asp:ListItem Text="0" />
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RFVState" runat="server" ErrorMessage="Please Enter Select City" ControlToValidate="ddlState" ForeColor="Red"></asp:RequiredFieldValidator>

                                </span>
                            </div>
                            <div>
                                <span>
                                    <asp:Label ID="lblcountry" runat="server" Text="Search Country" Width="104px" Font-Size="13px"></asp:Label>
                                </span>
                                <span>

                                    <asp:DropDownList ID="ddlcountry" runat="server">
                                        <asp:ListItem Text="0" />
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RFVCountry" runat="server" ErrorMessage="Please Enter Select Country" ControlToValidate="ddlcountry" ForeColor="Red"></asp:RequiredFieldValidator>

                                </span>
                            </div>--%>


                            <div>
                                <span>


                                    <asp:Button ID="btnSave" runat="server" value="Submit" class="submitButton" Text="Save" OnClick="btnSave_Click" />

                                    <asp:Button ID="btnUpdate" runat="server" value="Update" class="updateButton" OnClick="btnUpdate_Click" Text="Update" />

                                    <asp:Button ID="btnDelete" runat="server" value="Delete" class="deleteButton" OnClick="btnDelete_Click" Text="Delete" />

                                    <asp:Button ID="btnCancel" runat="server" value="Cancel" class="cancelButton" OnClick="btnCancel_Click" Text="Cancel" />
                                </span>
                            </div>

                        </div>
                    </div>
                    <div class="col span_3_of_3">
                        
                            <asp:GridView runat="server" ID="datagrid"
                                AutoGenerateSelectButton="True"
                                CssClass="mydatagrid"
                                PagerStyle-CssClass="pager"
                                HeaderStyle-CssClass="header"
                                RowStyle-CssClass="rows"
                                AllowPaging="True"
                                AutoGenerateColumns="False"
                                DataKeyNames="id"
                                OnSelectedIndexChanging="grdView_SelectedIndexChanging"
                                OnPageIndexChanging="datagrid_PageIndexChanging">
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

    </span>
    
</asp:Content>


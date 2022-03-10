<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="State.aspx.cs" Inherits="State" %>

<asp:Content ID="Content1" ContentPlaceHolderId="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderId="ContentPlaceHolder1" runat="Server">
    <div class="main">
        <div class="content">
            <div class="section group">
                <div class="col span_2_of_3">
                    <div class="contact-form">
                        <h2>State</h2>
                        <asp:HiddenField ID="hdnId" runat="server" />

                            <div class="row">

                            <%-- <span>
                                <asp:Label ID="lblStateid" runat="server" Text="State Id" Width="75px" Font-Size="13px"></asp:Label>
                            </span>
                            <div class="col-12 col-lg-4 wow fadeInUp text-center" data-wow-delay="100ms"></div>
                            <div class="col-12 col-lg-4 wow fadeInUp text-center" data-wow-delay="100ms">

                                <span>

                                    <asp:DropDownList ID="ddlStateid" runat="server">
                                        <asp:ListItem Text="0" />
                                    </asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RFVStateid" runat="server" ErrorMessage="Please Enter Id" ControlToValidate="ddlStateid" ForeColor="Red"></asp:RequiredFieldValidator>
                                </span>--%>
                            <div class="col-12 col-lg-4 wow fadeInUp text-center" data-wow-delay="100ms"></div>
                        </div>
                        <div>
                            <span>
                                <asp:Label ID="lblStatename" runat="server" Text="Name" Width="75px" Font-Size="13px"></asp:Label>
                            </span>
                            <span>

                                <asp:TextBox ID="txtStatename" ToolTip="name" class="bigTextBox" runat="server"></asp:TextBox>

                                <asp:RequiredFieldValidator ID="RFVStatename" runat="server" ErrorMessage="Please Enter Your State" ControlToValidate="txtStatename" ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        <div>
                            <span>
                                <asp:Label ID="lblStatecode" runat="server" Text="Code" Width="75px" Font-Size="13px"></asp:Label>
                            </span>
                            <span>

                                <asp:TextBox ID="txtStatecode" ToolTip="code" class="bigTextBox" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVStatecode" runat="server" ErrorMessage="Please Enter State Code" ControlToValidate="txtStatecode" ForeColor="Red"></asp:RequiredFieldValidator>

                            </span>
                        </div>
                        <%--<div>
                            <span>
                                <asp:Label ID="lblcountry" runat="server" Text="Search Country" Width="104px" Font-Size="13px"></asp:Label>
                            </span>
                            <span>

                                <asp:DropDownList ID="ddlcountry" runat="server">
                                    <asp:ListItem Text="0" />
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter State Code" ControlToValidate="txtStatecode" ForeColor="Red"></asp:RequiredFieldValidator>

                            </span>
                        </div>--%>


                        <div>
                            <span>


                                <asp:Button ID="btnSave" runat="server" value="Submit" class="submitButton" Text="Save" OnClick="btnSave_Click" />

                                <asp:Button ID="btnUpdate" runat="server" value="Update" class="updateButton" Text="Update" OnClick="btnUpdate_Click" />

                                    <asp:Button ID="btnDelete" runat="server" value="Delete" class="deleteButton" Text="Delete" OnClick="btnDelete_Click" />

                                <asp:Button ID="btnCancel" runat="server" value="Cancel" class="cancelButton" Text="Cancel" OnClick="btnCancel_Click" />
                            </span>
                        </div>

                    </div>
               
                <div class="col span_3_of_3">
                        <asp:GridView runat="server" ID="datagrid"
                                AutoGenerateSelectButton="True"
                                AutoGenerateColumns="False"
                                DataKeyNames="id"
                                CssClass="mydatagrid"
                                PagerStyle-CssClass="pager"
                                HeaderStyle-CssClass="header"
                                RowStyle-CssClass="rows"
                                AllowPaging="True" PageSize="10"
                                OnSelectedIndexChanging="grdView_SelectedIndexChanging" OnPageIndexChanging="datagrid_PageIndexChanging" >
                                
                                <Columns>
                                    <asp:TemplateField HeaderText="#" >
                                        <ItemTemplate>
                                            <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                        </ItemTemplate>

                                        <ItemStyle Width="100px"></ItemStyle>
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



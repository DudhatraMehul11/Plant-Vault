<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="userchangepassword.aspx.cs" Inherits="userchangepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderId="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderId="ContentPlaceHolder1" Runat="Server">
    <div class="main">
        <div class="content">
            <div class="section group">
                <div class="col span_2_of_3">
                    <div class="contact-form">
                        <h2>Change Password</h2>
                        <asp:Label ID="lblError" runat="server"></asp:Label>
                        <div class="row">

                            <span>
                                <asp:Label ID="lblOldPassword" runat="server" Text="Old Password" Width="75px" Font-Size="13px"></asp:Label>
                            </span>
                            <div class="col-12 col-lg-4 wow fadeInUp text-center" data-wow-delay="100ms"></div>
                            <div class="col-12 col-lg-4 wow fadeInUp text-center" data-wow-delay="100ms">

                                <span>
                                    <asp:TextBox ID="txtOldPassword" ToolTip="name" class="bigTextBox" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RFVOldPassword" runat="server" ErrorMessage="Please Enter Old Password" ControlToValidate="txtOldPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                                </span>
                                <div class="col-12 col-lg-4 wow fadeInUp text-center" data-wow-delay="100ms"></div>
                            </div>
                            <div>
                                <span>
                                    <asp:Label ID="lblNewPassword" runat="server" Text="New Password" Width="75px" Font-Size="13px"></asp:Label>
                                </span>
                                <span>

                                    <asp:TextBox ID="txtNewPassword" ToolTip="name" class="bigTextBox" runat="server" TextMode="Password"></asp:TextBox>

                                    <asp:RequiredFieldValidator ID="RFVNewPassword" runat="server" ErrorMessage="Please Enter New Password" ControlToValidate="txtNewPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                                </span>
                            </div>
                            <div>
                                <span>
                                    <asp:Label ID="lblConformPassword" runat="server" Text="Conform Password" Width="75px" Font-Size="13px"></asp:Label>
                                </span>
                                <span>

                                    <asp:TextBox ID="txtConformPassword" ToolTip="name" class="bigTextBox" runat="server" TextMode="Password"></asp:TextBox>

                                    <asp:RequiredFieldValidator ID="RFVConformPassword" runat="server" ErrorMessage="Please Enter Conform Password" ControlToValidate="txtConformPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                                </span>
                            </div>

                            <div>
                                <span>


                                    <asp:Button ID="btnChangePassword" runat="server" value="Submit" class="submitButton" Text="ChangePassword" OnClick="btnChangePassword_Click" />

                                    <asp:Button ID="btnCancel" runat="server" value="Cancel" class="cancelButton" Text="Cancel" OnClick="btnCancel_Click" />
                                </span>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>
</asp:Content>


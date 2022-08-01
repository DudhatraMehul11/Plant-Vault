    <%@ Page Title="" Language="C#" MasterPageFile="~/homemaster.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderId="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderId="ContentPlaceHolder1" runat="Server">
    
    <div>
        <div class="main">
            <div class="content">
                <div class="section group">
                    <div class="col span_2_of_3">
                        <div class="contact-form">
                            <h2>Login</h2>
                            <asp:HiddenField runat ="server" ID="hdnType" />
                            <asp:HiddenField runat ="server" ID="hdnPlantId" />
                            <div class="row">

                                <span>                                   
                                     <asp:Label ID="lblUserName" runat="server" Text="User Name" Width="75px" Font-Size="13px"></asp:Label>
                                </span>
                                <div class="col-12 col-lg-4 wow fadeInUp text-center" data-wow-delay="100ms"></div>
                                <div class="col-12 col-lg-4 wow fadeInUp text-center" data-wow-delay="100ms">

                                    <span>
                                        <asp:TextBox ID="txtuname" ToolTip="Name" class="bigTextBox" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RFVUsername" runat="server" ErrorMessage="Please Enter UserName" ControlToValidate="txtuname" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </span>
                                    <div class="col-12 col-lg-4 wow fadeInUp text-center" data-wow-delay="100ms"></div>
                                </div>
                                <div>
                                    <span>
                                        <asp:Label ID="lblPassword" runat="server" Text="Password" Width="75px" Font-Size="13px"></asp:Label>
                                    </span>
                                    <span>
                                        <asp:TextBox ID="txtpassword" Textmode="password" ToolTip="password" class="bigTextBox" runat="server"></asp:TextBox>

                                    </span>
                                </div>


                                <div>
                                    <span>
                                    <asp:Button ID="btnsave" runat="server" value="Submit" tooltip="Submit your details. We will contact you as soon as posibile." class="submitButton" Text="Login" OnClick="btnsave_Click" />
                                    <asp:Button ID="btncancel" runat="server" value="Cancel" class="cancelButton" Text="cancel" OnClick="btncancel_Click" />

                                        <asp:label runat="server" text="" id="lblerror"></asp:label>
                                    </span>
                                </div>

                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>


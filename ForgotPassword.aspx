<%@ Page Title="" Language="C#" MasterPageFile="~/homemaster.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderId="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderId="ContentPlaceHolder1" Runat="Server">
    <div class="main">
        <div class="content">
            <div class="section group">
                <div class="col span_2_of_3">
                    <div class="contact-form">
                        <h2>Forgot Password</h2>

                        <div class="row">

                            <span>
                                <asp:Label ID="lblforgotpassword" runat="server" Text="Enter an Email or Mobile no." Width="250px" Font-Size="13px"></asp:Label>
                            </span>
                            <div class="col-12 col-lg-4 wow fadeInUp text-center" data-wow-delay="100ms"></div>
                            <div class="col-12 col-lg-4 wow fadeInUp text-center" data-wow-delay="100ms">

                                <span>
                                    <asp:TextBox ID="txtforgotpassword" ToolTip="name" class="bigTextBox" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RFVforgotpassword" runat="server" ErrorMessage="Please Enter Mobile No. or Email" ControlToValidate="txtforgotpassword" ForeColor="Red"></asp:RequiredFieldValidator>
                                </span>
                                <div class="col-12 col-lg-4 wow fadeInUp text-center" data-wow-delay="100ms"></div>
                            </div>
                            
                            

                            <div>
                                <span>


                                    <asp:Button ID="btnSave" runat="server" value="Submit" class="successButton" Text="Reset Password" />


                                    
                                </span>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>
</asp:Content>





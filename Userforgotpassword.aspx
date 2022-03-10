<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="Userforgotpassword.aspx.cs" Inherits="Userforgotpassword" %>

<asp:Content ID="Content1" ContentPlaceHolderId="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderId="ContentPlaceHolder1" Runat="Server">
    <div>
        <div class="main">
            <div class="content">
                <div class="section group">
                    <div class="col span_2_of_3">
                        <div class="contact-form">
                            

                            <div class="row">

                                <span>                                   
                                     <asp:Label ID="lblUseremail" runat="server" Text="email" Width="75px" Font-Size="13px"></asp:Label>
                                </span>
                                <div class="col-12 col-lg-4 wow fadeInUp text-center" data-wow-delay="100ms"></div>
                                <div class="col-12 col-lg-4 wow fadeInUp text-center" data-wow-delay="100ms">

                                    <span>
                                        <asp:TextBox ID="txtemail" ToolTip="Name" class="bigTextBox" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter email" ControlToValidate="txtemail" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </span>
                                    <div class="col-12 col-lg-4 wow fadeInUp text-center" data-wow-delay="100ms"></div>
                                </div>
                                
                                

                                <div>
                                    <span>
                                    <asp:Button ID="btnsubmit" runat="server" value="Submit" tooltip="Submit your details. We will contact you as soon as posibile." class="submitButton" Text="submit" />
                                    
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


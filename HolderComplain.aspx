<%@ Page Title="" Language="C#" MasterPageFile="~/Holder.master" AutoEventWireup="true" CodeFile="HolderComplain.aspx.cs" Inherits="HolderComplain" %>

<asp:Content ID="Content1" ContentPlaceHolderId="ContentPlaceHolder2" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderId="ContentPlaceHolder1" runat="Server">
    <div class="main">
        <div class="content">
            <div class="section group">
                <div class="col span_2_of_3">
                    <div class="contact-form">
                        <h2>Complain</h2>

                        <div class="row">

                            <span>
                                <asp:Label ID="lblName" runat="server" Text="Name" Width="75px" Font-Size="13px"></asp:Label>
                            </span>
                            <div class="col-12 col-lg-4 wow fadeInUp text-center" data-wow-delay="100ms"></div>
                            <div class="col-12 col-lg-4 wow fadeInUp text-center" data-wow-delay="100ms">

                                <span>

                                    <asp:TextBox ID="txtName" ToolTip="Name" class="bigTextBox" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RFVName" runat="server" ErrorMessage="Please Enter Name" ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator>
                                </span>
                                <div class="col-12 col-lg-4 wow fadeInUp text-center" data-wow-delay="100ms"></div>
                            </div>
                            <div>
                                <span>
                                    <asp:Label ID="lblEmail" runat="server" Text="E-Mail" Width="75px" Font-Size="13px"></asp:Label>
                                </span>
                                <span>

                                    <asp:TextBox ID="txtEmail" ToolTip="Email" class="bigTextBox" runat="server"></asp:TextBox>

                                    <asp:RequiredFieldValidator ID="RFVEmail" runat="server" ErrorMessage="Please Enter Email" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="REVEmail" runat="server" ErrorMessage="Please Enter Valid Email" ForeColor="Red" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$" ControlToValidate="txtEmail"></asp:RegularExpressionValidator>
                                </span>

                            </div>
                            <div>
                                <span>
                                    <asp:Label ID="lblPhone" runat="server" Text="Phone" Width="75px" Font-Size="13px"></asp:Label>
                                </span>
                                <span>

                                    <asp:TextBox ID="txtPhone" ToolTip="Phone" class="bigTextBox" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RFVPhone" runat="server" ErrorMessage="Please Enater Mobile No" ControlToValidate="txtPhone" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="REVPhone" runat="server" ErrorMessage="Please Enter Valid Mobile Number" ControlToValidate="txtPhone" ValidationExpression="[0-9]{10}" ForeColor="Red"></asp:RegularExpressionValidator>
                                </span>
                            </div>
                            <div>
                                <span>
                                    <asp:Label ID="lblSubject" runat="server" Text="Subject" Width="75px" Font-Size="13px"></asp:Label>
                                </span>
                                <span>

                                    <asp:TextBox ID="txtSubject" ToolTip="Subject" class="bigTextBox" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RFVSubject" runat="server" ErrorMessage="Please Enter Subject" ControlToValidate="txtSubject" ForeColor="Red"></asp:RequiredFieldValidator>
                                </span>
                            </div>
                            <div>
                                <span>
                                    <asp:Label ID="lblcomplain" runat="server" Text="Post Complain" Width="100px" Font-Size="13px"></asp:Label>
                                </span>
                                <span>
                                    <asp:TextBox ID="txtComplain" ToolTip="Complain" TextMode="MultiLine" class="bigTextBox" Width="495px" runat="server"></asp:TextBox>

                                    <asp:RequiredFieldValidator ID="RFVComplain" runat="server" ErrorMessage="Please Enter Complain" ControlToValidate="txtComplain" ForeColor="Red"></asp:RequiredFieldValidator>

                                </span>
                            </div>
                            <div>
                                <span>


                                    <asp:Button ID="btnSave" runat="server" value="Submit" class="submitButton" Text="Submit" />
                                    <asp:Button ID="btnCancel" runat="server" value="Cancel" class="cancelButton" Text="Cancel" />
                                </span>
                            </div>

                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>
</asp:Content>


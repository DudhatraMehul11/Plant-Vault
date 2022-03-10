<%@ Page Title="" Language="C#" MasterPageFile="~/homemaster.master" AutoEventWireup="true" CodeFile="HomeFeedback.aspx.cs" Inherits="HomeFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderId="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderId="ContentPlaceHolder1" runat="Server">
    <div>
        <div class="main">
            <div class="content">
                <div class="section group">
                    <div class="col span_2_of_3">
                        <div class="contact-form">
                            <h2>Feddback</h2>

                            <div>
                                <span>
                                    <asp:Label ID="lblName" runat="server" Text="Name" Width="75px" Font-Size="13px"></asp:Label>
                                </span>
                                <span>

                                    <asp:TextBox ID="txtName" class="bigTextBox" ToolTip="Name" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RFVName" runat="server" ErrorMessage="Please Enter Name" ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator>
                                </span>
                            </div>
                            <div>
                                <span>
                                    <asp:Label ID="lblEmail" runat="server" Text="E-Mail" Width="75px" Font-Size="13px"></asp:Label>
                                </span>
                                <span>

                                    <asp:TextBox ID="txtEmail" ToolTip="E-mail" class="bigTextBox" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RFVEmail" runat="server" ErrorMessage="Please Enter Email" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="REVEmail" runat="server" ErrorMessage="Please Enter Valid Email" ForeColor="Red" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$" ControlToValidate="txtEmail"></asp:RegularExpressionValidator>
                                </span>
                            </div>
                            <div>
                                <span>
                                    <asp:Label ID="lblPhone" runat="server" Text="Phone" Width="75px" Font-Size="13px"></asp:Label>
                                </span>
                                <span>

                                    <asp:TextBox ID="txtPhone" class="bigTextBox" ToolTip="Phone" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RFVPhone" runat="server" ErrorMessage="Please Enater Mobile No" ControlToValidate="txtPhone" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="REVPhone" runat="server" ErrorMessage="Please Enter Valid Mobile Number" ControlToValidate="txtPhone" ValidationExpression="[0-9]{10}" ForeColor="Red"></asp:RegularExpressionValidator>
                                </span>
                            </div>
                            <div>
                                <span>
                                    <asp:Label ID="lblSubject" runat="server" Text="Subject" Width="75px" Font-Size="13px"></asp:Label>
                                </span>
                                <span>

                                    <asp:TextBox ID="txtSub" ToolTip="Subject" class="bigTextBox" TextMode="MultiLine" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RFVSubject" runat="server" ErrorMessage="Please Enter Subject" ControlToValidate="txtSub" ForeColor="Red"></asp:RequiredFieldValidator>

                                </span>

                            </div>
                            <div>
                                <span>
                                    <asp:Label ID="lblFeedBack" runat="server" Text="Your FeedBack" Width="75px" Font-Size="13px"></asp:Label>
                                </span>
                                <span>

                                    <asp:TextBox ID="txtFeedBack" ToolTip="FeedBack" class="bigTextBox" TextMode="MultiLine" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RFVFeedBack" runat="server" ErrorMessage="Please Enter FeedBack" ControlToValidate="txtFeedBack" ForeColor="Red"></asp:RequiredFieldValidator>

                                </span>

                            </div>
                            <div>
                                <span>
                                    <asp:Label ID="lblRating" runat="server" Text="Rating" Width="75px" Font-Size="13px"></asp:Label>
                                </span>
                                <span>

                                    <asp:RadioButtonList ID="rblRating" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem Text="1" />
                                        <asp:ListItem Text="2" />
                                        <asp:ListItem Text="3" />
                                        <asp:ListItem Text="4" />
                                        <asp:ListItem Text="5" />
                                    </asp:RadioButtonList>
                                    <asp:RequiredFieldValidator ID="RFVRating" runat="server" ErrorMessage="Please Select Rating" ControlToValidate="rblRating" ForeColor="Red"></asp:RequiredFieldValidator>

                                </span>

                            </div>
                            <div>
                                <span>


                                    <asp:Button ID="btnSave" runat="server" ToolTip="Submit your details. We will contact you as soon as posibile." class="submitButton" Text="Submit" />

                                    <asp:Button ID="btnCancel" value="Cancel" class="cancelButton" runat="server" Text="Cancel" />

                                </span>
                            </div>

                        </div>
                    </div>
                    <div class="col span_3_of_2">
                        <div class="grd">
                            <asp:GridView ID="GridView1" runat="server"></asp:GridView>

                        </div>

                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>


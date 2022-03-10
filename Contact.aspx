<%@ Page Title="" Language="C#" MasterPageFile="~/homemaster.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderId="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderId="ContentPlaceHolder1" Runat="Server">
    <div>
            <div class="main">
                <div class="content">
                    <div class="section group">
                        <div class="col span_2_of_3">
                            <div class="contact-form">
                                <h2>Contact Us</h2>

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

                                        
                                        <asp:Button ID="btnSave" runat="server" ToolTip="Submit your details. We will contact you as soon as posibile." class="submitButton" Text="Submit" OnClick="btnSave_Click" />
                                        
                                        <asp:Button ID="btnCancel" value="Cancel" class="cancelButton" runat="server" Text="Cancel" OnClick="btnCancel_Click" />

                                    </span>
                                </div>

                            </div>
                        </div>
                        <div class="col span_1_of_3">
                            <div class="contact_info">
                                <h3>Find Us Here</h3>
                                <div class="map">
                                    <iframe width="100%" height="175" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3670.3574750605126!2d72.52917206428361!3d23.084006319823445!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e83377e5ebb59%3A0x46fd2b30452c38a0!2sR.C.%20Technical!5e0!3m2!1sen!2sin!4v1568862715370!5m2!1sen!2sin" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
                                    <br>
                                    <small><a href="https://maps.google.co.in/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265" style="color: #666; text-align: left; font-size: 12px">View Larger Map</a></small>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

        </div>
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="userregistration.aspx.cs" Inherits="userregistration" %>

<asp:Content ID="Content1" ContentPlaceHolderId="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderId="ContentPlaceHolder1" Runat="Server">
    <div class="main">
        <div class="content">
            <div class="section group">
                <div class="col span_2_of_3">
                    <div class="contact-form">
                        <h2>Registration</h2>

                        <div class="row">

                            <span>
                                <asp:Label ID="lblFirstName" runat="server" Text="First Name" Width="75px" Font-Size="13px"></asp:Label>
                                <asp:TextBox ID="txtfirstname" ToolTip="Name" class="smallTextBox" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVFirstName" runat="server" ErrorMessage="Please Enter FirstName" ControlToValidate="txtfirstname" ForeColor="Red" class="validate" ></asp:RequiredFieldValidator>
                            </span>
                            <div class="col-12 col-lg-4 wow fadeInUp text-center" data-wow-delay="100ms"></div>
                        </div>
                        <div>
                            <span>
                                <asp:Label ID="lbllastname" runat="server" Text="Last Name" Width="75px" Font-Size="13px"></asp:Label>
                                <asp:TextBox ID="txtlastname" ToolTip="Name" class="smallTextBox" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVLastName" runat="server" ErrorMessage="Please Enter LastName" ControlToValidate="txtlastname" ForeColor="Red" class="validate"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                        <div>
                            <span>
                                <asp:Label ID="lblEmail" runat="server" Text="Email Id" Width="75px" Font-Size="13px"></asp:Label>
                                <asp:TextBox ID="txtemail" ToolTip="E-mail" class="smallTextBox" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVEmail" runat="server" ErrorMessage="Please Enater Email" ControlToValidate="txtemail" ForeColor="Red" class="validate"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="REVEmail" runat="server" ErrorMessage="Please Enter Valid Email" ForeColor="Red" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$" ControlToValidate="txtemail" class="validate"></asp:RegularExpressionValidator>
                            </span>
                        </div>
                        <div>
                            <span>


                                <asp:Label ID="lblphone" runat="server" Text="Mobile No." Width="75px" Font-Size="13px"></asp:Label>
                                <asp:TextBox ID="txtphone" ToolTip="phone" class="smallTextBox" runat="server"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RFVPhone" runat="server" ErrorMessage="Please Enater Mobile No" ControlToValidate="txtphone" ForeColor="Red" class="validate"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="REVPhone" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="txtphone" ValidationExpression="[0-9]{10}" ForeColor="Red" class="validate"></asp:RegularExpressionValidator>
                            </span>
                        </div>
                        <div>
                            <span>


                                <asp:Label ID="lblpassword" runat="server" Text="Password" Width="75px" Font-Size="13px"></asp:Label>
                                <asp:TextBox ID="txtpassword" ToolTip="password" class="smallTextBox" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVPassword" runat="server" ErrorMessage="Please Enter Password" ForeColor="Red" ControlToValidate="txtpassword" class="validate"></asp:RequiredFieldValidator>
                      
                            </span>
                        </div>
                        <div>
                            <span>


                                <asp:Label ID="lblconfpassword" runat="server" Text="Conform Password" Width="75px" Font-Size="13px"></asp:Label>
                                <asp:TextBox ID="txtconfpassword" ToolTip="password" class="smallTextBox" runat="server"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RFVConformPassword" runat="server" ErrorMessage="Please Enter Conform Password" ForeColor="Red" ControlToValidate="txtconfpassword" class="validate"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CVConformPassword" runat="server" ErrorMessage="Password Does Not Match" ForeColor="Red" ControlToValidate="txtconfpassword" ControlToCompare="txtpassword" class="validate"></asp:CompareValidator>
                            </span>
                        </div>
                        <div>
                            <span>
                                <asp:Label ID="lbladdress" runat="server" Text="Address" Width="75px" Font-Size="13px"></asp:Label>
                                <asp:TextBox ID="txtaddress" ToolTip="address" runat="server" TextMode="MultiLine" Width="305px" style="margin-left:130px; margin-top:-15px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVAddress" runat="server" ErrorMessage="Please Enter Address" ControlToValidate="txtaddress" ForeColor="Red" class="validate"></asp:RequiredFieldValidator>
                            </span> 
                        </div>
                        <div>
                            <span>
                                <asp:Label ID="lblbdate" runat="server" Text="Birth-Date" Width="75px" Font-Size="13px"></asp:Label>
                                <asp:TextBox ID="txtbdate" ToolTip="bdate" class="smallTextBox" runat="server" TextMode="Date"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVBirthDate" runat="server" ErrorMessage="Please Select BirthDate" ControlToValidate="txtbdate" ForeColor="Red" class="validate"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                        <div>
                            <span>
                                <asp:Label ID="lblgender" runat="server" Text="Gender" Width="75px" Font-Size="13px"></asp:Label>
                                <asp:RadioButtonList ID="rblgender" runat="server" Style="margin-left: 123px; margin-top: -15px;">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:RadioButtonList>
                                 <asp:RequiredFieldValidator ID="RFVGender" runat="server" ErrorMessage="Please Select Gender" ControlToValidate="rblgender" ForeColor="Red" class="validate"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                        <div>
                            <span>

                                <asp:Label ID="lblcountry" runat="server" Width="75px" Font-Size="13px" Text="Country Id"></asp:Label>

                                <asp:DropDownList ID="ddlcountry" class="smallTextBox" runat="server">
                                    <asp:ListItem Text="0" />
                                   
                                </asp:DropDownList>
                                    
                            </span>
                        </div>
                        <div>
                            <span>
                                <asp:Label ID="lblstate" runat="server" Width="75px" Font-Size="13px" Text="State Id"></asp:Label>

                                <asp:DropDownList ID="ddlstate" runat="server" class="smallTextBox">
                                    <asp:ListItem Text="0" />
                                   
                                </asp:DropDownList>

                            </span>
                        </div>
                        <div>
                            <span>

                                <asp:Label ID="lblcity" runat="server" Width="75px" Font-Size="13px" Text="City Id"></asp:Label>

                                <asp:DropDownList ID="ddlcity" runat="server" class="smallTextBox   ">
                                    <asp:ListItem Text="0" />
                                   
                                </asp:DropDownList>

                            </span>
                        </div>
                        <div>
                            <span>

                                <asp:Button ID="btnSave" runat="server" value="Submit" class="submitButton" Text="Submit" />
                                <asp:Button ID="btncancel" value="Cancel" class="cancelButton" runat="server" Text="Cancel" />
                            </span>
                        </div>

                    </div>
                </div>


            </div>
        </div>
    </div>
  
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/homemaster.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderId="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderId="ContentPlaceHolder1" runat="Server">
    <div class="main">
        <div class="content">
            <div class="section group">
                <div class="contact-form">
                    <h2>Registration</h2>
                    <div>
                        <span>
                            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                        </span>
                    </div>
                    <div class="section group">
                        <div class="col span_1_of_3">
                            <span>
                                <label>First Name</label>
                            </span>
                            <span>
                                <asp:TextBox runat="server" ID="txtFirstName" CssClass="bigTextBox" ValidateRequestMode="Disabled"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVFirstName" runat="server" ErrorMessage="Please Enter FirstName" ControlToValidate="txtFirstName" ForeColor="Red"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                        <div class="col span_1_of_3">
                            <span>
                                <label>Middle Name</label></span>
                            <span>
                                <asp:TextBox runat="server" ID="txtMiddleName" CssClass="bigTextBox"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVMiddleName" runat="server" ErrorMessage="Enter The middle name" ForeColor="Red"
                                    ControlToValidate="txtMiddleName"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                        <div class="col span_1_of_3">
                            <span>

                                <label>Last Name</label></span>
                            <span>
                                <asp:TextBox runat="server" ID="txtLastName" CssClass="bigTextBox"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVLastName" runat="server" ErrorMessage="Enter The lastname" ForeColor="Red"
                                    ControlToValidate="txtLastName"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                    </div>
                    <div class="section group">
                        <div class="col span_1_of_3">
                            <span>
                                <label>Email id</label></span>
                            <span>
                                <asp:TextBox runat="server" ID="txtEmail" CssClass="bigTextBox" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVEmail" runat="server" ErrorMessage="Please Enater Email" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="REVEmail" runat="server" ErrorMessage="Please Enter Valid Email" ForeColor="Red" ValidationExpression="^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$" ControlToValidate="txtEmail"></asp:RegularExpressionValidator>
                            </span>
                        </div>
                        <div class="col span_1_of_3">
                            <span>
                                <label>Mobile Number</label></span>
                            <span>
                                <asp:TextBox runat="server" ID="txtphone" CssClass="bigTextBox"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVPhone" runat="server" ErrorMessage="Please Enater Mobile No" ControlToValidate="txtphone" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="REVPhone" runat="server" ErrorMessage="Please Enter Mobile Number" ControlToValidate="txtphone" ValidationExpression="[0-9]{10}" ForeColor="Red"></asp:RegularExpressionValidator>
                            </span>
                        </div>
                        <div class="col span_1_of_3">
                            <span>
                                <label>Phone No</label></span>
                            <span>
                                <asp:TextBox runat="server" ID="txtPhone1" CssClass="bigTextBox"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enater Mobile No" ControlToValidate="txtphone1" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter Mobile Number" ControlToValidate="txtphone1" ValidationExpression="[0-9]{10}" ForeColor="Red"></asp:RegularExpressionValidator>
                            </span>
                        </div>
                    </div>
                    <div class="section group">
                        <div class="col span_1_of_3">
                            <span>
                                <label>Password</label></span>
                            <span>
                                <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" CssClass="bigTextBox"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVpassword" runat="server" ErrorMessage="Enter The Password" ForeColor="Red"
                                    ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                            </span>
                        </div>

                        <div class="col span_1_of_3">
                            <span>
                                <label>location</label></span>
                            <span>
                                <asp:TextBox runat="server" ID="txtlocation" CssClass="bigTextBox"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVlocation" runat="server" ErrorMessage="Enter The Location" ForeColor="Red"
                                    ControlToValidate="txtlocation"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                        <div class="col span_1_of_3">
                            <span>
                                <label>Gender</label></span>
                            <span>
                                <asp:DropDownList runat="server" ID="ddlGender" CssClass="dropDownBox">
                                    <asp:ListItem Text="Male" Value="Male" />
                                    <asp:ListItem Text="Female" Value="Female" />
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RFVGender" runat="server" ErrorMessage="Please Select Gender" ControlToValidate="ddlGender" ForeColor="Red"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                    </div>
                    <div class="section group">

                        <div class="col span_1_of_3">
                            <span>
                                <label>Birthday</label></span>
                            <span>
                                <asp:TextBox runat="server" ID="txtBirthDate" CssClass="bigTextBox" TextMode="Date"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVBirthDate" runat="server" ErrorMessage="Please Select BirthDate" ControlToValidate="txtBirthDate" ForeColor="Red"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                        <div class="col span_1_of_3">
                            <span>
                                <label>Postal Code</label></span>
                            <span>
                                <asp:TextBox runat="server" ID="txtPostalCode" CssClass="bigTextBox"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVpostalcode" runat="server" ErrorMessage="Please Enter Postal Code" ForeColor="Red" ControlToValidate="txtPostalCode"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                        <div class="col span_1_of_3">
                            <span>
                                <label>Role</label></span>
                            <span>
                                <asp:TextBox runat="server" ID="txtrole" CssClass="bigTextBox"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVRole" runat="server" ErrorMessage="Please Enter Role" ForeColor="Red" ControlToValidate="txtrole"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                    </div>
                    <div class="section group">
                        <div class="col span_2_of_3" style="width: 92%">
                            <span>
                                <label>Address</label></span>
                            <span>
                                <asp:TextBox runat="server" ID="txtAddress" TextMode="MultiLine" CssClass="bigTextBox"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVAddress" runat="server" ErrorMessage="Please Enter Address" ControlToValidate="txtAddress" ForeColor="Red"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                    </div>
                    <div class="section group">
                        <div class="col span_1_of_3">
                            <span>
                                <label>Country</label></span>
                            <span>
                                <asp:DropDownList runat="server" ID="ddlCountry" AutoPostBack="true" class="dropDownBox" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged">
                                </asp:DropDownList>

                            </span>
                        </div>

                        <div class="col span_1_of_3">
                            <span>
                                <label>State</label></span>
                            <span>
                                <asp:DropDownList runat="server" ID="ddlState" class="dropDownBox" AutoPostBack="true" OnSelectedIndexChanged="ddlState_SelectedIndexChanged" >
                                </asp:DropDownList>
                            </span>
                        </div>
                        <div class="col span_1_of_3">
                            <span>
                                <label>City</label></span>
                            <span>
                                <asp:DropDownList runat="server" ID="ddlCity" class="dropDownBox">
                                </asp:DropDownList>
                            </span>
                        </div>
                    </div>
                    <div class="section group">

                        <asp:Button ID="btnSave" runat="server" value="Submit" class="submitButton" Text="Submit" OnClick="btnSave_Click" />
                        <asp:Button ID="btncancel" value="Cancel" class="cancelButton" runat="server" Text="Cancel" OnClick="btncancel_Click" />

                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>


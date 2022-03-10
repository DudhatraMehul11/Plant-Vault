<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="usermanage.aspx.cs" Inherits="userprofile" %>

<asp:Content ID="Content1" ContentPlaceHolderId="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderId="ContentPlaceHolder1" runat="Server">
    <div class="main">
        <div class="content">
            <div class="section group">
                <div class="contact-form">
                    <h2>PROFILE</h2>
                    <div>
                        <span>
                            <asp:Label ID="lblError" runat="server" Font-Size="Large"></asp:Label>
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
                                <label>Mobile Number</label></span>
                            <span>
                                <asp:TextBox runat="server" ID="txtphone" CssClass="bigTextBox"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVPhone" runat="server" ErrorMessage="Please Enater Mobile No" ControlToValidate="txtphone" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="REVPhone" runat="server" ErrorMessage="Please Enter Mobile Number" ControlToValidate="txtphone" ValidationExpression="[0-9]{10}" ForeColor="Red"></asp:RegularExpressionValidator>
                            </span>
                        </div>
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
                                <asp:DropDownList runat="server" ID="ddlState" class="dropDownBox" OnSelectedIndexChanged="ddlState_SelectedIndexChanged">
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
                        <asp:Button ID="btnUpdate" runat="server" value="Update"  class="updateButton" Text="Update" OnClick="btnUpdate_Click" />

                        <asp:Button ID="btnCancel" runat="server" value="Cancel" class="cancelButton" Text="Cancel" OnClick="btnCancel_Click" />

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>


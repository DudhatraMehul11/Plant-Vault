<%@ Page Title="" Language="C#" MasterPageFile="~/homemaster.master" AutoEventWireup="true" CodeFile="Complain.aspx.cs" Inherits="Complain" %>

<asp:Content ID="Content1" ContentPlaceHolderId="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderId="ContentPlaceHolder1" runat="Server">
    <div class="main">
        <div class="content">
            <div class="section group">
                <div class="contact-form">
                    <h2>COMPLAIN</h2>
                    <div>
                        <span>
                            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                        </span>
                    </div>
                    <div class="section group">
                        <div class="col span_1_of_3">
                            <span>
                                <label>Name</label>
                            </span>
                            <span>
                                <asp:TextBox runat="server" ID="txtName" CssClass="bigTextBox" ValidateRequestMode="Disabled"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVFirstName" runat="server" ErrorMessage="Please Enter Name" ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                        <div class="col span_1_of_3">
                            <span>
                                <label>Modified Date</label></span>
                            <span>
                                <asp:TextBox runat="server" ID="txtModifiedDate" CssClass="bigTextBox" TextMode="Date"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVModifiedDate" runat="server" ErrorMessage="Please Select Modified Date" ControlToValidate="txtModifiedDate" ForeColor="Red"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                        <div class="col span_1_of_3">
                            <span>
                                <label>Entry Date</label></span>
                            <span>
                                <asp:TextBox runat="server" ID="txtEntryDate" CssClass="bigTextBox" TextMode="Date"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVEntryDate" runat="server" ErrorMessage="Please Select BirthDate" ControlToValidate="txtEntryDate" ForeColor="Red"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                    </div>
                    <div class="section group">
                        <div class="col span_1_of_3">
                            <span>
                                <label>Registration ID</label></span>
                            <span>
                                <asp:DropDownList runat="server" ID="ddlRegistratoinId" AutoPostBack="true" class="dropDownBox">
                                </asp:DropDownList>

                            </span>
                        </div>
                        <div class="col span_1_of_3">
                            <span>
                                <label>Login ID</label></span>
                            <span>
                                <asp:DropDownList runat="server" ID="ddlloginId" AutoPostBack="true" class="dropDownBox">
                                </asp:DropDownList>

                            </span>
                        </div>
                    </div>
                    <div class="section group">
                        <div class="col span_2_of_3" style="width: 92%">
                            <span>
                                <label>Description</label></span>
                            <span>
                                <asp:TextBox runat="server" ID="txtDes" TextMode="MultiLine" CssClass="bigTextBox"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVDes" runat="server" ErrorMessage="Please Enter Description" ControlToValidate="txtDes" ForeColor="Red"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                    </div>
                    <div class="section group">
                        <asp:Button ID="btnSave" runat="server" value="Submit" class="submitButton" Text="Save" OnClick="btnSave_Click" />
                        <asp:Button ID="btnCancel" runat="server" value="Cancel" class="cancelButton" Text="Cancel" OnClick="btnCancel_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>


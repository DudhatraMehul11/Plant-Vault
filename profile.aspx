<%@ Page Title="" Language="C#" MasterPageFile="~/Holder.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<asp:Content ID="Content1" ContentPlaceHolderId="ContentPlaceHolder2" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderId="ContentPlaceHolder1" runat="Server">
    <div class="main">
        <div class="content">
            <div class="section group">
                <div class="contact-form">
                    <h2>Holder Registration</h2>
                    <asp:HiddenField ID="hdnId" runat="server" />
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
                                <asp:TextBox runat="server" ID="txtFirstName" CssClass="bigTextBox" ValidateRequestMode="Disabled"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVFirstName" runat="server" ErrorMessage="Enter The name" ForeColor="Red"
                                    ControlToValidate="txtFirstName"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                        <div class="col span_1_of_3">
                            <span>
                                <label>Contact Person Name</label></span>
                            <span>
                                <asp:TextBox runat="server" ID="txtPersonName" CssClass="bigTextBox"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVPersonName" runat="server" ErrorMessage="Enter The Contact Person Name" ForeColor="Red"
                                    ControlToValidate="txtPersonName"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                        <div class="col span_1_of_3">
                            <span>
                                <label>Contact no.</label></span>
                            <span>
                                <asp:TextBox runat="server" ID="txtContactNo" CssClass="bigTextBox"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVcontactNo" runat="server" ErrorMessage="Enter The contact no" ForeColor="Red"
                                    ControlToValidate="txtContactNo"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                    </div>
                    <div class="section group">
                        <div class="col span_2_of_3" style="width: 92%">
                            <span>
                                <label>Short Info</label></span>
                            <span>
                                <asp:TextBox runat="server" ID="txtShortInfo" TextMode="MultiLine" CssClass="bigTextBox"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVshortInfo" runat="server" ErrorMessage="Enter The Short Informartion" ForeColor="Red"
                                    ControlToValidate="txtShortInfo"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                    </div>
                    <div class="section group">
                        <div class="col span_2_of_3" style="width: 92%">
                            <span>
                                <label>Address</label></span>
                            <span>
                                <asp:TextBox runat="server" ID="txtAddress" TextMode="MultiLine" CssClass="bigTextBox"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RFVaddress" runat="server" ErrorMessage="Enter The Short Informartion" ForeColor="Red"
                                    ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                    </div>
                    <div class="section group">
                        <div class="col span_1_of_3">
                            <span>
                                <label>Country</label></span>
                            <span>
                                <asp:DropDownList runat="server" ID="ddlCountry" AutoPostBack="true" class="dropDownBox" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged" >
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RFVcountry" runat="server" ErrorMessage="Select  Country ID" ForeColor="Red"
                                    ControlToValidate="ddlCountry"></asp:RequiredFieldValidator>
                            </span>
                        </div>

                        <div class="col span_1_of_3">
                            <span>
                                <label>State</label></span>
                            <span>
                                <asp:DropDownList runat="server" ID="ddlState" class="dropDownBox" AutoPostBack="true" OnSelectedIndexChanged="ddlState_SelectedIndexChanged" >
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RFVstate" runat="server" ErrorMessage="Select state ID" ForeColor="Red"
                                    ControlToValidate="ddlState"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                        <div class="col span_1_of_3">
                            <span>
                                <label>City</label></span>
                            <span>
                                <asp:DropDownList runat="server" ID="ddlCity" class="dropDownBox">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RFVcity" runat="server" ErrorMessage="Select city ID" ForeColor="Red"
                                    ControlToValidate="ddlCity"></asp:RequiredFieldValidator>
                            </span>
                        </div>
                        <div class="section group">
                            <div class="col span_1_of_3">
                                <span>
                                    <label>Website</label></span>
                                <span>
                                    <asp:TextBox runat="server" ID="txtWebsite" CssClass="bigTextBox"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RFVwebsite" runat="server" ErrorMessage="Enter Website" ForeColor="Red"
                                        ControlToValidate="txtWebsite"></asp:RequiredFieldValidator>
                                </span>
                            </div>
                            <div class="col span_1_of_3">
                                <span>
                                    <label>Service Email id</label></span>
                                <span>
                                    <asp:TextBox runat="server" ID="txtServiceEmailId" CssClass="bigTextBox"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Service Email Id" ForeColor="Red"
                                        ControlToValidate="txtServiceEmailId"></asp:RequiredFieldValidator>
                                </span>
                            </div>
                            <div class="col span_1_of_3">
                                <span>
                                    <label>Information Email id</label></span>
                                <span>
                                    <asp:TextBox runat="server" ID="txtInformation" CssClass="bigTextBox"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Information Email Id" ForeColor="Red"
                                        ControlToValidate="txtInformation"></asp:RequiredFieldValidator>
                                </span>
                            </div>
                        </div>
                        <div class="section group">
                            <div class="col span_1_of_3">
                                <span>
                                    <label>Office No.</label></span>
                                <span>
                                    <asp:TextBox runat="server" ID="txtOfficeNo" CssClass="bigTextBox"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RFVofficeNo" runat="server" ErrorMessage="Enter office No." ForeColor="Red"
                                        ControlToValidate="txtOfficeNo"></asp:RequiredFieldValidator>

                                </span>
                            </div>
                            <div class="col span_1_of_3">
                                <span>
                                    <label>Extention NO.</label></span>
                                <span>
                                    <asp:TextBox runat="server" ID="txtExtentionNo" CssClass="bigTextBox"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RFVExtentionNo" runat="server" ErrorMessage="Enter Extension No" ForeColor="Red"
                                        ControlToValidate="txtExtentionNo"></asp:RequiredFieldValidator>
                                </span>
                            </div>
                            <div class="col span_1_of_3">
                                <span>
                                    <label>Fax No.</label></span>
                                <span>
                                    <asp:TextBox runat="server" ID="txtFaxNo" CssClass="bigTextBox"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RFVFaxNo" runat="server" ErrorMessage="Enter Fax No." ForeColor="Red"
                                        ControlToValidate="txtFaxNo"></asp:RequiredFieldValidator>
                                </span>
                            </div>
                        </div>
                        <div class="section group">
                            <div class="col span_1_of_3">
                                <span>
                                    <label>Postal Code</label></span>
                                <span>
                                    <asp:TextBox runat="server" ID="txtPostalCode" CssClass="bigTextBox"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RFVpostalcode" runat="server" ErrorMessage="Enter Extension No" ForeColor="Red"
                                        ControlToValidate="txtPostalCode"></asp:RequiredFieldValidator>
                                </span>
                            </div>
                           
                            <%--<div class="col span_1_of_3">
                                <span>
                                    <label>Login ID</label></span>
                                <span>
                                    <asp:DropDownList ID="ddlloginId" runat="server" class="dropDownBox"></asp:DropDownList>
                                    <asp:RequiredFieldValidator ID="RFVloginId" runat="server" ErrorMessage="Select the Login ID" ForeColor="Red"
                                        ControlToValidate="ddlloginId"></asp:RequiredFieldValidator>
                                </span>
                            </div>--%>
                        </div>
                    </div>
                    <div class="section group">
                        
                         <asp:Button ID="btnUpdate" runat="server" value="Update" class="updateButton" Text="Update" OnClick="btnUpdate_Click" />
                        <asp:Button ID="btnCancel" runat="server" value="Cancel" class="cancelButton" Text="Cancel" OnClick="btnCancel_Click" />
                    </div>
                </div>
            </div>
            
        </div>
    </div>
</asp:Content>


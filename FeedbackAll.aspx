<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="FeedbackAll.aspx.cs" Inherits="FeedbackAll" %>

<asp:Content ID="Content1" ContentPlaceHolderId="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderId="ContentPlaceHolder1" Runat="Server">
    <div class="main">
        <div class="content">
            <div class="section group">
                <div class="col span_2_of_3">
                    <div class="contact-form">
                        <h2>Feedback All</h2>

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
</asp:Content>


<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="searchfertilizer.aspx.cs" Inherits="searchfertilizer" %>

<asp:Content ID="Content1" ContentPlaceHolderId="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<div class="main">
          <div class="content">
                <div class="section group">
                    <div>
                        <h2>Fertilizer</h2>
                    </div>
                    <asp:Repeater ID="rptProducts" runat="server">
                        <ItemTemplate>
                            <div class="grid_1_of_4 images_1_of_4">
                                <a href="view.aspx?productId=<%#Eval("FertilizerId") %>">
                                    <img src="<%#Eval("image1") %>" alt="<%#Eval("FertilizerName") %>" height="170" width="170" /></a>
                                <h2><%#Eval("FertilizerName") %></h2>
                                <div class="price-details">
                                    <div class="price-number">
                                        <p><span class="rupees">Rs.<%#Eval("price") %></span></p>
                                    </div>
                                    <div class="add-cart">
                                        <h4><a href="#" %>View</a></h4>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
         <div class="clear"></div>

</div>

</asp:Content>


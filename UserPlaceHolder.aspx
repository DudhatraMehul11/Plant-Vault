<%@ Page Title="" Language="C#" MasterPageFile="~/user.master" AutoEventWireup="true" CodeFile="UserPlaceHolder.aspx.cs" Inherits="UserPlaceHolder" %>

<asp:Content ID="Content1" ContentPlaceHolderId="head" runat="Server">
    <script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
    <link href="css/easy-responsive-tabs.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="css/global.css" />
    <%--<link rel="stylesheet" href="style.css" />--%>
    <script src="js/slides.min.jquery.js"></script>
    <script type="text/javascript">
        $(function () {
            $('#products').slides({
                preload: true,
                preloadImage: 'img/loading.gif',
                effect: 'slide, fade',
                crossfade: true,
                slideSpeed: 350,
                fadeSpeed: 500,
                generateNextPrev: true,
                generatePagination: false
            });
        });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderId="ContentPlaceHolder1" runat="Server">
    <div class="main">
        <div class="content">
            <div class="content_top">
                <div class="section group">
                    <div class="cont-desc">
                        <h2 style="margin: 0px; color: #CD1F25;">Jungali Alovera
                        </h2>
                        <div class="product-details">
                            <div class="grid images_1_of_2">
                                <div id="container">
                                    <div id="products_example">
                                        <div id="products">
                                            <div class="slides_container" style="height: 275px; width: 365px">
                                                <a href="#" target="_blank">
                                                    <asp:Image ID="images1" ImageUrl="~/UploadPhoto/Rose_2_15874389-00f6-4561-b048-e3392812a06e.jpg" runat="server" CssClass="productDetailImage" alt=" " /></a>
                                                <a href="#" target="_blank">
                                                    <asp:Image ID="images2" ImageUrl="~/UploadPhoto/pink rose_1_160c2936-18bb-47d4-a1a8-a24101b9762c.jpg" runat="server" alt=" " CssClass="productDetailImage" /></a>
                                                <a href="#" target="_blank">
                                                    <asp:Image ID="image1" ImageUrl="~/UploadPhoto/Krishna Tulsi_2_6a04354e-1ea8-4a10-94a4-f5dc2e6de3f3.jpg" runat="server" alt=" " CssClass="productDetailImage" /></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="desc span_3_of_2">
                                Description :<br />
                                <p runat="server" id="lblDescription" style="display: block; text-align: justify; text-transform: capitalize">
                                    Plants have been grown as food crops for thousands of years. During that time, farmers have picked out the best plants and sown their seeds, resulting in the different types that are grown today.&nbsp;Grains,&nbsp;such as wheat and rice, are grown in many parts of the world. Many trees bear edible fruit, including apples, pears, and lemons. With other plants it’s the fleshy underground part that is good to eat, such as potatoes, carrots, and onions. Some crops, including broccoli and many types of herbs, grow quite happily in cooler climates. Others,&nbsp;such as mangoes, bananas, and coconuts, need hot, wet tropical climates to grow.
                                </p>
                                <br />
                                <div class="price">
                                    Price: <span>Rs.<asp:Label runat="server" ID="lblPrice" Text="1200" /></span>
                                </div>
                                <br />
                                <div class="price">
                                    Quntity: <span>
                                        <asp:TextBox runat="server" ID="txtQuntity" Text="1" AutoPostBack="true" /></span> &nbsp;&nbsp;&nbsp;
                                    <label style="font-weight: bold">Rs.</label><asp:Label runat="server" ID="lblFinalPrice" Text="1200" Font-Bold="true" />
                                </div>
                                <br />
                                <div>
                                    <span>
                                        <asp:Button ID="btnSave" runat="server" value="Submit" class="submitButton" Text="Place Order" />

                                    </span>
                                </div>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="product_desc">
                            <div id="horizontalTab">
                                <ul class="resp-tabs-list">
                                    <li>Care Info</li>
                                    <li>Plantation Info</li>
                                    <li>Holder Info</li>
                                    <div class="clear"></div>
                                </ul>
                                <div class="resp-tabs-container">
                                    <div class="product-desc">
                                        <p>
                                            <asp:Label runat="server" Style="font-weight: normal" ID="lblCareInfo" Text="A plant in a garden or a pot needs the care of a gardener to grow well. The gardener’s job changes as the plant grows, from its early stages as a seedling to the time it flowers and makes fruit. A seed has to be sown at the correct depth and spacing, and needs warmth and moisture to sprout. The new plant needs to be watered and given plenty of light as it grows. Tall or climbing plants may need support. Some gardening tools, such as a spade for digging the soil, a watering can to water the plant, and a wheelbarrow to move things around, are needed to care for plants." />
                                        </p>
                                    </div>
                                    <div class="product-tags">
                                        <p>
                                            <asp:Label runat="server" ID="lblPlantationInfo" Text="Plants have been grown as food crops for thousands of years. During that time, farmers have picked out the best plants and sown their seeds, resulting in the different types that are grown today. Grains, such as wheat and rice, are grown in many parts of the world. Many trees bear edible fruit, including apples, pears, and lemons. With other plants it’s the fleshy underground part that is good to eat, such as potatoes, carrots, and onions. Some crops, including broccoli and many types of herbs, grow quite happily in cooler climates. Others, such as mangoes, bananas, and coconuts, need hot, wet tropical climates to grow." />
                                        </p>
                                    </div>
                                    <div class="product-tags">
                                        <p>
                                            <b class="bold">Name :</b>
                                            <asp:Label runat="server" ID="lblHDName" Text="Magan Patel" />
                                            <br />
                                            <b class="bold">Info :</b>
                                            <asp:Label runat="server" ID="lblHDShortInfo" Text="Delivery On time with good quality" />
                                            <br />
                                            <b class="bold">Address :</b><asp:Label runat="server" ID="lblHDAddress" Text="Beside Riverfront, Asharam Road, Ahmedabad" />
                                            <br />
                                            <b class="bold">Office No. :</b><asp:Label runat="server" ID="lblHDOfficeNo" Text="12345678902" />
                                            <br />
                                            <b class="bold">Fax No. :</b><asp:Label runat="server" ID="lblHDFaxNo" Text="09876543211" />
                                            <br />
                                            <b class="bold">Website :</b><asp:Label runat="server" ID="lblHDWebsite" Text="www.google.com" />
                                            <br />
                                            <b class="bold">Person to contact :</b><asp:Label runat="server" ID="lblHDPerson" Text="Magan Patel Manager" />
                                            <br />
                                            <b class="bold">Service Email :</b><asp:Label runat="server" ID="lblHDServiceEmailId" Text="service@plantweb.com" />
                                            <br />
                                            <b class="bold">Info Email :</b><asp:Label runat="server" ID="lblHDInfoEMailId" Text="info@plantweb.com" />

                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <script type="text/javascript">
                            $(document).ready(function () {
                                $('#horizontalTab').easyResponsiveTabs({
                                    type: 'default', //Types: default, vertical, accordion
                                    width: 'auto', //auto or any width like 600px
                                    fit: true   // 100% fit in a container
                                });
                            });
                        </script>

                    </div>
                    <%--<div class="rightsidebar span_3_of_1" style="height: 450px">
                    <h2>CATEGORIES</h2>
                    <ul>
                        <asp:Repeater ID="rptCategories" runat="server">
                            <ItemTemplate>
                                <li><a href="ViewProduct.aspx?categotyId=<%#Eval("Category_Id") %>"><%#Eval("category_name") %></a></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>--%>
                </div>
            </div>

            <div class="content_top">
                <div class="heading">
                    <h3>
                        <asp:Label runat="server" ID="llab" Text="Related Products" />
                    </h3>
                </div>
                <div class="clear"></div>
            </div>
            <div class="section group">

                <div class="grid_1_of_4 images_1_of_4">
                    <a href="#">
                        <img src="UploadPhoto/Krishna Tulsi_1_352429ca-5384-40f3-9c1a-133d5ba2ea4e.jpg" alt="Krishna Tulasi" height="170" width="170" />
                    </a>
                    <h2>Krishna Tulasi</h2>
                    <div class="price-details">
                        <div class="price-number">
                            <p><span class="rupees">Rs.250</span></p>
                        </div>
                        <div class="add-cart">
                            <h4><a href="#">Add to Cart</a></h4>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
                <div class="grid_1_of_4 images_1_of_4">
                    <a href="#">
                        <img src="UploadPhoto/Rose_2_15874389-00f6-4561-b048-e3392812a06e.jpg" alt="Rose" height="170" width="170" />
                    </a>
                    <h2>Rose</h2>
                    <div class="price-details">
                        <div class="price-number">
                            <p><span class="rupees">Rs.250</span></p>
                        </div>
                        <div class="add-cart">
                            <h4><a href="#">Add to Cart</a></h4>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
                <div class="grid_1_of_4 images_1_of_4">
                    <a href="#">
                        <img src="UploadPhoto/Aloe Vera_2_3c3e5072-014f-493a-bb06-245c87311a5f.jpg" alt="Aloe Vera" height="170" width="170" />
                    </a>
                    <h2>Aloe Vera</h2>
                    <div class="price-details">
                        <div class="price-number">
                            <p><span class="rupees">Rs.250</span></p>
                        </div>
                        <div class="add-cart">
                            <h4><a href="#">Add to Cart</a></h4>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
                <div class="grid_1_of_4 images_1_of_4">
                    <a href="#">
                        <img src="UploadPhoto/Chameli_1_37fdbcfd-6c77-4c90-9a13-43fd76bdbc33.jpg" alt="Chameli" height="170" width="170" />
                    </a>
                    <h2>Chameli</h2>
                    <div class="price-details">
                        <div class="price-number">
                            <p><span class="rupees">Rs.250</span></p>
                        </div>
                        <div class="add-cart">
                            <h4><a href="#">Add to Cart</a></h4>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>


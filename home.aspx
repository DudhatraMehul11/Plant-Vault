<%@ Page Title="" Language="C#" MasterPageFile="~/homemaster.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderId="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderId="ContentPlaceHolder1" runat="Server">
    <div>
        <div class="header_slide">
            <div class="clear"></div>
            <div class="header_bottom_left">
                <div class="categories">
                    <ul>
                        <h3>Categories</h3>
                            <li><a href="InDoorPlant.aspx">In- Door Plant</a></li>
                            <li><a href="OutDoorPlant.aspx">Out- Door Plant</a></li>
                            <li><a href="GredenPlant.aspx">Garden Plant</a></li>
                            <li><a href="#">Gallery Display Plant</a></li>
                            <li><a href="homeFertilizer.aspx">Fertiliser</a></li>
                            <li><a href="OrganicFertilizer.aspx">Organic Fertiliser</a></li>
                            <li><a href="#">In-Organic Fertiliser</a></li>
                            <li><a href="#">School Plant</a></li>
                            <li><a href="HotelPlant.aspx">Hotel Display Plant</a></li>
                            <li><a href="#">Resort Plant</a></li>
                            <li><a href="#">Under Water Plant</a></li>
                            <li><a href="#">Office Plant</a></li>
                    </ul>
                </div>
            </div>
            <div class="header_bottom_right">
                <div class="slider">
                    <div id="slider">
                        <div id="mover">
                            <div id="slide-1" class="slide">
                                <div class="slider-img">
                                    <a href="preview.html">
                                        <img src="images/slide-1-image.png" alt="learn more" />
                                    </a>
                                </div>
                                <div class="slider-text">
                                    <h1>BUY NOW
                                        <br />
                                        <span>SALE</span>
                                    </h1>
                                    <h2>UPTo 10% OFF</h2>
                                    <div class="features_list">
                                        <h4></h4>
                                    </div>
                                    <a href="index.aspx" class="button">Shop Now</a>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="slide">
                                <div class="slider-text">
                                    <h1>BUY NOW<br>
                                        <span>SALE</span>
                                    </h1>
                                    <h2>UPTo 40% OFF</h2>
                                    <div class="features_list">
                                        <h4></h4>
                                    </div>
                                    <a href="index.aspx" class="button">Shop Now</a>
                                </div>
                                <div class="slider-img">
                                    <a href="preview.html">
                                        <img src="images/slide-3-image.jpg" alt="learn more" />
                                    </a>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div class="slide">
                                <div class="slider-img">
                                    <a href="preview.html">
                                        <img src="images/slide-2-image.jpg" alt="learn more" />
                                    </a>
                                </div>
                                <div class="slider-text">
                                    <h1>BUY NOW<br>
                                        <span>SALE</span>
                                    </h1>
                                    <h2>UPTo 10% OFF</h2>
                                    <div class="features_list">
                                        <h4></h4>
                                    </div>
                                    <a href="index.aspx" class="button">Shop Now</a>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="clear"></div>
        </div>
        <div class="main">
            <div class="content">
                <div class="content_top">
                    <div class="heading">
                        <h3>
                            <label>New Products</label>
                        </h3>
                    </div>
                    <div class="see">
                        <p><a href="#">See all Products</a></p>
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
                            <img src="UploadPhoto/Natural Dried Moss Grass ( 0.5 Kg )_1_abd67ef3-ae7c-4cec-9f60-4254ff5115de.jpg" alt="Natural Dried Moss Grass" height="170" width="170" />
                        </a>
                        <h2>Natural Dried Moss Grass</h2>
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
                            <img src="UploadPhoto/Coco Peat - 5 Kg_2_18223871-6364-45ee-b4d8-7ef5ed85d96d.jpg" alt="" height="170" width="170" />
                        </a>
                        <h2>Coco Peat</h2>
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
                            <img src="UploadPhoto/WhiteRose_2_54ca3ca6-3eef-4bdc-bf88-b94941278a25.jpg" alt="" height="170" width="170" />
                        </a>
                        <h2>White Rose</h2>
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
                            <img src="UploadPhoto/Golden Bamboo_2_660aeb2c-cecc-4e6c-aba9-2226326bc16d.jpg" alt="" height="170" width="170" />
                        </a>
                        <h2>Golden Bamboo</h2>
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

    </div>
</asp:Content>


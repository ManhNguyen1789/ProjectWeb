<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCustomer.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="QLTour.Blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Travelix Project">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="Template/styles/bootstrap4/bootstrap.min.css">
    <link href="Template/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="Template/plugins/colorbox/colorbox.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="Template/styles/blog_styles.css">
    <link rel="stylesheet" type="text/css" href="Template/styles/blog_responsive.css">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="slider" runat="server">
    <!-- Home -->

    <div class="home">
        <div class="home_background parallax-window" data-parallax="scroll" data-image-src="Template/images/blog_background.jpg"></div>
        <div class="home_content">
            <div class="home_title">The Blog</div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Blog -->

    <div class="blog">
        <div class="container">
            <div class="row">

                <!-- Blog Content -->

                <div class="col-lg-8">

                    <div class="blog_post_container">

                        <!-- Blog Post -->

                        <div class="blog_post">
                            <div class="blog_post_image">
                                <img src="Template/images/blog_1.jpg">
                                <div class="blog_post_date d-flex flex-column align-items-center justify-content-center">
                                    <div class="blog_post_day">12</div>
                                    <div class="blog_post_month">12, 2020</div>
                                </div>
                            </div>
                            <div class="blog_post_meta">
                            </div>
                            <div class="blog_post_title"><a href="#">1. Kinh nghiệm phượt Sa Pa cho người đi lần đầu</a></div>
                            <div class="blog_post_text">
                                <p style="text-align: justify">Mùa hè ở Sa Pa mát, bạn có thể mặc bình thường nhưng vẫn cần một chiếc áo khoác. Nhưng mùa đông rất lạnh, bạn cần áo ấm, găng tay, khăn, mũ len để trống lại cái rét vùng cao. Tránh mang vác cồng kềnh, nếu đi lâu thì có thể mang theo một ít bột giặt để giặt quần áo (Thường thì người ta chỉ ở Sa Pa 2-3 ngày là hết chỗ để đi rồi).</p>
                            </div>
                            <div class="blog_post_link"><a href="#">Đọc thêm</a></div>
                        </div>

                        <!-- Blog Post -->

                        <div class="blog_post">
                            <div class="blog_post_image">
                                <img src="Images/thapbac.jpg">
                                <div class="blog_post_date d-flex flex-column align-items-center justify-content-center">
                                    <div class="blog_post_day">05</div>
                                    <div class="blog_post_month">5, 2020</div>
                                </div>
                            </div>
                            <div class="blog_post_meta">
                            </div>
                            <div class="blog_post_title"><a href="#">2. Thác Bạc – Đỉnh Đèo</a></div>
                            <div class="blog_post_text">
                                <p style="text-align: justify">Từ thị trấn Sa Pa, đi về phía Tây khoảng 12km trên đường đi Lai Châu, ta sẽ gặp Thác Bạc ào ào chảy xuống từ độ cao trên 200m vào dòng suối dưới thung lũng Ô Quy Hồ, tạo nên âm thanh núi rừng đầy ấn tượng. Tuy nhiên vào mùa xuân du khách nên cân nhắc trước khi tham quan Thác Bạc vì khi ấy thác rất ít nước.</p>
                            </div>
                            <div class="blog_post_link"><a href="#">Đọc thêm</a></div>
                        </div>

                        <!-- Blog Post -->

                        <div class="blog_post">
                            <div class="blog_post_image">
                                <img src="Images/cocsan.jpg">
                                <div class="blog_post_date d-flex flex-column align-items-center justify-content-center">
                                    <div class="blog_post_day">01</div>
                                    <div class="blog_post_month">12, 2019</div>
                                </div>
                            </div>
                            <div class="blog_post_meta">
                            </div>
                            <div class="blog_post_title"><a href="#">3. Động Cốc San – quần thể hang động và thác đẹp nhất SaPa</a></div>
                            <div class="blog_post_text">
                                <p style="text-align: justify">Đường vào Cốc San không dễ dàng mà còn khá là khó khăn, vì con đường này bị che đi bởi một số tảng đá lớn nên Cốc San vẫn đẹp một cách nguyên sơ, tự nhiên nhất. Nơi đây không chỉ là một địa điểm du lịch dành cho khách thập phương mà còn là địa điểm du lịch của người dân bản địa.</p>
                            </div>
                            <div class="blog_post_link"><a href="#">Đọc thêm</a></div>
                        </div>

                    </div>

                    <div class="blog_navigation">
                        <ul>
                            <li class="blog_dot active">
                                <div></div>
                                01.</li>
                            <li class="blog_dot">
                                <div></div>
                                02.</li>
                            <li class="blog_dot">
                                <div></div>
                                03.</li>
                        </ul>
                    </div>
                </div>

                <!-- Blog Sidebar -->

                <div class="col-lg-4 sidebar_col">

                    <!-- Sidebar Search -->
                    <div class="sidebar_search">
                        <div>
                            <input id="sidebar_search_input" type="search" class="sidebar_search_input" placeholder="" required="required">
                            <button id="sidebar_search_button" type="submit" class="sidebar_search_button trans_300" value="Submit">
                                <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                    width="17px" height="17px" viewBox="0 0 512 512" enable-background="new 0 0 512 512" xml:space="preserve">
                                    <g>
                                        <g>
                                            <g>
                                                <path class="mag_glass" fill="#FFFFFF" d="M78.438,216.78c0,57.906,22.55,112.343,63.493,153.287c40.945,40.944,95.383,63.494,153.287,63.494
												s112.344-22.55,153.287-63.494C489.451,329.123,512,274.686,512,216.78c0-57.904-22.549-112.342-63.494-153.286
												C407.563,22.549,353.124,0,295.219,0c-57.904,0-112.342,22.549-153.287,63.494C100.988,104.438,78.439,158.876,78.438,216.78z
												M119.804,216.78c0-96.725,78.69-175.416,175.415-175.416s175.418,78.691,175.418,175.416
												c0,96.725-78.691,175.416-175.416,175.416C198.495,392.195,119.804,313.505,119.804,216.78z" />
                                            </g>
                                        </g>
                                        <g>
                                            <g>
                                                <path class="mag_glass" fill="#FFFFFF" d="M6.057,505.942c4.038,4.039,9.332,6.058,14.625,6.058s10.587-2.019,14.625-6.058L171.268,369.98
												c8.076-8.076,8.076-21.172,0-29.248c-8.076-8.078-21.172-8.078-29.249,0L6.057,476.693
												C-2.019,484.77-2.019,497.865,6.057,505.942z" />
                                            </g>
                                        </g>
                                    </g>
                                </svg>
                            </button>
                        </div>
                    </div>

                    <!-- Sidebar Archives -->
                    <div class="sidebar_archives">
                        <div class="sidebar_title">Archives</div>
                        <div class="sidebar_list">
                            <ul>
                                <li><a href="#">March 2017</a></li>
                                <li><a href="#">April 2017</a></li>
                                <li><a href="#">May 2017</a></li>
                            </ul>
                        </div>
                    </div>

                    <!-- Sidebar Archives -->
                    <div class="sidebar_categories">
                        <div class="sidebar_title">Categories</div>
                        <div class="sidebar_list">
                            <ul>
                                <li><a href="#">Travel</a></li>
                                <li><a href="#">Exotic Destinations</a></li>
                                <li><a href="#">City Breaks</a></li>
                                <li><a href="#">Travel Tips</a></li>
                                <li><a href="#">Lifestyle & Travel</a></li>
                                <li><a href="#">City Breaks</a></li>
                                <li><a href="#">Uncategorized</a></li>
                            </ul>
                        </div>
                    </div>

                    <!-- Sidebar Latest Posts -->

                    <div class="sidebar_latest_posts">
                        <div class="sidebar_title">Latest Posts</div>
                        <div class="latest_posts_container">
                            <ul>

                                <!-- Latest Post -->
                                <li class="latest_post clearfix">
                                    <div class="latest_post_image">
                                        <a href="#">
                                            <img src="Template/images/latest_1.jpg" alt=""></a>
                                    </div>
                                    <div class="latest_post_content">
                                        <div class="latest_post_title trans_200"><a href="#">A simple blog post</a></div>
                                        <div class="latest_post_meta">
                                            <div class="latest_post_author trans_200"><a href="#">by Jane Smith</a></div>
                                            <div class="latest_post_date trans_200"><a href="#">Aug 25, 2016</a></div>
                                        </div>
                                    </div>
                                </li>

                                <!-- Latest Post -->
                                <li class="latest_post clearfix">
                                    <div class="latest_post_image">
                                        <a href="#">
                                            <img src="Template/images/latest_2.jpg" alt=""></a>
                                    </div>
                                    <div class="latest_post_content">
                                        <div class="latest_post_title trans_200"><a href="#">Dream destination for you</a></div>
                                        <div class="latest_post_meta">
                                            <div class="latest_post_author trans_200"><a href="#">by Jane Smith</a></div>
                                            <div class="latest_post_date trans_200"><a href="#">Aug 25, 2016</a></div>
                                        </div>
                                    </div>
                                </li>

                                <!-- Latest Post -->
                                <li class="latest_post clearfix">
                                    <div class="latest_post_image">
                                        <a href="#">
                                            <img src="Template/images/latest_3.jpg" alt=""></a>
                                    </div>
                                    <div class="latest_post_content">
                                        <div class="latest_post_title trans_200"><a href="#">Tips to travel light</a></div>
                                        <div class="latest_post_meta">
                                            <div class="latest_post_author trans_200"><a href="#">by Jane Smith</a></div>
                                            <div class="latest_post_date trans_200"><a href="#">Aug 25, 2016</a></div>
                                        </div>
                                    </div>
                                </li>

                                <!-- Latest Post -->
                                <li class="latest_post clearfix">
                                    <div class="latest_post_image">
                                        <a href="#">
                                            <img src="Template/images/latest_4.jpg" alt=""></a>
                                    </div>
                                    <div class="latest_post_content">
                                        <div class="latest_post_title trans_200"><a href="#">How to pick your vacation</a></div>
                                        <div class="latest_post_meta">
                                            <div class="latest_post_author trans_200"><a href="#">by Jane Smith</a></div>
                                            <div class="latest_post_date trans_200"><a href="#">Aug 25, 2016</a></div>
                                        </div>
                                    </div>
                                </li>

                            </ul>
                        </div>
                    </div>

                    <!-- Sidebar Gallery -->
                    <div class="sidebar_gallery">
                        <div class="sidebar_title">Instagram</div>
                        <div class="gallery_container">
                            <ul class="gallery_items d-flex flex-row align-items-start justify-content-between flex-wrap">
                                <li class="gallery_item">
                                    <a class="colorbox" href="https://images.unsplash.com/photo-1473625247510-8ceb1760943f?ixlib=rb-0.3.5&s=c0996cd16eda8c6f54c398de02d03cd3&auto=format&fit=crop&w=720&q=80">
                                        <img src="Template/images/gallery_1.jpg" alt="https://unsplash.com/@mantashesthaven">
                                    </a>
                                </li>
                                <li class="gallery_item">
                                    <a class="colorbox" href="https://images.unsplash.com/photo-1495162048225-6b3b37b8a69e?ixlib=rb-0.3.5&s=861dd3c7b9d3e735d7fd7cbb1eefed64&auto=format&fit=crop&w=720&q=80">
                                        <img src="Template/images/gallery_2.jpg" alt="https://unsplash.com/@kensuarez">
                                    </a>
                                </li>
                                <li class="gallery_item">
                                    <a class="colorbox" href="https://images.unsplash.com/photo-1502646275263-04be86afa386?ixlib=rb-0.3.5&s=682a41d7d9bf6e3feabc73a5fdd61dd2&auto=format&fit=crop&w=720&q=80">
                                        <img src="Template/images/gallery_3.jpg" alt="https://unsplash.com/@jakobowens1">
                                    </a>
                                </li>
                                <li class="gallery_item">
                                    <a class="colorbox" href="https://images.unsplash.com/photo-1484820301304-0b43512779dc?ixlib=rb-0.3.5&s=7a3393e9f507fb4718c36337a8014c52&auto=format&fit=crop&w=720&q=80">
                                        <img src="Template/images/gallery_4.jpg" alt="https://unsplash.com/@seefromthesky">
                                    </a>
                                </li>
                                <li class="gallery_item">
                                    <a class="colorbox" href="https://images.unsplash.com/photo-1490380169520-0a4b88d52565?ixlib=rb-0.3.5&s=7e6b68b1911fb4ffeea4c0750b8a5269&auto=format&fit=crop&w=720&q=80">
                                        <img src="Template/images/gallery_5.jpg" alt="https://unsplash.com/@deannaritchie">
                                    </a>
                                </li>
                                <li class="gallery_item">
                                    <a class="colorbox" href="https://images.unsplash.com/photo-1504434026032-a7e440a30b68?ixlib=rb-0.3.5&s=2cc35bf903b78ba4f7f7ed69bc2abe3f&auto=format&fit=crop&w=720&q=80">
                                        <img src="Template/images/gallery_6.jpg" alt="https://unsplash.com/@benobro">
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <script src="Template/js/jquery-3.2.1.min.js"></script>
    <script src="Template/styles/bootstrap4/popper.js"></script>
    <script src="Template/styles/bootstrap4/bootstrap.min.js"></script>
    <script src="Template/plugins/colorbox/jquery.colorbox-min.js"></script>
    <script src="Template/plugins/parallax-js-master/parallax.min.js"></script>
    <script src="Template/js/blog_custom.js"></script>
</asp:Content>

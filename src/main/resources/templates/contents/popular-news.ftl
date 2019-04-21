<div class="post-inner">
    <!--post header-->
    <div class="post-head">
        <h2 class="title"><strong>Bài viết mới</strong></h2>
        <div class="filter-nav">
            <ul>
                <li><a href="#" class="active">all</a></li>
                <li><a href="#">business</a></li>
                <li><a href="#">gadgets</a></li>
                <li><a href="#">design</a></li>
                <li><a href="#">fashion</a></li>
                <li><a href="#">video</a></li>
            </ul>
        </div>
    </div>
    <!-- post body -->
    <div class="post-body">
        <div id="post-slider" class="owl-carousel owl-theme">
            <!-- item one -->
            <div class="item">
                <div class="row">
                    <div class="col-sm-6 main-post-inner bord-right">
                        <article>
                            <figure>
                                <a href="${article.url}"><img src="/images/${article.image}" alt="Ảnh bài viết"
                                                              onerror="this.src='/static/assets/images/default.jpg'"
                                                              height="242" width="345" class="img-responsive"></a>
                            </figure>
                            <div class="post-info">
                                <h3><a href="${article.url}">${article.title}</a></h3>
                                <p>${article.header}</p>
                            </div>
                        </article>
                    </div>
                    <div class="col-sm-6">
                        <div class="news-list">
                            <#list lastArticles as article>
                                <div class="news-list-item">
                                    <div class="img-wrapper">
                                        <a href="${article.url}" class="thumb">
                                            <img src="/images/${article.image}" alt="Ảnh bài viết"
                                                 onerror="this.src='/static/assets/images/default.jpg'" class="img-responsive">
                                        </a>
                                    </div>
                                    <div class="post-info-2">
                                        <h5><a href="${article.url}" class="title">${article.title}</a></h5>
                                    </div>
                                </div>
                                <#if article?index == 4>
                                    <#break>
                                </#if>
                            </#list>
                        </div>
                    </div>
                </div>
            </div>
            <!-- item two -->

        </div>
    </div>
    <!-- Post footer -->
    <div class="post-footer">
        <div class="row thm-margin">
            <div class="col-xs-12 col-sm-8 col-md-9 thm-padding">
                <a href="#" class="more-btn">More popular posts</a>
            </div>
            <div class="hidden-xs col-sm-4 col-md-3 thm-padding">
                <div class="social">
                    <ul>
                        <li>
                            <div class="share transition">
                                <a href="#" target="_blank" class="ico fb"><i class="fa fa-facebook"></i></a>
                                <a href="#" target="_blank" class="ico tw"><i class="fa fa-twitter"></i></a>
                                <a href="#" target="_blank" class="ico gp"><i class="fa fa-google-plus"></i></a>
                                <a href="#" target="_blank" class="ico pin"><i class="fa fa-pinterest"></i></a>
                                <i class="ti-share ico-share"></i>
                            </div>
                        </li>
                        <li><a href="#"><i class="ti-heart"></i></a></li>
                        <li><a href="#"><i class="ti-twitter"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <div class="featured-inner">
                <div id="featured-owl" class="owl-carousel">
                    <#list lastArticles as article>
                        <div class="item">
                            <div class="featured-post">
                                <a href="${article.url}" class="news-image"><img src="/images/${article.image}" alt="Ảnh bài viết"
                                                                                 onerror="this.src='/static/assets/images/default.jpg'" class="img-responsive"></a>
                                <div class="reatting">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-half-o"></i>
                                    <i class="fa fa-star-o"></i>
                                </div>
                                <div class="post-text">
                                    <span class="post-category">Business</span>
                                    <h4>${article.title}</h4>
                                    <ul class="authar-info">
                                        <li><i class="ti-timer"></i> ${article.dateCreatedTimestamp}</li>
                                        <li class="like"><a href="#"><i class="ti-thumb-up"></i>15 likes</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </#list>
                </div>
            </div>
        </div>
    </div>
</div>
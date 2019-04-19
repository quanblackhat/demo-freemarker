<script>
    $(document).ready(function () {
        $(function () {
            if (${totalElements} >
            0
        )
            {
                window.pagObj = $('#pagination').twbsPagination({
                    totalPages: ${totalPages},
                    visiblePages: ${visiblePage},
                    startPage: ${page},
                    first: '&laquo;',
                    prev: '',
                    next: '',
                    last: '&raquo;'
                }).on('page', function (event, page) {
                    var url = "/?page=" + page;
                    window.location.replace(url);
                });
            }
        });
    });
</script>

<section class="slider-inner">
    <div class="container">
        <div class="row thm-margin">
            <div class="row slider-right-post thm-margin">
                <#if (totalElements > 0)>
                <div class="row" id="articleTable">
                    <#list articles as article>
                    <div class="col-md-4" style="padding-top: 10px">
                        <div class="slider-post post-height-2">
                            <a href="/detail/${article.id}" class="news-image">
                                <img src="/images/${article.image}" alt="Ảnh bài viết"
                                     onerror="this.src='/static/assets/img/default.jpg'">
                            </a>
                            <div class="post-text">
                                <h4><a href="/detail/${article.id}">${article.title}</a></h4>
                                <ul class="authar-info">
                                    <li class="authar hidden-xs hidden-sm"><a href="#">Tác giả: ${article.author}</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    </#list>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <div class="example">
                        <ul id="pagination" class="pagination super-page"></ul>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <#else>
            <h5>
                Không tìm thấy bài viết nào.
            </h5>
        </#if>
    </div>
</section>
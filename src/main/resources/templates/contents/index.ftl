<script>
    $(document).ready(function () {
        $(function () {
            if (${totalElements} > 0) {
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
<#if (totalElements > 0)>
    <div class="row" id="articleTable">
        <#list articles as article>
            <div class="col-md-6">
                <div class="single-blog">
                    <div class="blog-img">
                        <a href="/detail/${article.id}">
                            <img src="/images/${article.image}" alt="Ảnh bài viết"
                                 onerror="this.src='/static/assets/img/default.jpg'">
                        </a>
                    </div>
                    <div style="min-height: 30px">
                        <h6><a href="/detail/${article.id}">${article.title}</a></h6>
                    </div>

                    <div class="blog-meta">
                        <span class="blog-meta-author">Tác giả: ${article.author}</span>
                        <div class="pull-right">
                            <#--<span>18 Oct, 2017</span>-->
                        </div>
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
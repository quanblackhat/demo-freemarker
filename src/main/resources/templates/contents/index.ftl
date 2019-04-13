<#if (total > 0)>
    <div class="row">
        <#list articles as article>
            <div class="col-md-6">
                <div class="single-blog">
                    <div class="blog-img">
                        <a href="/detail/${article.id}">
                            <img src="/images/${article.image}" alt="Ảnh bài viết"
                                 onerror="this.src='/images/default.jpg'">
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
            <div class="post-pagination">
                <a href="#" class="pagination-back pull-left">Back</a>
                <ul class="pages">
                    <li class="active">1</li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                </ul>
                <a href="#" class="pagination-next pull-right">Next</a>
            </div>
        </div>
    </div>
<#else>
    <h5>
        Không tìm thấy bài viết nào.
    </h5>
</#if>
<#--Category-->
<div class="widget category-widget">
    <h3>Danh mục bài viết</h3>
    <#list categories as category>
        <a class="category" href="/index?categoryId=${category.id}">${category.name}</a>
    </#list>
</div>

<#--Bài viết gần đây-->
<div class="widget posts-widget">
    <h3>Recents Posts</h3>

    <#list recentArticles as article>
        <div class="single-post">
            <a class="single-post-img">
                <img src="/images/${article.image}" alt="Ảnh bài viết" height="42" width="42"
                     onerror="this.src='/static/assets/img/blog01.jpg'" >
            </a>
            <a href="/detail/${article.id}">${article.title}
                <p><small>${article.author}</small></p>
        </div>

    </#list>

</div>



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

    <div class="single-post">
        <a class="single-post-img" href="/detail">
            <img src="/static/assets/img/post01.jpg" alt="">
        </a>
        <a href="/detail">Pro eu error molestie deserunt.</a>
        <p><small>By : John Doe .18 Oct, 2017</small></p>
    </div>

    <div class="single-post">
        <a class="single-post-img" href="/detail">
            <img src="/static/assets/img/post02.jpg" alt="">
        </a>
        <a href="/detail">Pro eu error molestie deserunt.</a>
        <p><small>By : John Doe .18 Oct, 2017</small></p>
    </div>

    <div class="single-post">
        <a class="single-post-img" href="/detail">
            <img src="/static/assets/img/post03.jpg" alt="">
        </a>
        <a href="/detail">Pro eu error molestie deserunt.</a>
        <p><small>By : John Doe .18 Oct, 2017</small></p>
    </div>

    <div class="single-post">
        <a class="single-post-img" href="/detail">
            <img src="/static/assets/img/post02.jpg" alt="">
        </a>
        <a href="/detail">Pro eu error molestie deserunt.</a>
        <p><small>By : John Doe .18 Oct, 2017</small></p>
    </div>

    <div class="single-post">
        <a class="single-post-img" href="/detail">
            <img src="/static/assets/img/post03.jpg" alt="">
        </a>
        <a href="/detail">Pro eu error molestie deserunt.</a>
        <p><small>By : John Doe .18 Oct, 2017</small></p>
    </div>

</div>



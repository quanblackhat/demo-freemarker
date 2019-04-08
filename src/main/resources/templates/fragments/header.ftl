<!DOCTYPE html>
<html lang="en">
<!--header start-->
<body>
<header id="header">
    <div class="container">

        <div class="navbar-header">
            <!-- Logo -->
            <div class="navbar-brand">
                <a class="logo" href="/">
                    <img src="/static/assets/img/logo.png" alt="logo">
                </a>
            </div>
            <!-- /Logo -->

            <!-- Mobile toggle -->
            <button class="navbar-toggle">
                <span></span>
            </button>
            <!-- /Mobile toggle -->
        </div>

        <nav id="nav">
            <ul class="main-menu nav navbar-nav navbar-right">

                 <#list menus as menu>
                    <li><a href="/" >${menu}</a></li>
                 </#list>

            </ul>
        </nav>

    </div>
</header>
</body>


</html>

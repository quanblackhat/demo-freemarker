<header id="header">
    <div class="container">
        <div class="navbar-header">
            <div class="navbar-brand">
                <a class="logo" href="/">
                    <img src="/static/assets/img/logo.png" alt="logo">
                </a>
            </div>
            <!-- Mobile toggle -->
            <button class="navbar-toggle" onclick="toggleMenu()">
                <span></span>
            </button>
        </div>

        <nav id="nav">
            <ul class="main-menu nav navbar-nav navbar-right">
             <#list menus as menu>
                 <li><a href="${menu.link}">${menu.title}</a></li>
             </#list>
            </ul>
        </nav>
    </div>
</header>


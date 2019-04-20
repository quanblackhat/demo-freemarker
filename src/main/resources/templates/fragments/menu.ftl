<nav class="navbar navbar-default navbar-sticky navbar-mobile bootsnav">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
                <i class="fa fa-bars"></i>
            </button>
            <a class="navbar-brand hidden-sm hidden-md hidden-lg" href="#brand"><img
                        src="/static/assets/images/logo-white.png" class="logo" alt=""></a>
        </div>
        <div class="collapse navbar-collapse" id="navbar-menu">
            <ul class="nav navbar-nav navbar-left" data-in="" data-out="">
                <#list menus as menu>
                    <#--level 1-->
                    <#if menu.subMenus?size gt 0>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">${menu.title}</a>
                            <ul class="dropdown-menu">
                                <#list menu.subMenus as menu>
                                <#--level 2-->
                                    <#if menu.subMenus?size gt 0>
                                        <li class="dropdown">
                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">${menu.title}</a>
                                            <ul class="dropdown-menu">
                                                <#list menu.subMenus as menu>
                                                <#--level 3-->
                                                    <#if menu.subMenus?size gt 0>
                                                        <li class="dropdown">
                                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">${menu.title}</a>
                                                            <ul class="dropdown-menu">
                                                                <#list menu.subMenus as menu>
                                                                <#--level 4-->
                                                                    <#if menu.subMenus?size gt 0>
                                                                        <li class="dropdown">
                                                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">${menu.title}</a>
                                                                            <ul class="dropdown-menu">
                                                                                <#list menu.subMenus as menu>
                                                                                    <li><a href="${menu.link}">${menu.title}</a></li>
                                                                                </#list>
                                                                            </ul>
                                                                        </li>
                                                                    <#else>
                                                                        <li><a href="${menu.link}">${menu.title}</a></li>
                                                                    </#if>
                                                                </#list>
                                                            </ul>
                                                        </li>
                                                    <#else>
                                                        <li><a href="${menu.link}">${menu.title}</a></li>
                                                    </#if>
                                                </#list>
                                            </ul>
                                        </li>
                                    <#else>
                                        <li><a href="${menu.link}">${menu.title}</a></li>
                                    </#if>
                                </#list>
                            </ul>
                        </li>
                    <#else>
                        <li><a href="${menu.link}">${menu.title}</a></li>
                    </#if>
                </#list>
            </ul>
        </div>
    </div>
</nav>
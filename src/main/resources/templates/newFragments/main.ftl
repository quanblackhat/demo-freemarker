<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>I-news</title>

    <link rel="shortcut icon" href="/static/new-assets/images/ico/favicon.png" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="/static/new-assets/images/ico/apple-touch-icon-57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72"
          href="/static/new-assets/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114"
          href="/static/new-assets/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144"
          href="/static/new-assets/images/ico/apple-touch-icon-144-precomposed.png">

    <link href="/static/new-assets/css/jquery-ui.min.css" rel="stylesheet" type="text/css"/>
    <link href="/static/new-assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="/static/new-assets/bootsnav/css/bootsnav.css" rel="stylesheet" type="text/css"/>
    <link href="/static/new-assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="/static/new-assets/themify-icons/themify-icons.css" rel="stylesheet" type="text/css"/>
    <link href="/static/new-assets/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="/static/new-assets/css/skin-dark.css" rel="stylesheet" type="text/css"/>
    <script src="/static/new-assets/js/jquery.min.js"></script>
    <script src="/static/new-assets/js/bootstrap.min.js"></script>
    <script src="/static/new-assets/bootsnav/js/bootsnav.js"></script>
    <script src="/static/new-assets/js/custom.js"></script>
    <script type="text/javascript" src="/static/assets/js/jquery.twbsPagination.js"></script>
</head>
<body class="skin-dark">
<!-- PAGE LOADER -->
<#include "/newFragments/setting.ftl">
<div class="se-pre-con"></div>
<header>
    <#include "/newFragments/header.ftl">
    <#include "/newFragments/menu.ftl">
</header>
<main class="page_main_wrapper">
    <!-- START POST BLOCK SECTION -->
    <#include CONTENT>
</main>
<footer class="sub-footer">
    <#include "/newFragments/footer.ftl">
</footer>
<!-- *** END OF /. SUB FOOTER *** -->
</body>
</html>
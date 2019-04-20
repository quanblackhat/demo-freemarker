<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>I-news</title>

    <link rel="shortcut icon" href="/static/assets/images/ico/favicon.png" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="/static/assets/images/ico/apple-touch-icon-57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72"
          href="/static/assets/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114"
          href="/static/assets/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144"
          href="/static/assets/images/ico/apple-touch-icon-144-precomposed.png">

    <link href="/static/assets/css/jquery-ui.min.css" rel="stylesheet" type="text/css"/>
    <link href="/static/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="/static/assets/bootsnav/css/bootsnav.css" rel="stylesheet" type="text/css"/>
    <link href="/static/assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="/static/assets/themify-icons/themify-icons.css" rel="stylesheet" type="text/css"/>
    <link href="/static/assets/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="/static/assets/css/skin-dark.css" rel="stylesheet" type="text/css"/>
    <script src="/static/assets/js/jquery.min.js"></script>
    <script src="/static/assets/js/bootstrap.min.js"></script>
    <script src="/static/assets/bootsnav/js/bootsnav.js"></script>
    <script src="/static/assets/js/custom.js"></script>
    <script type="text/javascript" src="/static/assets/js/jquery.twbsPagination.js"></script>
</head>
<body class="skin-dark">
<!-- PAGE LOADER -->
<#include "/fragments/setting.ftl">
<div class="se-pre-con"></div>
<header>
    <#include "/fragments/header.ftl">
    <#include "/fragments/menu.ftl">
</header>
<main class="page_main_wrapper">
    <#include CONTENT>
</main>
<footer class="sub-footer">
    <#include "/fragments/footer.ftl">
</footer>
</body>
</html>
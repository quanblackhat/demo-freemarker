<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>I-news</title>

    <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="/static/assets/images/ico/favicon.png" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="/static/assets/images/ico/apple-touch-icon-57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="/static/assets/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="/static/assets/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="/static/assets/images/ico/apple-touch-icon-144-precomposed.png">

    <link href="/static/assets/css/jquery-ui.min.css" rel="stylesheet" type="text/css"/>
    <link href="/static/assets/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="/static/assets/css/animate.min.css" rel="stylesheet" type="text/css"/>
    <link href="/static/assets/bootsnav/css/bootsnav.css" rel="stylesheet" type="text/css"/>
    <link href="/static/assets/css/RYPP.css" rel="stylesheet" type="text/css"/>
    <link href="/static/assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="/static/assets/themify-icons/themify-icons.css" rel="stylesheet" type="text/css"/>
    <link href="/static/assets/weather-icons/css/weather-icons.min.css" rel="stylesheet" type="text/css"/>
    <link href="/static/assets/css/flaticon.css" rel="stylesheet" type="text/css"/>
    <link href="/static/assets/owl-carousel/owl.carousel.css" rel="stylesheet" type="text/css"/>
    <link href="/static/assets/owl-carousel/owl.theme.css" rel="stylesheet" type="text/css"/>
    <link href="/static/assets/owl-carousel/owl.transitions.css" rel="stylesheet" type="text/css"/>
    <link href="/static/assets/css/style.css" rel="stylesheet" type="text/css"/>

    <script src="/static/assets/js/jquery.min.js"></script>
    <script src="/static/assets/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/static/assets/js/jquery.twbsPagination.js"></script>
</head>
<body>
<!-- PAGE LOADER -->
<#include "/fragments/setting.ftl">
<div class="se-pre-con"></div>
<!-- *** START PAGE HEADER SECTION *** -->
<header>
    <#include "/fragments/header.ftl">
    <#include "/fragments/menu.ftl">
</header>
<!-- *** END OF /. PAGE HEADER SECTION *** -->
<!-- *** START PAGE MAIN CONTENT *** -->
<main class="page_main_wrapper">
    <!--  END OF /. NEWSTRICKER -->
    <!-- START POST BLOCK SECTION -->
    <div class="container">
        <div class="row">
            <!-- START MAIN CONTENT -->
            <div class="col-sm-12 col-p main-content">
                <#include CONTENT>
            </div>
            <!-- END OF /. MAIN CONTENT -->
            <!-- START SIDE CONTENT -->
            <!-- END OF /. SIDE CONTENT -->
        </div>
    </div>
    <!-- Slide -->
    <#include "/fragments/slide.ftl">
    <#include "/fragments/video.ftl">
    <#include "/fragments/lastest-new.ftl">
</main>
<!-- *** END OF /. PAGE MAIN CONTENT *** -->
<!-- *** START FOOTER *** -->
<#include "/fragments/footer.ftl">
<!-- <script src="/static/assets/js/jquery.min.js"></script> -->
<script src="/static/assets/js/jquery-ui.min.js"></script>
<!-- <script src="/static/assets/js/bootstrap.min.js"></script> -->
<script src="/static/assets/bootsnav/js/bootsnav.js"></script>
<script src="/static/assets/js/theia-sticky-sidebar.js"></script>
<script src="/static/assets/js/RYPP.js"></script>
<script src="/static/assets/owl-carousel/owl.carousel.min.js"></script>
<script src="/static/assets/js/custom.js"></script>
</body>
</html>
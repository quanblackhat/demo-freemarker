<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Demo Project</title>
<!-- Bootstrap core CSS -->
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">


    <link href="https://fonts.googleapis.com/css?family=Lato:700%7CMontserrat:400,600" rel="stylesheet">

    <!-- Bootstrap -->
    <link type="text/css" rel="stylesheet" href="/static/assets/css/bootstrap.min.css"/>

    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="/static/assets/css/font-awesome.min.css">

    <!-- Custom stlylesheet -->
    <link type="text/css" rel="stylesheet" href="/static/assets/css/style.css"/>

</head>
<body>
	<section id="container">
        <#include "/fragments/header.ftl">

        <#include CONTENT>

        <#include "/fragments/footer.html">

        <#--<div id='preloader'><div class='preloader'></div></div>-->
	</section>





    <!-- jQuery Plugins -->
    <script type="text/javascript" src="/static/assets/js/jquery.min.js"></script>
    <script type="text/javascript" src="/static/assets/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/static/assets/js/main.js"></script>
</body>

</html>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Demo Project</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link href="https://fonts.googleapis.com/css?family=Lato:700%7CMontserrat:400,600" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="/static/assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/static/assets/css/font-awesome.min.css">
    <link type="text/css" rel="stylesheet" href="/static/assets/css/style.css"/>

    <script type="text/javascript" src="/static/assets/js/jquery.min.js"></script>
    <script type="text/javascript" src="/static/assets/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/static/assets/js/main.js"></script>
</head>
<body>
    <#include SETTING>
	<section id="container">
        <#include HEADER>

        <div class="container">
            <div class="row">
                <div id="main" class="col-md-9">
                    <#include CONTENT>
                </div>

                <div id="aside" class="col-md-3">
                    <#include SIDEBAR>
                </div>
            </div>
        </div>

        <#include FOOTER>
        <#--<div id='preloader'><div class='preloader'></div></div>-->
	</section>
</body>
</html>

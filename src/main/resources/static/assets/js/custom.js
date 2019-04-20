/* global api_key */

$(document).ready(function () {
    'use strict';
    //back to top
    $('body').append('<div id="toTop" class="btn back-top"><span class="ti-arrow-up"></span></div>');
    $(window).on("scroll", function () {
        if ($(this).scrollTop() !==0) {
            $('#toTop').fadeIn();
        }
        else {
            $('#toTop').fadeOut();
        }
    }
    );
    $('#toTop').on("click", function () {
        $("html, body").animate( {
            scrollTop: 0
        }
        , 600);
        return false;
    }
    );
    //  page loader
    $(".se-pre-con").fadeOut("slow");
    //tab
    $(".weather-week>div.list-group>a").click(function (e) {
        e.preventDefault();
        $(this).siblings('a.active').removeClass("active");
        $(this).addClass("active");
        var index=$(this).index();
        $("div.bhoechie-tab>div.weather-temp-wrap").removeClass("active");
        $("div.bhoechie-tab>div.weather-temp-wrap").eq(index).addClass("active");
    }
    );

    //panel tab
    $('.collapse.in').prev('.panel-heading').addClass('active');
    $('#accordion') .on('show.bs.collapse', function (a) {
        $(a.target).prev('.panel-heading').addClass('active');
    }
    ) .on('hide.bs.collapse', function (a) {
        $(a.target).prev('.panel-heading').removeClass('active');
    }
    );
    //progresber
    var el=document.getElementsByClassName('progressber'), l=el.length;
    for (var i=0;
    i < l;
    i++) {
        var options= {
            percent: el[i].getAttribute('data-percent'), size: el[i].getAttribute('data-size') || 60, lineWidth: el[i].getAttribute('data-line') || 4
        }
        ;
        var canvas=document.createElement('canvas');
        var span=document.createElement('span');
        span.textContent=options.percent + '%';
        if (typeof (G_vmlCanvasManager) !=='undefined') {
            G_vmlCanvasManager.initElement(canvas);
        }
        var ctx=canvas.getContext('2d');
        canvas.width=canvas.height=options.size;
        el[i].appendChild(span);
        el[i].appendChild(canvas);
        ctx.translate(options.size / 2, options.size / 2); // change center
        var radius=(options.size - options.lineWidth) / 2;
        var drawCircle=function (color, lineWidth, percent) {
            percent=Math.min(Math.max(0, percent || 1), 1);
            ctx.beginPath();
            ctx.arc(0, 0, radius, 0, Math.PI * 2 * percent, false);
            ctx.strokeStyle=color;
            ctx.lineCap='round';
            ctx.lineWidth=lineWidth;
            ctx.stroke();
        }
        ;
        drawCircle('transparent', options.lineWidth, 100 / 100);
        drawCircle('#eb0254', options.lineWidth, options.percent / 100);
    }
}

);
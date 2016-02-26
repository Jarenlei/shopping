<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="uk-slidenav-position" data-uk-slideshow="{animation:'Puzzle',autoplay:true,autoplayInterval:4000}" style="text-align:center">
    <ul class="uk-slideshow">
        <li ><figure class="uk-overlay">
                        <img src="${path}/resources/images/q1.jpg"  width="" height="" alt="">
                        <figcaption class="uk-overlay-panel uk-overlay-bottom uk-overlay-active"><h2>第一张画像</h2></figcaption>
                    </figure></li>
                    <li ><figure class="uk-overlay">
                        <img src="${path}/resources/images/q2.jpg"  width="" height="" alt="">
                        <figcaption class="uk-overlay-panel uk-overlay-bottom uk-overlay-active"><h2>第二张画像</h2></figcaption>
                    </figure></li>
                    <li><figure class="uk-overlay">
                        <img src="${path}/resources/images/q3.jpg"  width="" height="" alt="">
                        <figcaption class="uk-overlay-panel uk-overlay-bottom uk-overlay-active"><h2>第三张画像</h2></figcaption>
                    </figure></li>
    </ul>
    <a href="" class="uk-slidenav uk-slidenav-contrast uk-slidenav-previous" data-uk-slideshow-item="previous"></a>
    <a href="" class="uk-slidenav uk-slidenav-contrast uk-slidenav-next" data-uk-slideshow-item="next"></a>
</div>
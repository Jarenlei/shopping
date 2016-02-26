<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@include file="header.jsp" %>
      <link rel="stylesheet" href="${path}/resources/css/accordion.min.css" />
      <script src="${path}/resources/js/accordion.min.js"></script>
      <script>	      
        $(function() {
          UIkit.accordion(".uk-accordion", {
            collapse: false,
            duration: 300
          });       
          var maxpage=$("input[name='maxpage']").val();
          var curpage=$("input[name='curpage']").val();
          for(var i=0;i<maxpage;i++){
        	  if(curpage==(i+1)){
        		  $(".mypage").append("<li class='uk-active'><span>"+(i+1)+"</span></li>");
        	  }else{
            	  $(".mypage").append("<li><a href='javascript:void(0)'>"+(i+1)+"</a></li>");   		  
        	  }
          }
          
          $(".my-nav li").click(function() {
            $(".my-nav li").removeClass("uk-active");
            $(this).addClass("uk-active");
          });
          
          $('.mypage a').click( function(){
        	    var curpage=$(this).text();
        	    $("#search-form").find("input[name='curpage']").val(curpage);
        	    $("#search-form").submit();
        	});
        })
        
      </script>
      <style type="text/css">
        .all-commority-show {
          padding-left: 10px;
          padding-top: 20px
        }
      </style>
      </head>

      <body>
        <div id="wrap" style="margin: 15px">
          <div id="mynav" class="">
            <%@include file="navshow.jsp"%>
          </div>
          <form class="uk-form" id="search-form" action='<c:url value="/main/searchcom"/>' method="get">
            <div id="shop-search" class="uk-grid uk-panel-box uk-panel-box-primary" style="margin-top: 15px">
              <%@include file="searchshop.jsp" %>
            </div>
            <input type="hidden" name="curpage">
          </form>
          <div id="search-result-show" style="margin-top: 15px;border-top:1px solid #333">
            <div class="uk-container uk-container-center" style="padding-top:15px">
              <div class="uk-grid">
                <div class="uk-width-medium-1-4">
                  <div class="uk-accordion" data-uk-accordion>
                    <h3 class="uk-accordion-title"><i class="uk-icon-angle-double-down"></i> 苹果手机</h3>
                    <div class="uk-accordion-content">
                      <ul class="uk-nav uk-nav-side my-nav" data-uk-nav="">
                        <li><a href="javascript:void(0)">Iphone 6</a></li>
                        <li><a href="javascript:void(0)">Iphone 6s</a></li>
                      </ul>
                    </div>
                    <h3 class="uk-accordion-title"><i class="uk-icon-angle-double-down"></i> 华为</h3>
                    <div class="uk-accordion-content">
                      <ul class="uk-nav uk-nav-side my-nav" data-uk-nav="">
                        <li><a href="javascript:void(0)">荣誉</a></li>
                        <li><a href="javascript:void(0)">Note</a></li>
                      </ul>
                    </div>
                    <h3 class="uk-accordion-title"><i class="uk-icon-angle-double-down"></i> 小米</h3>
                    <div class="uk-accordion-content">
                      <ul class="uk-nav uk-nav-side my-nav" data-uk-nav="">
                        <li><a href="javascript:void(0)">红米Note</a></li>
                        <li><a href="javascript:void(0)">小米旗舰</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div class="uk-width-medium-3-4">
                  <div style="border-bottom:1px solid #333">
                    <div class="uk-grid">
                      <div class="uk-width-medium-1-5"> <span class="uk-text-large">条件检索：</span> </div>
                      <div class="uk-width-medium-4-5">
                        <label>
                          <input type="checkbox">支持4G</label>
                        <label>
                          <input type="checkbox">全网通</label>
                        <label>
                          <input type="checkbox">最新款</label>
                      </div>
                    </div>
                  </div>
                  <div class="" style="padding-top:10px">
                    <div class="uk-grid">
                      <div class="uk-width-medium-1-5"> <span class="uk-text-large">商品排序：</span> </div>
                      <div class="uk-width-medium-4-5">
                        <div class="uk-button-dropdown" data-uk-dropdown>
                          <a href="" class="uk-button">
                            <button class="uk-button uk-button-primary">按价格排序 <i class="uk-icon-caret-down"></i></button>
                          </a>
                          <div class="uk-dropdown uk-dropdown-small">
                            <ul class="uk-nav uk-nav-dropdown">
                              <li><a href="#">按价格从低到高</a></li>
                              <li><a href="#">按价格从高到低</a></li>
                            </ul>
                          </div>
                        </div>
                        <div class="uk-button-dropdown" data-uk-dropdown>
                          <a href="" class="uk-button">
                            <button class="uk-button uk-button-primary">按销量排序 <i class="uk-icon-caret-down"></i></button>
                          </a>
                          <div class="uk-dropdown uk-dropdown-small">
                            <ul class="uk-nav uk-nav-dropdown">
                              <li><a href="#">按销量从高到低</a></li>
                              <li><a href="#">按销量从低到高</a></li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div id="every-commority-show" style="margin-top:20px;border-top:1px solid #333">
                    <div class="uk-grid all-commority-show">
                      <c:choose>
                        <c:when test="${!empty searchDto }">
                          <c:forEach items="${searchDto.searchResultList }" var="comm">
                            <div class="uk-panel uk-panel-box uk-width-medium-1-4">
                              <div class="uk-panel-badge uk-badge uk-badge-danger">Hot</div>
                              <div class="uk-panel-teaser"> <img src="${path}/resources/images/${comm.image}"></div>
                              ${comm.intro}</div>
                          </c:forEach>
                        </c:when>
                        <c:otherwise> <span class="uk-text-large uk-text-warning uk-text-center-medium">没有找到你要搜索的商品！</span> </c:otherwise>
                      </c:choose>
                    </div>
                          <div class="uk-block">
                          <input type="hidden" name="curpage" value="${pageVo.curpage }">
                          <input type="hidden" name="maxpage" value="${pageVo.maxpage }"> 
                          	<ul class="uk-pagination mypage">
							</ul>
                          </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </body>
      </html>
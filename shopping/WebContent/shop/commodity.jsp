<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="show-commodity uk-block">
    <!-- 这是手机卖区 -->
    <ul class="uk-tab" data-uk-tab data-uk-switcher="{connect:'#phone-show-item'}">
        <li class="uk-active uk-width-1-4"><a href="javasrcipt:void(0)" id="phone1">iphone手机</a></li>
        <li class="uk-width-1-4"><a href="javasrcipt:void(0)" id="phone2">华为系列</a></li>
        <li class="uk-width-1-4"><a href="javasrcipt:void(0)" id="phone3">Vivo</a></li>
        <li class="uk-width-1-4"><a href="javasrcipt:void(0)" id="phone4">三星</a></li>
    </ul>
    <div style="padding: 10px 10px">
        <ul id="phone-show-item" class="uk-switcher">
            <li class="every-phone-show-1">
                <a href="javasrcipt:void(0)" data-uk-switcher-item>
                    Iphone!
                </a>
            </li>
            <li class="every-phone-show-2">
                <a href="javasrcipt:void(0)" data-uk-switcher-item>
                    HUAWEI!
                </a>
            </li>
            <li class="every-phone-show-3">
                <a href="javasrcipt:void(0)" data-uk-switcher-item>
                    VIVO!
                </a>
            </li>
            <li class="every-phone-show-4">
                <a href="javasrcipt:void(0)" data-uk-switcher-item>
                    SAMUNG!
                </a>
            </li>
        </ul>
    </div>
</div>

<div class="show-commodity uk-block">
    <!-- 这是冬季服装卖区 -->
    <ul class="uk-tab" data-uk-tab data-uk-switcher="{connect:'#suit-show-item'}">
        <li class="uk-active uk-width-1-5"><a href="javasrcipt:void(0)" id="suit1">羽绒服</a></li>
        <li class="uk-width-1-5"><a href="javasrcipt:void(0)" id="suit2">棉袄</a></li>
        <li class="uk-width-1-5"><a href="javasrcipt:void(0)" id="suit3">真皮</a></li>
        <li class="uk-width-1-5"><a href="javasrcipt:void(0)" id="suit4">风衣</a></li>
        <li class="uk-width-1-5"><a href="javasrcipt:void(0)" id="suit5">狄龙</a></li>
    </ul>
    <div style="padding: 10px 10px">
        <ul id="suit-show-item" class="uk-switcher">
            <li class="every-suit-show-1">
                <a href="javasrcipt:void(0)" data-uk-switcher-item="0">
                    羽绒服!
                </a>
            </li>
            <li class="every-suit-show-2">
                <a href="javasrcipt:void(0)" data-uk-switcher-item="1">
                    棉袄!
                </a>
            </li>
            <li class="every-suit-show-3">
                <a href="javasrcipt:void(0)" data-uk-switcher-item="2">
                    真皮!
                </a>
            </li>
            <li class="every-suit-show-4">
                <a href="javasrcipt:void(0)" data-uk-switcher-item="3">
                    风衣!
                </a>
            </li>
            <li class="every-suit-show-5">
                <a href="javasrcipt:void(0)" data-uk-switcher-item="4">
                    狄龙!
                </a>
            </li>
        </ul>
    </div>
</div>
<script language="javascript">
                $(function () {       
                	$('.show-commodity a').click(function(){
                		var Comm = $(this).attr("id");
                		var type=Comm.substring(0,Comm.length-1);
                		var typeId=Comm.substring(Comm.length-1,Comm.length);
                        var args = {
                        	type : type,
                            typeId : typeId
                        };
                        $.post("${contextPath}/main/getcomm", args, function (data) {
                        	$(".every-"+type+"-show-"+typeId).empty();
                            $.each(data, function (n, it) {
                                	var commrity="<span>"+it.cname+"</span>&nbsp;<span>"+it.typeId+"</span>"
                                	$(".every-"+type+"-show-"+typeId).append(commrity);
                            });
                        }, "JSON");
                   	 });
                	});                	
                	$('.show-commodity a').click(function(){             		 
                	})
</script>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <div class="uk-width-1-5" style="position: relative;padding-top: 10px">
            <div class="uk-flex uk-flex-middle">
                <ul class="uk-list uk-tab-left uk-width-medium-1-1 uk-list-space">
                    <li>
                        <div data-uk-dropdown>
                            <div class="uk-text-center">
                                <i class="uk-icon-camera"></i> 手机/数码
                            </div>
                            <div class="uk-dropdown my-dropdown">
                                <div class="uk-panel uk-panel-box">
                                    <ul class="uk-list uk-list-line">
                                        <li>
                                            <i class="uk-icon-angle-right"></i> 手机 &nbsp;&nbsp;
                                            <a class="uk-button" href="">iphone6</a> &nbsp;&nbsp;
                                            <a class="uk-button" href="">华为</a> &nbsp;&nbsp;
                                            <a class="uk-button" href="">小米</a>
                                        </li>
                                        <li>
                                            <i class="uk-icon-angle-right"></i> 数码 &nbsp;&nbsp;
                                            <a class="uk-button" href="">拍立得附件</a> &nbsp;&nbsp;
                                            <a class="uk-button" href="">专业器材</a> &nbsp;&nbsp;
                                            <a class="uk-button" href="">其他配件</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div data-uk-dropdown>
                            <div class="uk-text-center">
                                <i class="uk-icon-soccer-ball-o"></i> 运动/户外
                            </div>
                            <div class="uk-dropdown my-dropdown">
                                <div class="uk-panel uk-panel-box">
                                    <ul class="uk-list uk-list-line">
                                        <li>
                                            <i class="uk-icon-angle-right"></i> 运动 &nbsp;&nbsp;
                                            <a class="uk-button" href="">篮球鞋</a> &nbsp;&nbsp;
                                            <a class="uk-button" href="">休闲板鞋</a> &nbsp;&nbsp;
                                            <a class="uk-button" href="">跑步鞋</a>
                                        </li>
                                        <li>
                                            <i class="uk-icon-angle-right"></i> 户外 &nbsp;&nbsp;
                                            <a class="uk-button" href="">特步</a> &nbsp;&nbsp;
                                            <a class="uk-button" href="">安踏</a> &nbsp;&nbsp;
                                            <a class="uk-button" href="">李宁</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div data-uk-dropdown>
                            <div class="uk-text-center">
                                <i class="uk-icon-line-chart"></i> 金融/理财
                            </div>
                            <div class="uk-dropdown my-dropdown">
                                <div class="uk-panel uk-panel-box">
                                    <ul class="uk-list uk-list-line">
                                        <li>
                                            <i class="uk-icon-angle-right"></i> 金融 &nbsp;&nbsp;
                                            <a class="uk-button" href="">信贷</a> &nbsp;&nbsp;
                                            <a class="uk-button" href="">保险</a> &nbsp;&nbsp;
                                            <a class="uk-button" href="">企业金融</a>
                                        </li>
                                        <li>
                                            <i class="uk-icon-angle-right"></i> 理财 &nbsp;&nbsp;
                                            <a class="uk-button" href="">票据理财</a> &nbsp;&nbsp;
                                            <a class="uk-button" href="">定期理财</a> &nbsp;&nbsp;
                                            <a class="uk-button" href="">基金产品</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div data-uk-dropdown>
                            <div class="uk-text-center">
                                <i class="uk-icon-book"></i> 图书/小说
                            </div>
                            <div class="uk-dropdown my-dropdown">
                                <div class="uk-panel uk-panel-box">
                                    <ul class="uk-list uk-list-line">
                                        <li>
                                            <i class="uk-icon-angle-right"></i> 图书 &nbsp;&nbsp;
                                            <a class="uk-button" href="">外国儿童文学</a> &nbsp;&nbsp;
                                            <a class="uk-button" href="">科普百科</a> &nbsp;&nbsp;
                                            <a class="uk-button" href="">少儿英语</a>
                                        </li>
                                        <li>
                                            <i class="uk-icon-angle-right"></i> 期刊 &nbsp;&nbsp;
                                            <a class="uk-button" href="">旅游</a> &nbsp;&nbsp;
                                            <a class="uk-button" href="">美食</a> &nbsp;&nbsp;
                                            <a class="uk-button" href="">孕产育儿</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div data-uk-dropdown>
                            <div class="uk-text-center">
                                <i class="uk-icon-suitcase"></i> 生活/服装
                            </div>
                            <div class="uk-dropdown my-dropdown">
                                <div class="uk-panel uk-panel-box">
                                    <ul class="uk-list uk-list-line">
                                        <li>
                                            <i class="uk-icon-angle-right"></i> 生活 &nbsp;&nbsp;
                                            <a class="uk-button" href="">吸尘器</a> &nbsp;&nbsp;
                                            <a class="uk-button" href="">扫地机器人</a> &nbsp;&nbsp;
                                            <a class="uk-button" href="">挂烫机</a>
                                        </li>
                                        <li>
                                            <i class="uk-icon-angle-right"></i> 服装 &nbsp;&nbsp;
                                            <a class="uk-button" href="">夹克</a> &nbsp;&nbsp;
                                            <a class="uk-button" href="">羽绒服</a> &nbsp;&nbsp;
                                            <a class="uk-button" href="">衬衫</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <div class="uk-width-3-5" style="padding-top: 10px">
            <%@include file="slidershow.jsp"%>
        </div>
        <div class="uk-width-1-5" style="padding-top: 10px">
            <div class="uk-panel">
                <h3 class="uk-panel-title"><i class="uk-icon-volume-up"></i> 公告</h3>
                <ul class="uk-list uk-list-line">
                    <c:forEach items="${webDto.noticeList }" var="notice" varStatus="vs">
                        <li>${vs.index+1} . <a href='${contextPath}/notice/index?nid=${notice.nid}'> ${notice.title}</a></li>
                    </c:forEach>
                </ul>
            </div>
        </div>

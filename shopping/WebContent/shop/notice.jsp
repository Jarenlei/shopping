<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="header.jsp" %>
<script language="javascript">
		$(function(){
			
		})
</script>
</head>
<body>
		      <div id="wrap" style="margin: 15px">
		                <div id="mynav" class="">
		                    <%@include file="navshow.jsp"%>
		                </div>
		                
		                <div id="notice-article">
		                	<c:if test="${not empty singleNotice}">
		                			<article class="uk-article">
									    <h1 class="uk-article-title">${singleNotice["title"]}</h1>
									    <p class="uk-article-meta">123</p>
									    <p class="uk-article-lead">1234</p>
									    正文
									    <hr class="uk-article-divider">
									    末尾
									</article>
									 <article class="uk-article">

                            <h1 class="uk-article-title">文章</h1>
                            
                            <p class="uk-article-lead">在你页面中创建文章。</p>


                            <h2 id="usage"><a href="#usage" class="uk-link-reset">用法</a></h2>

                            <p>文章组件由文章本身、标题、元数据（例如发布时间、所属栏目、作者等）、起始段落（摘要）和间隔组成。</p>

                            <div class="uk-overflow-container">
                                <table class="uk-table">
                                    <thead>
                                        <tr>
                                            <th>Class</th>
                                            <th>描述</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><code>.uk-article</code></td>
                                            <td>添加这个类来定义文章组件。通常你需要使用 <code>&lt;article&gt;</code> 元素。</td>
                                        </tr>
                                        <tr>
                                            <td><code>.uk-article-title</code></td>
                                            <td>对一个标题添加这个类，来创建文章标题。通常会用在 <code>&lt;h1&gt;</code> 元素中。</td>
                                        </tr>
                                        <tr>
                                            <td><code>.uk-article-meta</code></td>
                                            <td>向包含文章元数据的段落添加这个类。</td>
                                        </tr>
                                        <tr>
                                            <td><code>.uk-article-lead</code></td>
                                            <td>为文章起始段落添加这个类，使其显得突出。</td>
                                        </tr>
                                        <tr>
                                            <td><code>.uk-article-divider</code></td>
                                            <td>对 <code>&lt;hr&gt;</code> 元素添加这个类，建立一个间隔使文章各部分分开。</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <h3 class="tm-article-subtitle">示例</h3>

                            <div class="uk-article">

                                <h1 class="uk-article-title">文章标题-洛神赋</h1>

                                <p class="uk-article-meta">由 曹植 撰写于 2012年12月12日 | 发表在 博客</p>

                                <p class="uk-article-lead">黄初三年，余朝京师，还济洛川。古人有言，斯水之神，名曰宓妃。感宋玉对楚王神女之事，遂作斯赋，其词曰：</p>

                                <p>黄初三年，余朝京师，还济洛川。古人有言，斯水之神，名曰宓妃。感宋玉对楚王神女之事，遂作斯赋，其词曰：</p>
                                <hr class="uk-article-divider">
                                <p>余从京域，言归东藩，背伊阙 ，越轘辕，经通谷，陵景山。日既西倾，车殆马烦。尔乃税驾乎蘅皋，秣驷乎芝田，容与乎阳林，流眄乎洛川。于是精移神骇，忽焉思散。俯则未察，仰以殊观。睹一丽人，于岩之畔。乃援御者而告之曰：“尔有觌于彼者乎？彼何人斯，若此之艳也！”御者对曰：“臣闻河洛之神，名曰宓妃。然则君王所见，无乃是乎？其状若何，臣愿闻之。”</p>
                                <a href="#">继续阅读</a>

                            </div>

                            <h3 class="tm-article-subtitle">Code</h3>

<pre><code class="xml"><span class="tag">&lt;<span class="title">article</span> <span class="attribute">class</span>=<span class="value">"uk-article"</span>&gt;</span>
    <span class="tag">&lt;<span class="title">h1</span> <span class="attribute">class</span>=<span class="value">"uk-article-title"</span>&gt;</span>...<span class="tag">&lt;/<span class="title">h1</span>&gt;</span>
    <span class="tag">&lt;<span class="title">p</span> <span class="attribute">class</span>=<span class="value">"uk-article-meta"</span>&gt;</span>...<span class="tag">&lt;/<span class="title">p</span>&gt;</span>
    <span class="tag">&lt;<span class="title">p</span> <span class="attribute">class</span>=<span class="value">"uk-article-lead"</span>&gt;</span>...<span class="tag">&lt;/<span class="title">p</span>&gt;</span>
    ...
    <span class="tag">&lt;<span class="title">hr</span> <span class="attribute">class</span>=<span class="value">"uk-article-divider"</span>&gt;</span>
    ...
<span class="tag">&lt;/<span class="title">article</span>&gt;</span></code></pre>

                        </article>
		                	</c:if>
		                </div>
                </div>
</body>
</html>
<?xml version="1.0" encoding="UTF-8"?><xsl:stylesheet version="2.0" xmlns:html="http://www.w3.org/TR/REC-html40" xmlns:image="http://www.google.com/schemas/sitemap-image/1.1" xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"><xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/><xsl:template match="/"><html xmlns="http://www.w3.org/1999/xhtml"><head><title>store index</title><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">
body{
font-family: arial;
font-size: 13px;
color: #545353;
}
h1{
font-size: 18px;
}
#container {
margin-left:5%;
margin-right:5%;
margin-top:2.5%;
margin-bottom:2.5%;
}
.linkBlock{
width:100%;
vertical-align:top;
margin-right:1.25%;
padding-top:1.25%;
border-top:1px solid #DBDBDB;
}
.link{
width:75%;
padding-top:.37%;
padding-bottom:.37%;
display:inline-block;
overflow:auto;
}
.link:hover{
background-color:#DBDBDB;
}
.mod{
width:20%;
padding-top:.37%;
padding-bottom:.37%;
display:inline-block;
overflow:auto;
margin-left:2%;
}
.linkhead{
width:75%;
display:inline-block;
padding-bottom:1%;
margin-bottom:1%;
border-bottom:1px solid #DBDBDB;
}
.modhead{
width:20%;
display:inline-block;
padding-bottom:1%;
margin-bottom:1%;
border-bottom:1px solid #DBDBDB;
margin-left:2%;
}
.copyright{
text-align:center;
margin-top:30px;
color:#737373;
}
.rights{
text-align:center;
color:#737373;
}
a{
text-decoration:none;
font-weight:bold;
color:#737373;
}
a:active{
text-decoration:none;
font-weight:bold;
color:red;
}
::-webkit-scrollbar {height:10px;width:10px;} ::-webkit-scrollbar-track {background-color: #DBDBDB;}::-webkit-scrollbar-thumb {background-color: rgba(0, 0, 0, 0.2);}::-webkit-scrollbar-corner {background-color: black;}::-webkit-scrollbar {
height:10px;width:10px;
}
::-webkit-scrollbar-track {
background-color: #DBDBDB;
}
::-webkit-scrollbar-thumb {
background-color: #737373; 
}
::-webkit-scrollbar-corner {
background-color: #DBDBDB;
}
</style>
</head>
<body>
<div id="container">
<h1>store index</h1>
<p>
This sitemap was generated by <a href="http://gcrdev.com" target="_blank">GCRdev</a> and is for search engine reference.<br/>
<a href="http://sitemaps.org">sitemaps.org</a> contains further information regarding sitemaps.
</p>
<xsl:if test="count(sitemap:sitemapindex/sitemap:sitemap) &gt; 0">
<p class="expl">
This file contains indexes for <xsl:value-of select="count(sitemap:sitemapindex/sitemap:sitemap)"/> store<xsl:if test="count(sitemap:sitemapindex/sitemap:sitemap) != 1">s</xsl:if>.
</p>
<div class="linkhead">
sitemap link
</div>
<div class="modhead">
last modified
</div>
<xsl:for-each select="sitemap:sitemapindex/sitemap:sitemap">
<xsl:variable name="sitemapURL">
<xsl:value-of select="sitemap:loc"/>
</xsl:variable>
<div class="link">
<a href="{$sitemapURL}"><xsl:value-of select="sitemap:loc"/></a>
</div>
<div class="mod">								
<xsl:value-of select="concat(substring(sitemap:lastmod,0,11),concat(' ', substring(sitemap:lastmod,12,6)),concat(' ', substring(sitemap:lastmod,20,6)))"/>
</div>
</xsl:for-each>
</xsl:if>
</div>
<div class="copyright">
<xsl:text> &#169;</xsl:text>2017 GCRdev - All rights reserved</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Demo for COC - Powered by iisquare.com</title>
</head>
<body>
<%
String location = request.getRequestURL().toString();
if(location.endsWith("/")) location = location.substring(0, location.length() - 1);
%>
<a href="<%=location%>/index/index/template" target="_blank">FreeMarker视图模板示例</a><br/>
<a href="<%=location%>/index/index/text" target="_blank">纯文本输出示例</a><br/>
<a href="<%=location%>/index/index/json" target="_blank">JSON输出示例</a><br/>
<a href="<%=location%>/index/index/redirect" target="_blank">跳转示例 </a><br/>
<a href="<%=location%>/mapping" target="_blank">springMVC融合示例</a><br/>
<a href="<%=location%>/index/index/param" target="_blank">全局参数输出示例</a><br/>
<a href="<%=location%>/index/index/inject?id=123&title=hello&op=other_param" target="_blank">请求参数获取示例</a><br/>
<a href="<%=location%>/index/index/modelC" target="_blank">数据库操作示例 - 添加</a><br/>
<a href="<%=location%>/index/index/modelU?id=1" target="_blank">数据库操作示例 - 修改</a><br/>
<a href="<%=location%>/index/index/modelR?page=1" target="_blank">数据库操作示例 - 读取</a><br/>
<a href="<%=location%>/index/index/modelD?id=1" target="_blank">数据库操作示例 - 删除</a><br/>
</body>
</html>
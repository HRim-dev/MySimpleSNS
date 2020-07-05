<%@ tag body-content="scriptless" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="http://code.jquery.com/jquery-1.9.1.js" ></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>

<%@ attribute name="mid" %>
<%@ attribute name="auid" %>
<%@ attribute name="curmsg" %>

<script>
var userid=<%=request.getParameter("uid")%>;

function updatemsg(mid,curmsg,cnt) {
	
	var url="update_msg.jsp?mid="+mid+"&curmsg="+curmsg+"&cnt="+cnt+"&suid=";
	window.open(
					url,
					"update_msg",
					"titlebar=no,location=no,scrollbars=no,resizeable=no,menubar=no,toolbar=no,width=570,height=350");
}
</script>

<c:if test="${uid == auid}">
[<a href="javascript:updatemsg(${mid},${curmsg},${cnt})">수정</a>] 
[<a href="sns_control.jsp?action=delmsg&mid=${mid}&curmsg=${curmsg}&cnt=${cnt}&suid=${suid}">삭제</a>] 
</c:if>
[<a href="sns_control.jsp?action=fav&mid=${mid}&curmsg=${curmsg}&cnt=${cnt}&suid=${suid}">좋아요</a>]
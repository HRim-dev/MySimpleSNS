<%@ tag body-content="scriptless" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="http://code.jquery.com/jquery-1.9.1.js" ></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>

<%@ attribute name="rid" %>
<%@ attribute name="ruid" %>
<%@ attribute name="curmsg" %>

<script>
var userid=<%=request.getParameter("rid")%>;

function updatereply(mid,curmsg,cnt) {
	
	var url="update_reply.jsp?mid="+mid+"&curmsg="+curmsg+"&cnt="+cnt+"&suid=";
	window.open(
					url,
					"update_reply",
					"titlebar=no,location=no,scrollbars=no,resizeable=no,menubar=no,toolbar=no,width=570,height=350");
}
</script>

<c:if test="${uid == ruid}">
[<a href="javascript:updatereply(${rid},${curmsg},${cnt})">수정</a>] 
[<a href="sns_control.jsp?action=delreply&rid=${rid}&curmsg=${curmsg}&cnt=${cnt}&suid=${suid}">삭제</a>] 
</c:if>
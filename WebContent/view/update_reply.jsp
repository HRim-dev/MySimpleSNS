<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update msg</title>
<script src="http://code.jquery.com/jquery-1.9.1.js" ></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
</head>
<script>
	function goSubmit(){
		window.opener.name="parentPage";//부모창의 이름 설정
		document.form_update.target="parentPage";//타겟을 부모창으로 설정
		document.form_update.action="sns_control.jsp";
		document.form_update.submit();		
	}
	
	function goCancel(){
		alert('글내용 수정이 취소되었습니다.');
		window.close();	
	}
</script>
<body>
<center>
	<h2>댓글 수정</h2>
	<hr>
	<form name='form_update' method="post">
	<input type="hidden" name="action" value="updatereply">
	<input type="hidden" name="mid" value="<%=request.getParameter("mid")%>">
	<input type="hidden" name="curmsg" value="<%=request.getParameter("curmsg")%>">
	<input type="hidden" name="cnt" value="<%=request.getParameter("cnt")%>">
	<input type="hidden" name="suid" value="<%=request.getParameter("suid")%>">
	수정 내용<p>
	<textarea rows="5" cols="30" name="rmsg">수정 내용을 적어주세요.</textarea><p>
	<input type="button" onclick="goSubmit()" value="수정">&nbsp;<input type="button" onclick="goCancel()" value="취소">
	</form>
</center>
	
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<div class="input">
	<form action="inputCheck.jsp">
		<p><input type="text" name="userName" placeholder="당신의 이름" required autocomplete="off" class="nameinput"></p>
		<p><input type="text" maxlength='6' onKeyup="this.value=this.value.replace(/[^-0-9]/g,'');" name="securityNumber" placeholder="주민번호 앞자리" required autocomplete="off" class="nameinput"></p>
		<input type="submit" value="검색" class="button">
	</form>
</div>

</body>
</html>
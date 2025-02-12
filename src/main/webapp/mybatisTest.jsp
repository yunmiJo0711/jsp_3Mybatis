<%@page import="mybatis.vo.ProductVo"%>
<%@page import="mybatis.dao.MybatisProductDao"%>
<%@page import="mybatis.vo.CustomerVo"%>
<%@page import="mybatis.dao.MybatisCustomerDao"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mybatisTest.jsp</title>
</head>
<body>
	<%
		MybatisCustomerDao dao = new MybatisCustomerDao();
		CustomerVo vo = dao.selectByPk("hongGD");
		out.print(vo);
	%>
	<br/>
	<%
		MybatisProductDao pdao = new MybatisProductDao();
		ProductVo pvo = pdao.selectByPk("SINRM9");
		out.print(pvo);
	%>
	<br/>
	<%
		ProductVo vo2 = new ProductVo("SPAM9E", "B2", "스팸 9개입 선물세트", 45000);
		MybatisProductDao dao2 = new MybatisProductDao();
		//int result = dao2.insert(pdvo); // insert 는 pk 값이라 중복으로 넣으면 안되서 주석처리함. 
		//out.print("result : " + result);
		out.print(dao2.selectByPk("SPAM9E"));
		out.print("<br/>");
		out.print(dao2.searchByKeyword("새우"));
		out.print("<br/>");
		out.print("delete result : " + dao2.delete("SPAM9E")); 
	%>
</body>
</html>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo7.Customer" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 12/3/2024
  Time: 2:46 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>ww
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    List<Customer> customerList = new ArrayList<>();
    customerList.add(new Customer("minh", "2000-10-10", "Hà nội", "path/to/image1.jpg"));
    customerList.add(new Customer("anh", "1995-05-15", "Hồ Chí Minh", "path/to/image2.jpg"));
    customerList.add(new Customer("tuấn", "1998-08-20", "Đà Nẵng", "path/to/image3.jpg"));
    customerList.add(new Customer("lan", "2001-01-01", "Nha Trang", "path/to/image4.jpg"));
    customerList.add(new Customer("hà", "1999-12-12", "Vũng Tàu", "path/to/image5.jpg"));
    request.setAttribute("list", customerList);
%>
<h1>Danh sách khách hàng</h1>
<table style="border: 2px solid black; width: 600px">
    <thead>
    <tr style="padding: 10px">
        <th>Tên</th>
        <th>Ngày sinh</th>
        <th>Địa chỉ</th>
        <th>Ảnh</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="customer" items="${list}">
        <tr>
            <td>${customer.name}</td>
            <td>${customer.dateOfBirth}</td>
            <td>${customer.address}</td>
            <td><img src="${customer.image}"></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>

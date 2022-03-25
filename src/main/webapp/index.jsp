<%@ page import="java.util.List" %>
<%@ page import="model.Customer" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 25/03/2022
  Time: 3:38 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <title>Danh sách Khách hàng</title>
  </head>
  <body>
  <%!
    List<Customer> customerList = new ArrayList<>();

    public void jspInit(){
      customerList.add(new Customer("Tran Duy Tung", "09-11-1999", "Ha Noi", "https://scontent.fhan3-5.fna.fbcdn.net/v/t1.15752-9/262367860_1298419270675294_7695383855508064011_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=ae9488&_nc_ohc=2gmrDSZI5s8AX9rDR6Q&_nc_ht=scontent.fhan3-5.fna&oh=03_AVKhhaXPHvW4HjVlvt0OqzcdgYXl5VdRMKJM8alhYhQRsQ&oe=6263B59F"));
      customerList.add(new Customer("Tran Xuan Chien", "28-12-1990", "Ha Noi", "https://scontent.fhan3-5.fna.fbcdn.net/v/t1.18169-9/13726617_711572148982247_619295913966037591_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=NYXgS65hYEEAX_qxHrq&_nc_ht=scontent.fhan3-5.fna&oh=00_AT9anoz1E7vObl2RvNrAKI6ycHS7RkmRf5OIrRrT3Fm-IA&oe=626507C5"));
      customerList.add(new Customer("Cao Yen Phi", "12-12-1991", "Ha Nam" , "https://scontent.fhan4-1.fna.fbcdn.net/v/t39.30808-6/274885875_2530072693792780_7712787920244601563_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=0debeb&_nc_ohc=yZeO_jWnbNQAX9kVxqm&_nc_ht=scontent.fhan4-1.fna&oh=00_AT-q2WYyPB9s2PKuSw2b5RYFy3pzNjy7q-ZhHm_6hXOdWQ&oe=6241A726"));
    }
    %>
  <%
      request.setAttribute("dskh", customerList);

  %>
  <table border="1">
    <tr>
      <th>Name</th>
      <th>Date Of Birth</th>
      <th>Address</th>
      <th>Image</th>
      <c:forEach var="customer" items="${dskh}">
        <tr>
    <td>${customer.name}</td>
    <td>${customer.dateOfBirth}</td>
    <td>${customer.address}</td>
    <td><img src="${customer.img}" width="50" height="50"></td>
  </tr>
      </c:forEach>
    </tr>
  </table>
  </body>
</html>

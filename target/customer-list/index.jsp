<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.codegym.model.Customer"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>
<%-- Đối với Tomcat 9 trở xuống, dùng: <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Danh sách khách hàng</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px auto;
            max-width: 800px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #f9f9f9;
        }
        img {
            width: 60px;
            height: 60px;
            object-fit: cover;
            border-radius: 50%;
        }
    </style>
</head>
<body>

<%
    List<Customer> customerList = new ArrayList<>();
    customerList.add(new Customer("Mai Văn Hoàn", "1983-08-20", "Hà Nội", "https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?w=100"));
    customerList.add(new Customer("Nguyễn Văn Nam", "1983-08-21", "Bắc Giang", "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?w=100"));
    customerList.add(new Customer("Nguyễn Thái Hòa", "1983-08-22", "Nam Định", "https://images.unsplash.com/photo-1527980965255-d3b416303d12?w=100"));
    customerList.add(new Customer("Trần Đăng Khoa", "1983-08-17", "Hà Tây", "https://images.unsplash.com/photo-1580489944761-15a19d654956?w=100"));
    customerList.add(new Customer("Nguyễn Đình Thi", "1983-08-19", "Hà Nội", "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=100"));

    request.setAttribute("customerList", customerList);
%>

<h2>Danh sách khách hàng</h2>

<table>
    <thead>
        <tr>
            <th>STT</th>
            <th>Tên</th>
            <th>Ngày sinh</th>
            <th>Địa chỉ</th>
            <th>Ảnh</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="customer" items="${customerList}" varStatus="loop">
            <tr>
                <td>${loop.index + 1}</td>
                <td>${customer.name}</td>
                <td>${customer.dob}</td>
                <td>${customer.address}</td>
                <td>
                    <img src="${customer.image}" alt="${customer.name}">
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>

</body>
</html>
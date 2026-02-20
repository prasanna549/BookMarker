<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Bookmark Manager</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

</head>

<body>

<div class="container mt-4">
    <div class="card shadow">

        <div class="card-header bg-primary text-white text-center">
            <h3>SMART BOOKMARK MANAGER</h3>
        </div>

        <div class="card-body">

            <a href="${pageContext.request.contextPath}/add"
               class="btn btn-success mb-3">
               Add New Bookmark
            </a>

            <table class="table table-bordered table-hover">

                <thead class="bg-info text-white">
                    <tr>
                        <th>ID</th>
                        <th>Title</th>
                        <th>URL</th>
                        <th>Actions</th>
                    </tr>
                </thead>

                <tbody>

                    <c:forEach var="bookmark" items="${bookmarks}">
                        <tr>
                            <td>${bookmark.id}</td>
                            <td>${bookmark.title}</td>
                            <td>
                                <a href="${bookmark.url}" target="_blank">
                                    ${bookmark.url}
                                </a>
                            </td>
                            <td>
                                <a href="/edit/${bookmark.id}"
                                   class="btn btn-warning btn-sm">
                                   Edit
                                </a>

                                <a href="/delete/${bookmark.id}"
                                   class="btn btn-danger btn-sm"
                                   onclick="return confirm('Are you sure you want to delete this bookmark?');">
                                   Delete
                                </a>
                            </td>
                        </tr>
                    </c:forEach>

                </tbody>

            </table>

        </div>
    </div>
</div>

</body>
</html>
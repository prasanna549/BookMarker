<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Bookmark</title>

    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
</head>

<body>

<div class="container mt-5">
    <div class="card">

        <div class="card-header bg-primary text-white text-center">
            <h3>Edit Bookmark</h3>
        </div>

        <div class="card-body">

            <!-- IMPORTANT: URL must match your controller mapping -->
            <form action="${pageContext.request.contextPath}/update" method="post">

                <!-- Hidden ID -->
                <input type="hidden" name="id" value="${bookmark.id}" />

                <div class="form-group">
                    <label>Title</label>
                    <input type="text"
                           name="title"
                           class="form-control"
                           value="${bookmark.title}"
                           required />
                </div>

                <div class="form-group">
                    <label>URL</label>
                    <input type="text"
                           name="url"
                           class="form-control"
                           value="${bookmark.url}"
                           required />
                </div>

                <button type="submit" class="btn btn-success">
                    Update Bookmark
                </button>

                <a href="${pageContext.request.contextPath}/"
                   class="btn btn-secondary">
                   Cancel
                </a>

            </form>

        </div>

    </div>
</div>

</body>
</html>
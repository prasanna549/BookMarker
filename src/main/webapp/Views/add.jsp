<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>

<html>
 <head>
  <title>Document</title> 
       <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
       <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.min.js"></script>
       <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
 </head>
 <body>
     <div class="container">
        <div class="card">
            <div class="card-header bg-primary text-white text-center">
                <h3>WELCOME TO Book Mark  </h3>
            </div>

           <div class="card-body"> 

               <form action="save" method="POST">
                    <a href="${pageContext.request.contextPath}/" class="btn btn-warning">All</a>
                   <pre>
                      Title  : <input type="text" name="title" class="form-control"/>
                      Image url : <input type="text" name="url" class="form-control"/> 
                     
                     <button type="submit" class="btn btn-success">Add</button>
                  </pre>
                </form>
          </div>
  <div class="card-footer bg-info text-white">

        <h3>  ${message} </h3> 

      </div>
</div>

</div>

 </body>

</html>
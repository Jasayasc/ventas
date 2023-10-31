<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Modelo.Producto"%>
<%@page import="Modelo.Empleado" %>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    HttpSession sesion = request.getSession();
    System.out.println("Sesion numero desde home "+sesion.getId());
    Empleado emp = (Empleado) sesion.getAttribute("usuario");
    if (emp!=null) {
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <style>
        h5,p{
            color: black;
        }
    </style>
    <body>
        <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel" style="height: 650px;">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="3"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="4"></li>
            </ol>
            <div class="carousel-inner"  style="height: 650px;">
                <div class="carousel-item active" style="height: 650px;" width="650" height="650">
                    <img src="img/1.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5 style="color:white">Teclado Logitech 345</h5>
                        <p style="color:white">En efecto es un teclado.</p>
                    </div>
                </div>
                <div class="carousel-item" style="height: 650px;">
                    <img src="img/2.jpg" class="d-block w-100" alt="..." width="650" height="650">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>HeadPhones Sony M333</h5>
                        <p>Son unos auriculares sony q mas queres</p>
                    </div>
                </div>
                <div class="carousel-item" style="height: 650px;">
                    <img src="img/3.png" class="d-block w-100" alt="..." width="650" height="650">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Peinilla para calvos</h5>
                        <p>Para que no se sientan discriminados.</p>
                    </div>
                </div>
                <div class="carousel-item" style="height: 650px;">
                    <img src="img/4.jpg" class="d-block w-100" alt="..." width="650" height="650">
                    <div class="carousel-caption d-none d-md-block">
                        <h5 style="color:white">Par de manos</h5>
                        <p style="color:white">Para que los mancos tengan oportunidades de ganar.</p>
                    </div>
                </div>
                <div class="carousel-item" style="height: 650px;">
                    <img src="img/5.jpg" class="d-block w-100" alt="..." width="650" height="650">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Laptop Lenovo Ideapad 520</h5>
                        <p>En efecto es un pc.</p>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-target="#carouselExampleCaptions" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-target="#carouselExampleCaptions" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </button>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
    </body>
</html>
<% 
    }else {
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }
%>
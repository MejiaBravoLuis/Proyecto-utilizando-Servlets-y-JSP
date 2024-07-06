<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.ArrayList" %>
<!DOCTYPE html>
<link href="estilos.css" rel="stylesheet" type="text/css"/>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Products</title>
    <link integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="estilos.css">

    </head>
    <body>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        
        <nav class="navbar navbar-dark bg-dark fixed-top">
        <div class="container-fluid">
          <a class="navbar-brand" href="../index.jsp">Return to Home</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
            <div class="offcanvas-header">
              <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">More</h5>
              <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
              <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="../index.jsp">Home</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="../formulario-productos/formulario-productos.jsp">Add a new product</a>
                </li>
                <li class="nav-item dropdown">
                </li>
              </ul>
            </div>
          </div>
        </div>
    </nav>
        <br>
        <br>
        <div mt-5>
            <% ArrayList<String> producto = (ArrayList)request.getAttribute("producto"); %>
            <% 
                if(producto != null){
                    for(String prod: producto){%>
                    <ul>
                        <<li><%=prod%></li>
                    </ul>
                <%}
                }

            %>
        </div>

    <div class="container mt-5 w-75">
      <p>Products</p>
      <div class="form-floating">
        <table class="table">
          <thead>
            <tr>
              <th scope="col">Id</th>
              <th scope="col">Name</th>
              <th scope="col">Description</th>
              <th scope="col">Brand</th>
              <th scope="col">Price</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>1</td>
              <td>PROTEIN COOKIE</td>
              <td>Made with RAW Protein in every bite, 
                our collab cookies with My Cookie Dealer
                deliver a delicious and nutritious treat
                that's perfect for any time of day. With
                18-21 grams of protein per cookie,</td>
              <td>Raw</td>
              <td>$47.99</td>
              <td>
                <img
                  width="25%"
                  src="https://getrawnutrition.com/cdn/shop/files/JKY08293_720x.jpg?v=1708621886"
                  alt="Protein cookies"
                  title="Cookies"
                />
              </td>
            </tr>
            <tr>
              <td>2</td>
              <td>CREATINE MONOHYDRATE</td>
              <td>
                Creatine monohydrate was one of the first sports nutrition supplements 
                to ever hit the market decades ago, there’s a reason it has withstood 
                the tests of time. This strength builder has been proven time and time 
                again to enhance power output. 
              </td>
              <td>Raw</td>
              <td>$14.39</td>
              <td>
                <img
                  width="25%"
                  src="https://getrawnutrition.com/cdn/shop/files/CREATMONOUNFLV_720x.jpg?v=1717427960"
                  alt="Celular Motorola"
                  title="Celular Motorola"
                />
              </td>
            </tr>
            <tr>
              <td>3</td>
              <td>5LB CBUM ITHOLATE PROTEIN</td>
              <td>Buy classic Itholate flavors in bulk! 
                5 pound of lean muscle growth and tasty
                flavors are just a click away. For those 
                who stick to their favorites, the time has 
                never been better.</td>
              <td>Bum</td>
              <td>$35.99</td>
              <td>
                <img
                  width="25%"
                  src="https://getrawnutrition.com/cdn/shop/files/5poundvan2_720x.jpg?v=1711746755"
                  alt="Celular Motorola"
                  title="Celular Motorola"
                />
              </td>
            </tr>
            
          </tbody>
        </table>
      </div>
    </div>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
    </body>
</html>
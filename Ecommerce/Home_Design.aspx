<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home_Design.aspx.cs" Inherits="Ecommerce.Boot_Assignment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!DOCTYPE html>

<html>
<head>
    <title></title>
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <style type="text/css">
        .profile {
            width: 31px;
            height: 27px;
        }
        .imgshape{
            border:none;
            border-color:black;
            
            width: 100px;
            height:100px;
        }
        .margin_div{
            margin-top:50px;
        }
        
    </style>

</head>
<body>
   
             <div class="container-fluid">
     <nav class="navbar navbar-expand-lg navbar-dark fixed-top mb-5" style="background-color:#1f1f1f">
           
              
                <a class="navbar-brand" href="#">
                    <img src="Images/mynewlogo.png" style=" width: 105px;height: 40px;"/></a>
                <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                    <div class="navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="#">Home</a>
                            </li>

                             <li class="nav-item">
                                <a class="nav-link " href="#">Products</a>                                
                            </li>

                             <li class="nav-item">
                                <a class="nav-link " href="#">Services</a>
                            </li>
                           
                            <li class="nav-item">
                                <a class="nav-link" href="#">About us</a>
                            </li>  
                        </ul>
                        <form class="d-flex">
                            <input class="form-control me-2" type="search" placeholder="Search"  aria-label="Search" />
                            <button class="btn btn-outline-success" type="submit" >Search</button>

                        </form>
                        <div class="tnb-right-section">

                             <ul class="navbar-nav me-auto mb-2 mb-lg-0 " >
                            
                           
                         <li class="nav-item dropdown">
                            
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" data-expanded="false"> <img src="Images/profile.jpg"  style="border-radius:50%;" class="profile"/>My Account</a>
                            <ul class="dropdown-menu" arialabelledby="navbarDropdown" style="background-color:#c6c3c3">

                                <li><a class="dropdown-item" href="#">Login/Sign up</a></li>
                                <li><a class="dropdown-item" href="#">Wishlist</a></li>
                                 
                                <li><a class="dropdown-item" href="#">Cart</a></li>
                                 <li><a class="dropdown-item" href="#">Orders</a></li>
                                 <li><a class="dropdown-item" href="#">Logout</a></li>
                            </ul>
                            </li>
                              </ul>
                        </div>
                        
                        
                      
                    </div>
            

        </nav>
         
         <div class="margin_div">

               <div class="row mt-5 ps-3">
       <div class="col mt-5" >
            <div class="card mt-5 border-0" style="width:170px;align-items:center;" >
            <img class="card-img-top imgshape" src="Images/EditProduct.jpg" alt="photo"  />
               <div class="card-body">                 
                    <a class="nav-link dropdown-toggle " href="#"  role="button" data-bs-toggle="dropdown" data-expanded="false">Vegetables</a>
                            <ul class="dropdown-menu" arialabelledby="navbarDropdown" style="background-color:#bbbbcf">

                                <li><a class="dropdown-item" href="#">Link1</a></li>
                                <li><a class="dropdown-item" href="#">Link2</a></li>                                
                                <li><a class="dropdown-item" href="#">Link3</a></li>                               
                            </ul>
               </div>
            </div>
       </div>

                  

                    <div class="col mt-5 ps-3" >
            <div class="card mt-5 border-0" style="width:170px;align-items:center;" >
            <img class="card-img-top imgshape" src="Images/fruitie.jpeg" alt="photo" />
               <div class="card-body">                 
                    <a class="nav-link dropdown-toggle " href="#"  role="button" data-bs-toggle="dropdown" data-expanded="false">Fruits</a>
                            <ul class="dropdown-menu" arialabelledby="navbarDropdown" style="background-color:#bbbbcf">

                                <li><a class="dropdown-item" href="#">Link1</a></li>
                                <li><a class="dropdown-item" href="#">Link2</a></li>                                
                                <li><a class="dropdown-item" href="#">Link3</a></li>                               
                            </ul>
               </div>
            </div>
       </div>
                     <div class="col mt-5" >
            <div class="card mt-5 border-0" style="width:170px;align-items:center;" >
            <img class="card-img-top imgshape" src="Images/leafy.jpg" alt="photo"  />
               <div class="card-body">                 
                    <a class="nav-link dropdown-toggle " href="#"  role="button" data-bs-toggle="dropdown" data-expanded="false">Leaf Vegetables</a>
                            <ul class="dropdown-menu" arialabelledby="navbarDropdown" style="background-color:#bbbbcf">

                                <li><a class="dropdown-item" href="#">Link1</a></li>
                                <li><a class="dropdown-item" href="#">Link2</a></li>                                
                                <li><a class="dropdown-item" href="#">Link3</a></li>                               
                            </ul>
               </div>
            </div>
       </div>

                    <div class="col mt-5 ps-3" >
            <div class="card mt-5 border-0" style="width:170px;align-items:center;" >
            <img class="card-img-top imgshape" src="Images/img4.jpg" alt="photo"  />
               <div class="card-body">                 
                    <a class="nav-link dropdown-toggle " href="#"  role="button" data-bs-toggle="dropdown" data-expanded="false">cut vegetables</a>
                            <ul class="dropdown-menu" arialabelledby="navbarDropdown" style="background-color:#bbbbcf">

                                <li><a class="dropdown-item" href="#">Link1</a></li>
                                <li><a class="dropdown-item" href="#">Link2</a></li>                                
                                <li><a class="dropdown-item" href="#">Link3</a></li>                               
                            </ul>
               </div>
            </div>
       </div>

                    <div class="col mt-5 ps-3" >
            <div class="card mt-5 border-0" style="width:170px;align-items:center;" >
            <img class="card-img-top imgshape" src="Images/dragon.jpg" alt="photo" />
               <div class="card-body">                 
                    <a class="nav-link dropdown-toggle " href="#"  role="button" data-bs-toggle="dropdown" data-expanded="false">Exotic Fruits</a>
                            <ul class="dropdown-menu" arialabelledby="navbarDropdown" style="background-color:#bbbbcf">

                                <li><a class="dropdown-item" href="#">Link1</a></li>
                                <li><a class="dropdown-item" href="#">Link2</a></li>                                
                                <li><a class="dropdown-item" href="#">Link3</a></li>                               
                            </ul>
               </div>
            </div>
       </div>

   </div>

         </div>
    
    <div id="democaro" class="carousel slide carousel-dark mt-5" data-bs-carousel="carousel" data-bs-ride="carousel" data-interval="100">
        
        <div class="carousel-inner"> 
           
            <div class="carousel-item active" style="height:250px;">
                <img src="Images/caro1.png" alt="freshop" class="d-block w-100" />
                <div class="carousel-caption">
                    <h1>Farm Fresh Vegetables</h1>
                </div>
            </div>

            <div class="carousel-item" style="height:250px;">
                <img src="Images/caro2.jpg" alt="freshop" class="d-block w-100" />
                <div class="carousel-caption">
                    <h1>Fresh Fruits</h1>
                </div>
            </div>

            <div class="carousel-item" style="height:250px;">
                <img src="Images/caro3.jpg" alt="freshop" class="d-block w-100" />
                <div class="carousel-caption">
                    <h1>Premium vegetables and fruits</h1>
                </div>
            </div>

             </div>
    
        <button type="button" class="carousel-control-prev" data-bs-target="#democaro" data-bs-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </button>
        <button type="button" class="carousel-control-next" data-bs-target="#democaro" data-bs-slide="next">
            <span class="carousel-control-next-icon"></span>
        </button>

        <div class="carousel-indicators">
            <button type="button" data-bs-target="#democaro" data-bs-slide-to="0" class="active"></button>
            <button type="button" data-bs-target="#democaro" data-bs-slide-to="1"></button>
            <button type="button" data-bs-target="#democaro" data-bs-slide-to="2"></button>

        </div>

    </div>
            </div> 
       
</body>
</html>
    </asp:Content>


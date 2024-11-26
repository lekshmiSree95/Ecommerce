<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assignment.aspx.cs" Inherits="Ecommerce.Assignment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

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
            <img class="card-img-top imgshape" src="Images/exoticveg.png" alt="photo"  />
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

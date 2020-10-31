<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="GirlsGK.index" %>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
      <link href="Content/style.css" rel="stylesheet" />
      <link href="Content/bootstrap.min.css" rel="stylesheet" />
      <link href="css/fixed.css" rel="stylesheet" />
      <link href="Content/custom-cs.css" rel="stylesheet" />
      <link rel="icon" href="img/brownielogo.jpg" />
      <title>Girlguiding Kettering</title>
  </head>
  <body data-spy="scroll" data-target="#navbarResponsive">
      <!----Start Home Section--->
      <div id="home">
          <!----Navigation---->
          <nav class="navbar navbar-expand-md navbar-dark bg-info fixed-top">
              <a class="navbar-brand" href="index.aspx">
                  <img src="img/logo.png" />
              </a>
              <button class="navbar-toggler bg-dark" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                  aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="navbarResponsive">
                  <ul class="navbar-nav ml-auto">
                      <li class="nav-item">
                          <a class="nav-link" href="#home">Home</a>
                      </li>
                       <li class="nav-item">
                          <a class="nav-link" href="#team">Join Us</a>
                      </li>
                      <li class="nav-item">
                          <a class="nav-link" href="#course">Shop</a>
                      </li>
                      <li class="nav-item">
                          <a class="nav-link" href="#portfolio">Blogs</a>
                      </li>                     
                      <li class="nav-item">
                          <a class="nav-link" href="#contact">Contact</a>
                      </li>
                  </ul>
              </div>
          </nav>
           <br />
              <br />
              <br />
          <!---Start Image Slider--->
          <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-interval="10000">
            <ol class="carousel-indicators">
                  <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                  <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                  <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>  
                  <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
                  <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
                  <li data-target="#carouselExampleIndicators" data-slide-to="6"></li>
                  <li data-target="#carouselExampleIndicators" data-slide-to="7"></li>
              </ol>
             
                  <!----wrapper Main Slide--->
           <div class="carousel-inner" role="listbox">
                  <div class="carousel-item active" style="background-image:url(img/carousel2.png)";>
                      <div class="carousel-caption text-center">
                          <h1 class="text1">Welcome To</h1>
                          <h3 class="text2">GirlGuiding Kettering</h3>                         
                      </div>

                  </div>
                  <!----Slide Rainbow--->              

               <div class="carousel-item" style="background-image:url(img/rainbowslide.jpg);">    
                   <div class="carousel-caption text-justify">
                   <a href="https://www.girlguiding.org.uk/what-we-do/rainbows-5-7/" style="color:transparent">
                       <h2 style="color:blue">Welcome To Rainbow Kettering</h2></a>
                   </div>
               </div>
                   
                   <!----Slide Brownie--->
                  <br />
                  <br />
                  <div class="carousel-item" style="background-color:gold; background-image:url(img/Brownieslide.png);">
                       <div class="carousel-caption text-left">
                   <a href="https://www.girlguiding.org.uk/what-we-do/brownies-7-10/" style="color:transparent">
                       <h2 style="color:chartreuse">Welcome To Brownie Kettering</h2></a>
               </div>
                      </div>
                 
                   <!----Slide Guide--->
                   <div class="carousel-item" style="background-image: url(img/guidecarousal.png)";>
                       <div class="carousel-caption text-left">
                            <a href="https://www.girlguiding.org.uk/what-we-do/guides-10-14/" style="color:transparent">
                                <h2 style="color:darkblue">Welcome To Guide Kettering</h2></a>

                       </div>
                      </div>
                 
                  <!----Slide Rangers--->
                    <div class="carousel-item" style="background-image: url(img/rangercarousal.png)";>
                        <div class="carousel-caption text-left">
                           <a href="https://www.girlguiding.org.uk/what-we-do/rangers/" style="color:transparent">
                           <h2 style="color:maroon">Welcome To Rangers Kettering</h2></a>                                                         
                       </div>
                      </div>
                             
              <!----Slide Young Leader--->
                  <div class="carousel-item" style="background-image: url(img/YoungLeaderSlider.png)";>
                       <div class="carousel-caption text-center">
                           <a href="https://www.girlguiding.org.uk/what-we-do/young-women/" style="color:transparent">
                               <h2 style="color:cadetblue">Welcome To Young Leader Kettering</h2></a>                                                         
                       </div>
                      </div>
                   <!----Slide Trefoil Guild--->
                   <div class="carousel-item" style="background-image: url(img/trefoildguildCarousal.jpg)";>
                      <div class="carousel-caption text-left">
                           <a href="https://www.trefoilguild.co.uk/" style="color:transparent">
                               <h2 style="color:red">Welcome To Trefoil Guild Kettering</h2></a>                                                         
                       </div>
                      </div>
               </div>
              </div>      
       <!----End Carosel Inner--->
      <!---Prev & Next---->
          <!----End of Image Slider---->
        
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
          </a>
      </div>     
      <!----End Home Section--->
     
       <!---Start JoinUs Section--->
      <div id="team" class="offset">
          <div class="col-12 text-center">
          <h3 class="heading">Join Us</h3>
          <div class="heading-underline"></div>

          <div class="row padding">
              <div class="col-md-6">
                  <div class="card text-center">
                      <img class="card-img-top" src="img/joinUs.png" />
                      <div class="card-body">
                          <a href="https://www.girlguiding.org.uk/information-for-parents/register-your-daughter/" style="color:transparent">
                              <h4> Register Your Daughter </h4></a>                         
                          <a href="https://www.girlguiding.org.uk/information-for-parents/register-your-daughter/" style="color:transparent"><p style="color:darkmagenta">Take the first step to joining us - Register your daughter's interest in Girlguiding</p></a>

                      </div>
                  </div>
              </div>

              <div class="col-md-6">
                  <div class="card text-center">
                      <img class="card-img-top" src="img/volunteer.png" />
                      <div class="card-body">
                          <a href="https://www.girlguiding.org.uk/get-involved/become-a-volunteer/" style="color:transparent">
                          <h4> Become a Volunteer </h4></a> 
                          <a href="https://www.girlguiding.org.uk/get-involved/become-a-volunteer/" style="color:transparent"><p style="color:darkmagenta">No matter how much time you have to give, there's an opportunity for you</p></a>
                      </div>
                  </div>
              </div>
          </div>
              </div>
          <!---End of Row-->
           <!----Start Course Section---->
    <div id="course" class="offset">
        <div class="col-12 narrow text-center">
            <h1>GirlGuiding Shop</h1>
            <p class="lead">All the uniform, gifts and resources girls could want to enjoy being part of Girlguiding.</p>
            <a class="btn btn-info btn-md" href="https://www.girlguidingshop.co.uk/?_ga=2.202373401.903057861.1600773101-2043009966.1600773101&_gac=1.149563076.1600849873.CjwKCAjw5Kv7BRBSEiwAXGDElfcdR3iXplomXJfVieqJS2-clX44ZdzO6pBD-ppzaWP-tDjyTUyDBRoCBGQQAvD_BwE" target="_blank">Shop here</a>
        </div>
    </div>
       <!---Start Portfolio Section--->
      <div id="portfolio" class="offset">
          <div class="jumbotron container-fluid">

          <div class="col-12 text-center">

          <h3 class="heading">Blogs</h3>
              <div class="heading-underline"></div>
              </div>
              <div class="row no-padding">
                  <div class="col-sm-4">
                      <div class="portfolio">
                          <h3 class="text-center" style="color:red">Rainbow(5-7)
                                  <a href="DashboardRainbow.aspx"><img src="img/Rainbowblog.png" /></a>                          
                              </h3>
                      </div>
                  </div>
                   
                  <div class="col-sm-4">
                      <div class="portfolio">
                          <h3 class="text-center" style="color:darkgoldenrod">
                              Brownies(7-10)
                              <a href="DashboardBrownie.aspx" target="_blank">
                              <img src="img/Brownie.png" />
                          </a>
                          </h3>
                      </div>
                  </div>

                  <div class="col-sm-4">
                      <div class="portfolio">
                          <h3 class="text-center" style="color:darkblue">
                              Guides(10-14)
                          <a href="DashboardGuides.aspx" target="_blank">
                              <img src="img/Guide.png" />
                          </a></h3>
                      </div>
                  </div>

                  <div class="col-sm-4">
                      <div class="portfolio">
                           <h3 class="text-center" style="color:darkred">Rangers(14-18)/Young Leader(18+)
                          <a href="DashboardYoungLeader.aspx" target="_blank">
                              <img src="img/Rangers.png" />
                          </a></h3>
                      </div>
                  </div>

                  <div class="col-sm-4">
                      <div class="portfolio">
                           <h3 class="text-center" style="color:darkblue">
                             Northamptonshire Girlguiding
                          <a href="https://www.girlguidingnorthamptonshire.org.uk/" target="_blank">
                              <img src="img/YoungLeader.png" />
                          </a></h3>
                      </div>
                  </div>

                  <div class="col-sm-4">
                      <div class="portfolio">
                           <h3 class="text-center" style="color:crimson">Trefoil Guild Guiding For Adults
                          <a href="TrefoilGuildDashboard.aspx" target="_blank">
                              <img src="img/Trefoildguild.png" />
                          </a></h3>
                      </div>
                  </div>

                  <div class="narrow text-center">
                      <div class="col-12">
                          <p class="lead">Leaders Blog</p>
                          <a class="btn btn-secondary btn-md" href="signin.aspx">Admin use only</a> 
                          <a class="btn btn-secondary btn-md" href="Admin.aspx">Commissioner</a>
                     </div>
                  </div>
              </div><!----End Row--->
              
          </div><!---End of Jumbotron--->
      </div>
      <!---End Portfolio Section--->
     
      </div>
      <!---End Team Section--->
      <!---Start content Section--->
      <div id="contact" class="offset">
          <footer>
              <div class="row justify-content-center">
                  <div class="col-md-5 text-center">
                  <h2>Girlguiding Kettering</h2>
                      <p>We are the leading charity for girls and young women in the UK
                      </p>
                      <a href="contactUs.aspx"> <strong>Contact Us</strong></a>                     
                      <p>                          <br />
                      </p>
                      <a href="https://en-gb.facebook.com/groups/6761647994/" target="_blank"><i class="fab fa-facebook-square"></i></a>
                      <a href="https://twitter.com/girlguiding?lang=en" target="_blank"><i class="fab fa-twitter-square"></i></a>
                      <a href="https://www.instagram.com/girlguiding/?hl=en" target="_blank"><i class="fab fa-instagram"></i></a>
                  </div>
                  <hr class="socket" />
                  &copy; 2020, Girlguiding, Charity Number 306016
              </div><!----End of Row---->
          </footer>
      </div>
      <!---End content Section--->
 

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://use.fontawesome.com/releases/v5.6.1/js/all.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <%--<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>--%>
  </body>
</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style type="text/css">
    * {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1700px;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}
body {margin:0;}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
  position: fixed;
  top: 0;
  width: 100%;
}

li {
  float: left;
}

li a {
 display: block;
  color: white;
  text-align: center;
  padding: 18px 22px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #4CAF50;
}
li .a input[type=text] {
  float: right;
  padding: 6px;
  border: none;
  margin-top: 8px;
  margin-right: 16px;
  font-size: 17px;
}

</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div>
    <ul>

  <li><a class="active" href="index.aspx">Home</a></li>
  <li><a href="Sign_Up.aspx">Sign Up</a></li>
  <li><a href="Sign_In.aspx">Sign In</a></li>
  
  <!-- <input type="text" name="search" placeholder="Search..">-->
</ul>
    </div>
      
<div class="slideshow-container "  style="margin-top:60px; font-style: oblique;">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="img/Assignment-Guide.jpg"" style="width:100%">
  <div class="text">Step 1 – Understand the assignment task</div>
</div>


<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>

</div>
<br>

<script>
    var slideIndex = 1;
    showSlides(slideIndex);

    function plusSlides(n) {
        showSlides(slideIndex += n);
    }

    function currentSlide(n) {
        showSlides(slideIndex = n);
    }

    function showSlides(n) {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("dot");
        if (n > slides.length) { slideIndex = 1 }
        if (n < 1) { slideIndex = slides.length }
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
    }
</script>
     
      <div  class="w3-container"  > 
    <!--<img src="img/1.jpg"  width="100%"  height="600px" alt="..." />-->
    <h2 style="color:grey; text-align:center;">The steps below will help you plan, research, write and review your assignment.</h2><br />
    <div style="color:red;">
    <h4 style="text-align:center;">Step 1 – Understand the assignment task</h4>
    <pre class="oblique">      
                   Before you start your assignment make sure you analyse the assignment task or question and understand what you have been asked to do.
                   This will help you focus your research.Find out how to understand your assignment task Also check what type of assignment you are doing.
                   Is it an essay or a report? This will help you focus your research and know how to structure your assignment.
                    Learn more in the Types of assignments page</pre>
    </div><br><br />
    <div style="color:blue;">
    <h4 style="text-align:center;  ">Step 2 – Do your research</h4>
    <pre class="obique">
                 Next, research your topic and find relevant and reliable information. You will find some in your course materials and  recommended readings,
                 but you can also try: the Open Polytechnic Library , online sources  ,  talking to experts. Tips on how to research    Evaluating information
                 Critical thinking for reading and research</pre>
</div><br><br />
<div style="color:red;">
    <h4 style="text-align:center;">Step 3 – Plan</h4>
    <pre>       
               Planning how you will answer your assignment task or question will help you focus and make writing your assignment easier. You will have a structure 
                to follow, and can make sure you answer the assignment task correctly.Plan your assignment</pre>

    </div><br><br />
    <div style="color:blue;">
    <h4 style="text-align:center; ">Step 4 – Write</h4>
    <pre >    
             It will then be time to start writing.First draft Write your first draft following your plan. Fill in the gaps, writing your main points for each section.
              Write freely. Get as much down as you can without worrying about the wording being 100 per cent right.You may find it easiest to start with the conclusion,
              so you know the direction your writing is heading.Leave the introduction until last. Don’t spend too much time trying to make this draft perfect as it will
             change!Fine tune Revise your draft, and check that it makes sense and includes everything it needs to. Fine tune the wording, and make sure your writing flows 
             well. Keep different copies of your drafts as you may want to go back to them.Compile your bibliography or reference list.More on writing skills and academic 
             writing How to reference</pre>
</div><br><br />
</div>
    </div>
    <<footer style="width:100%; height:140px;  margin-top:80px; background-color:Black;"><br><br />
    <h1 style="color:White;  text-align:center;">Copyright © Student Corner. All rights reserved. </h1>
    </footer>
   
    </form>
</body>
</html>

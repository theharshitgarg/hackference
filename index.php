<?php

require("dbconfig.php");


$name = "";
$stream = "";
$extra = "";
$extra_other = "";

$name = $_POST["name"];
$stream = $_POST["stream"];
$extra  = $_POST["extra"];
$extra_other = $_POST["extra_other"];
$tag_array = array(
	"Artificial Intelligence"=>"AI","Machine Learning"=>"ML","Big Data"=>"BD",
	"Data Science"=>"DSC","Digital Systems"=>"DSY","Operating Systems"=>"OS",
	"Computer Networks"=>"CN","Computer Vision"=>"CV","Data Structures and Algorithms"=>"DSA",
	"Compiler Design"=>"CD","Theoretical CS"=>"TCS","Computer Architecture"=>"CA",
	"Database Systems"=>"DBMS","Software Engineering"=>"SE","Deep Learning"=>"DL",
	"Business"=>"B","Finance"=>"F","Journalism"=>"J","Robotics"=>"R");

$tag = $tag_array[$extra];
$tag_other = $tag_array[$extra_other];

$sql_reseach = "SELECT id,topic,tag FROM research where tag='$tag'";
$result_research = $conn->query($sql_reseach);


$sql_skills = "SELECT id,skill,tag FROM skills where tag IN ('$tag','gen')";
$result_skills = $conn->query($sql_skills);

$sql_projects = "SELECT id,topic,tag FROM projects where tag='$tag'";
$result_projects = $conn->query($sql_projects);


$sql_course = "SELECT id,name,source,tag FROM courses where tag='$tag'";
$result_course = $conn->query($sql_course);

$sql_course_other = "SELECT id,name,source,tag FROM courses where tag='$tag_other'";
$result_course_other = $conn->query($sql_course_other);
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="https://bootswatch.com/4/lux/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="style/result.css">
</head>
<style type="text/css">
	html{
		font-family: "Arial";
	}
</style>
<body>
<header class="masthead clear">
  <div class="centered">

    <div class="site-branding">
      <center><h1 ><?php echo $name."'s " ?> PLAN</h1></center>
      <center><h3 ><?php echo $stream ?></h3></center>
      <center><h3 ><?php echo $extra  ?></h3></center>
    </div>
    <!-- .site-title -->
  </div>
  <!-- .centered -->
</header>
<!-- .masthead -->

<main class="main-area">

  <div class="centered">

    <section class="cards">

      <article class="card">
        <a href="#">
          <figure class="thumbnail">
          <img style="height: 300px;width: 400px;" src="images/skills.jpg" alt="meow">
          </figure>
          <div class="card-content">
            <h2>Skills</h2>
            
          </div>
          <!-- .card-content -->
        </a>
      </article>
      <!-- .card -->

      <article class="card">
        <a href="#">
          <figure class="thumbnail">
            <img style="height: 300px;width: 400px;" src="images/course.png" alt="meow">
          </figure>
          <div class="card-content">
            <h2>Courses</h2>
          </div>
          <!-- .card-content -->
        </a>
      </article>
      <!-- .card -->

      <article class="card">
        <a href="#">
          <figure class="thumbnail">
            <img style="height: 300px;width: 400px;" src="images/projects.png" alt="meow">
          </figure>
         	<div class="card-content">
         		<h2>Projects</h2>
         		<p></p>
         	</div>
          <!-- .card-content -->
        </a>
      </article>
      <!-- .card -->

      <article class="card">
        <a href="#">
          <figure class="thumbnail">
            <img style="height: 300px;width: 400px;" src="images/research.png" alt="meow">
          </figure>
         	<div class="card-content">
         		<h2>Promising Research areas</h2>
         	</div>
          <!-- .card-content -->
        </a>
      </article>
      <!-- .card -->

      <article class="card">
      	<a href="">
      		<div class="card-content">
      			<ul>
      				<?php
							if ($result_skills->num_rows > 0) {
						    while($row = $result_skills->fetch_assoc()) {
						        echo "<h4>".$row["skill"]."</h4><hr>";

						    	}
							} else {
						    echo "0 results";
							}
						// echo "<hr><hr>";
					?>
      			</ul>
      		</div>
      	</a>
      </article>

      <article class="card">
      	<a href="">
      		<div class="card-content">
      			<ul>
      				<?php
							if ($result_course->num_rows > 0) {
						    while($row = $result_course->fetch_assoc()) {
						    	$src = 'images/'.$row["source"].".png";
						        // echo $src;
						        echo "<img style='height:50px;width:50px;float:right' src='$src'></img>";
						  
						        echo "<h4>".$row["name"]."</h4><hr>";
						        
						    	}
							} else {
						    echo "0 results";
							}
							
							if ($result_course_other->num_rows > 0) {
								echo "<h3> Based on your other interests : </h3>";
						    while($row = $result_course_other->fetch_assoc()) {
						    	$src = 'images/'.$row["source"].".png";
						        echo "<img style='height:50px;width:50px;float:right' src='$src'></img>";

						        echo "<h4 style='background:lightgreen'>".$row["name"]."</h4><hr>";						        
						        
						    	}
							} else {
						    echo "0 results";
							}
						// echo "<hr><hr>";
					?>
      			</ul>
      		</div>
      	</a>
      </article>

      <article class="card">
      	<a href="">
      		<div class="card-content">
      			<ul>
      				<?php
							if ($result_projects->num_rows > 0) {
						    while($row = $result_projects->fetch_assoc()) {
						        echo "<h4>".$row["topic"]."</h4><hr>";
						    	}
							} else {
						    echo "0 results";
							}
						// echo "<hr><hr>";
					?>
      			</ul>
      		</div>
      	</a>
      </article>

      <article class="card">
      	<a href="">
      		<div class="card-content">
      			<ul>
      				<?php
							if ($result_research->num_rows > 0) {
						    while($row = $result_research->fetch_assoc()) {
						        echo "<h4>".$row["topic"]."</h4><hr>";
						    	}
							} else {
						    echo "0 results";
							}
						// echo "<hr><hr>";
					?>
      			</ul>
      		</div>
      	</a>
      </article>










    </section>
    <!-- .cards -->
    <center>
    	<form action="roadmap.html">
    		<input type="submit" class="btn btn-success" value="ROADMAP"></input>
    	</form>
    </center>
  </div>
  <!-- .centered -->

</main>
</body>
</html>
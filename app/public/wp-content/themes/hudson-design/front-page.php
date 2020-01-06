<?php
  get_header();
?>
<div class="container-fluid mt-5 mb-5" id="skills">

	<h2 class="text-center section-title">Skills</h2>

<div class="d-flex justify-content-center row">
	<div class="col-md-3 card skills-card p-0 border-0">
		<img class="card-img-top" src="<?php echo get_theme_file_uri('images/back3.png') ?>" alt="Card image" />
		<div class="card-body">
		<h3 class="text-center">Heading text</h3>
		<p>Here is some dummy copy for this text section. Doesn't it look nice and nea like this...</p>
		<p><a href="#" class="btn btn-default btn-md pl-0">Find out more</a></p>
	</div>
	</div>
	<div class="col-md-3 card skills-card p-0 border-0">
		<img class="card-img-top" src="<?php echo get_theme_file_uri('images/back3.png') ?>" alt="Card image" />
		<div class="card-body">
		<h3>Heading text</h3>
		<p>Here is some dummy copy for this text section. Doesn't it look nice and nea like this...</p>
		<p><a href="#" class="btn btn-default btn-md pl-0">Find out more</a></p>
	</div>
	</div>
	<div class="col-md-3 card skills-card p-0 border-0">
		<img class="card-img-top" src="<?php echo get_theme_file_uri('images/back3.png') ?>" alt="Card image" />
		<div class="card-body">
		<h3>Heading text</h3>
		<p>Here is some dummy copy for this text section. Doesn't it look nice and nea like this...</p>
		<p><a href="#" class="btn btn-default btn-md pl-0">Find out more</a></p>
	</div>
	</div>
</div>
</div>
<div class="container-fluid mt-5 mb-5 pt-5 pb-5 bg-dark" id="portfolio">

	<h2 class="text-center section-title">Portfolio</h2>

<div class="d-flex justify-content-center row">
	<div class="col-md-3 card portfolio-card p-0 m-0 border-0 rounded-0">
		<img class="card-img" src="<?php echo get_theme_file_uri('images/overlay.png') ?>" alt="Card image" />
			<div class="card-img-overlay hide pt-4">
			<h3>Heading text</h3><p>Here is some dummy copy for this text section. Doesn't it look nice and nea like this...</p>
			<p><a href="#" class="btn btn-primary btn-md">Find out more</a></p>
			</div>
	</div>
	<div class="col-md-3 card portfolio-card p-0 m-0 border-0 rounded-0">
    <img class="card-img" src="<?php echo get_theme_file_uri('images/overlay.png') ?>" alt="Card image" />
			<div class="card-img-overlay hide pt-4">
			<h3>Heading text</h3>
			<p>Here is some dummy copy for this text section. Doesn't it look nice and nea like this...</p>
			<p><a href="#" class="btn btn-primary btn-md">Find out more</a></p>
			</div>
	</div>
	<div class="col-md-3 card portfolio-card p-0 m-0 border-0 rounded-0">
    <img class="card-img" src="<?php echo get_theme_file_uri('images/overlay.png') ?>" alt="Card image" />
			<div class="card-img-overlay hide pt-4">
			<h3>Heading text</h3>
			<p>Here is some dummy copy for this text section. Doesn't it look nice and nea like this...</p>
			<p><a href="#" class="btn btn-primary btn-md">Find out more</a></p>
			</div>
	
	</div>
</div>
</div>
<div class="container mt-5 mb-5 pl-5 pr-5" id="about">
<div class="media">
  <img class="d-flex mr-3" src="<?php echo get_theme_file_uri('images/LogoHDonly.png')?>" alt="Generic placeholder image">
  <div class="media-body mb-5">
    <h3 class="mt-0">About me</h3>
    Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
  </div>
</div>
<div class="container contact-form" id="contact">
	<form class="mt-5">
  	<h2 class="text-center">Get in touch</h2>
  	<div class="form-group">
  		<label for="contactName">Name</label>
  		<input type="text" class="form-control" id="contactName" placeholder="Insert name here">
  	</div>
  	<div class="form-group">
  		<label for="contactEmail">Email</label>
  		<input type="text" class="form-control" id="contactEmail" placeholder="Insert email here">
  	</div>
  	<div class="form-group">
  		<label for="contactMessage">Message</label>
  		<input type="text" size="300" class="form-control" id="contactMessage" placeholder="Insert message here">
  	</div>
  	<div class="form-group">
  		<input type="submit" class="form-control" id="contactSubmit" value="Submit">
  	</div>
  </form>
</div>
</div>
<footer class="bg-dark d-flex justify-content-center mt-auto pt-3"><p class="white">&copy; 2019 - Hudson Web Design</p></footer>
<?php wp_footer(); ?>
</body>
</html>
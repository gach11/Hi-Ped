<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1 maximum-scale=1.0"> <!-- корректное отображение на мобильных устройствах, отмена масштабирования -->
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Patient Form</title>
    <!-- Bootstrap css -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!-- Custom css -->
    <link href="css/stylesheets/Stylesheet2.css" rel="stylesheet">
  </head>

  <body>
    <div class="container-fluid ">
      <div class="container">
        <div class="row">
          <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 bg_section_signup">           
          </div>
          <div class="col-12 m_bg_section_signup">          
          </div>
          <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 signup_section">
            <form class="needs-validation" novalidate>
              <h1>Patient Forms</h1>
              
			<div class="form-row">  
				<div class="form-check form-check-inline">
  					<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
  					<label class="form-check-label" for="inlineRadio1">Infant</label>
				</div>
				<div class="form-check form-check-inline">
  					<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
  					<label class="form-check-label" for="inlineRadio2">Children</label>
				</div>
				<div class="form-check form-check-inline">
  					<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
  					<label class="form-check-label" for="inlineRadio2">Adolescents</label>
				</div>
            </div>
              
			<div class="form-row">
				<input type="text" class="form-control"  id="fullname"  placeholder="Patient Name" required>
			</div>
            <div class="form-row">
                <input type="text" class="form-control"  id="number"  placeholder="Contact Number" required>
            </div>
            <div class="form-row">
                <input type="text" class="form-control"  id="bod" placeholder="Birthdate" required>
            </div>                     	                       	                                                
		<div class="form-row">
                <input type="text" class="form-control  w-25"  id="age"  placeholder="Age" required>                
            <div class="form-check form-check-inline mx-auto">
  				<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
  				<label class="form-check-label" for="inlineRadio1">Male</label>
			</div>
			<div class="form-check form-check-inline">
  				<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
  				<label class="form-check-label" for="inlineRadio2">Female</label>
			</div>         
		</div>                                        
            <div class="form-row">
                <input type="text" class="form-control"  id="address"  placeholder="Address" required>
            </div>            
			<div class="form-row">								
   				 <textarea placeholder="Condition" class="form-control" id="condition" rows="3"  aria-describedby="emailHelp" required></textarea>
 			</div>
            <div class="form-row">
                <input type="datetime-local" id="Test_DatetimeLocal" name="datetime" class="form-control">
            </div>            
              <p id="privacyTerms" class="small_text"><a>
                Guardian Info </a>
              </p>              
             <div class="form-row">
				<input type="text" class="form-control"  id="guardian"  placeholder="Guardian's Fullname" required>
			</div>
			 <div class="form-row">
				<input type="text" class="form-control"  id="relation"  placeholder="Relationship" required>
			</div>              
            <center>
               <a href="index.html" class="btn btn-primary">Appoint</a>    
              </center>
             
            </form>
          </div>
      </div>
    </div>
    </div>

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <!-- Custom JS -->
    <script src="css/jss/index.js"></script>
  </body>
</html>
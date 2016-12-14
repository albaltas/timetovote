require 'sinatra'

get '/' do
	erb :timetovote, :locals => {:name => params[:name]}
end


__END__

@@ timetovote

<html>
	<head>
		<title>What time are you going to vote?</title>
		<meta charset="utf-8" />
	</head>
	<body>
		<div id="paper1" class="paper container-fluid">
			<div class="row">
				<div class="col-md-7" style="border-right: 1px solid #ccc">
					<img id="logo" src="logo.png" alt="logo"  width="300">

				<div style="margin-top:40px" id="change"  align="middle">
					<div class="row">
						<div class="col-md-4">
							<strong>Email: </strong>
						</div>
						<div class="col-md-4">
							<input type="text" style="width: 185px;" >
						</div>
					</div>
					<hr>
					 <div class="row">
						<div class="col-md-4">
							<strong>I will vote at: </strong>
						</div>
						<div class="col-md-4">
							<input type="time" value="12:00" class="form-control" id="timein" >
						</div>
					</div>
					<div class="row" style="margin-top:50px">
						<div class="col-md-8  col-md-offset-2">
							<button type = "button" id="go" style="width:240px" class = "btn btn-success">I will vote!</button>

						</div>
						
					</div>
				</div>
			  
			</div>
			<div class="col-md-5" align="center">
				<div style="margin-top: 50px; font-size: x-large; color: #555"><strong>24,521</strong> people have already committed to vote!</div>

				

				<div style="margin-top: 50px; padding-top:30px; border-top:1px solid #ccc">
					<p style="font-weight:400">Not registered to vote yet? </p>
					<a style="margin-top: 10px; href="https://www.gov.uk/register-to-vote" style="width:240px" class="btn btn-default">Register now!</a>
				</div>
				
			</div>


		</div>
		<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Alfa+Slab+One" />

		<link rel="stylesheet" href="https://opensource.keycdn.com/fontawesome/4.7.0/font-awesome.min.css" integrity="sha384-dNpIIXE8U05kAbPhy3G1cz+yZmTzA6CY8Vg/u2L9xRnHjJiAK76m2BIEaSEV+/aU" crossorigin="anonymous">
		<style type = "text/css">


			.fa{
				font-size: 2em;
				transition: all 0.2s ease-in-out;
			}

			.fa:hover{
				color: #666;				
			}

			hr {
				width: 30%;
			}
			body{				
				background: url("https://subtlepatterns.com/patterns/binding_dark.png");				
				font-weight: 100;
			}

			.paper {
				background: url("http://subtlepatterns2015.subtlepatterns.netdna-cdn.com/patterns/lightpaperfibers.png");
				width: 80%;
				margin: 0 auto;
				height: 85%;
				box-shadow: 4px 4px 16px #555;
				transition: all 0.4s ease-in-out;
			}

			#paper1{
				display:block;
				height:auto;
				padding-bottom:100px;
			}

			#paper2{
				display:none;
				height:auto;
				padding-bottom:100px;
			}

			h1{
				text-align: center;
				font-weight: lighter;
				font-family: sans-serif;
				color: #444;
				font-size: 3em;
			}

			#logo {
				display: block;
				margin: 0 auto;
			}

			#timein{
				font-size: 3em;				
				/*border: 0;*/
				/*background: transparent;*/
				color: #234;
				width: 185px;
    			height: 48px;
			}

			.button{
				align-self: center;
				display: block;
				margin: 0 auto;
				padding: 20px 0px 20px 0px;
				width: 225px;
				color: white;
				font-family: sans-serif;
				font-weight: lighter;
				font-size: 2em;
				letter-spacing: 1px;
				text-align: center;
				background: #16A085;
				border-radius: 10px;
				transition: all 0.3s ease-in-out;
				cursor: pointer;
			}

			.button:hover{
				background: #1E824C;
				border-radius: 2px;
			}

			.button:active{
				transform: scale(1.025);
			}

		</style>

		<script type="text/javascript">

var button   = document.getElementById("go"),
    paper1     = document.getElementById("paper1"),
    paper2     = document.getElementById("paper2"),
    proceed = function() {
    	document.getElementById("change").innerHTML = "<p  style='text-align: center; font-size:25px; margin-top: 50px'> Spread the vote! </p><p  style='font-size: 40px; text-align: center; margin-top: 20px'><i class='fa fa-facebook-square' style='color: #4967a1'></i> <i class='fa fa-twitter-square' style='color: #3aa2f3'></i> <i class='fa fa-google-plus-square' style='color: #cc5d50'></i> </p>";


      		// paper2.style.display="block";
      		// paper1.style.display="none";
          }
    

button.addEventListener("click", proceed);

		</script>
	</body>
</html>

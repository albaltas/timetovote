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
		<div id="paper1" class="paper">
			<img id="pen" src="pen.png" alt="pen"  width="450">
			<h1>
				<% if name %>
					Hey  <%= name %>!
					<br/>
				<% end %>
				What time are you going to vote?
			</h1>
			<hr>
			<p style="text-align: center">
				<input id="timein" type="time" value="12:00">
			</p>
			<hr style="margin-bottom:25px">

			<div id="go" class="button">Go!</div>
		</div>
		<div id="paper2" class="paper">
			<img id="pen" src="pen.png" alt="pen"  width="450">
			<h1 style=>
				Thanks! You are our <strong>15146th</strong> voter!
			</h1>
			<hr>
			<p style="text-align: center; margin-top: 50px">
				<i class="fa fa-facebook-square" style="color: #4967a1"></i>
				<i class="fa fa-twitter-square" style="color: #3aa2f3"></i>
				<i class="fa fa-google-plus-square" style="color: #cc5d50"></i>
				<i class="fa fa-pinterest-square" style="color: #b1373d"></i>
			</p>

		</div>
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
				background: url("http://subtlepatterns2015.subtlepatterns.netdna-cdn.com/patterns/purty_wood.png");
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
			}

			#paper2{
				display:none;
			}

			h1{
				text-align: center;
				font-weight: lighter;
				font-family: sans-serif;
				color: #444;
				font-size: 3em;
			}

			#pen {
				display: block;
				margin: 0 auto;
			}

			#timein{
				font-size: 4em;
				margin-left: 40px;
				border: 0;
				background: transparent;
				color: #234;
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
      		paper2.style.display="block";
      		paper1.style.display="none";
          }
    

button.addEventListener("click", proceed);

		</script>
	</body>
</html>

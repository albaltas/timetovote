require 'sinatra'

get '/' do
	erb :timetovote
end


__END__

@@ timetovote

<html>
	<head>
		<title>What time are you going to vote?</title>
		<meta charset="utf-8" />
	</head>
	<body>
		<div id="paper">
			<img id="pen" src="pen.png" alt="pen"  width="450">
			<h1>
				What time are you going to vote?
			</h1>
			<hr>
			<p style="text-align: center">
				<input id="timein" type="time" value="12:00">
			</p>
			<hr style="margin-bottom:25px">

			<div class="button">Go!</div>

		</div>


		<style type = "text/css">

			hr {
				width: 30%;
			}
			body{
				background: url("http://subtlepatterns2015.subtlepatterns.netdna-cdn.com/patterns/purty_wood.png");
			}

			#paper {
				background: url("http://subtlepatterns2015.subtlepatterns.netdna-cdn.com/patterns/lightpaperfibers.png");
				width: 80%;
				margin: 0 auto;
				height: 85%;
				box-shadow: 4px 4px 16px #555;
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
	</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Mileage Results Page</title>
<link rel="stylesheet" href="/style.css" />
<style>
h3 {color: ${ textColor } ;}
</style>
</head>
<body>
	<div class="bg">
		<div class="center">
	<h3>Result</h3>
	<p>${ mpg } * ${ gallons } = ${ result }</p>
	<p>You have enough gas to travel ${ result } miles and you want to travel ${ distance } miles.</p>
	<h3> ${ canMakeTheTrip } </h3>
	<p>
		<a href="/">Home</a>
	</p>
		</div>
	</div>
</body>
</html>
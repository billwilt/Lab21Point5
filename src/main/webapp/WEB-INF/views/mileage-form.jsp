<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Gas Mileage Form</title>
<link rel="stylesheet" href="/style.css" />
</head>
<body>
	<div class="bg2">
		<div class="center3">
			<form action="/mileage-result">
				<p>
					Please enter the miles per gallon your vehicle gets: <input
						type="number" name="mpg" />
				</p>
				<p>
					Please enter the number of gallons your vehicle can hold: <input
						type="number" name="gallons" />
				</p>
				<p>
					Enter the distance (in miles) you want to travel? <input
						type="number" name="distance" />
				</p>
				<p>
					<button type="submit">Submit</button>
				</p>
			</form>
		</div>
	</div>
</body>
</html>
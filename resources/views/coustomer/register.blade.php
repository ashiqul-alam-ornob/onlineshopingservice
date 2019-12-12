<!DOCTYPE html>
<html>
<head>
	<title>New Registration</title>
</head>
<body>
	<h1>Registration</h1>

	<form method="post" >
		<!-- @csrf -->

		<!-- {{csrf_field()}} -->

		<input type="hidden" name="_token" value="{{csrf_token()}}">
		<table>
			<tr>
				<td>Username</td>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td>Contact Number</td>
				<td><input type="text" name="contactnumber"></td>
			</tr>
			<tr>
				<td>Mail Address</td>
				<td><input type="text" name="mailaddress"></td>
			</tr>
			<tr>
				<td>User Type</td>
				<td><input type="text" name="usertype" placeholder="Coustomer" ></td>
			</tr>
			<tr>
				<td>Image</td>
				<td><input type="file" name="pic"></td>
			</tr>



			<tr>
				<td><input type="submit" name="submit" value="Submit"></td>
				<td></td>
			</tr>
		</table>
	</form>

	<div>
		{{session('msg')}}
	</div>

</body>
</html>
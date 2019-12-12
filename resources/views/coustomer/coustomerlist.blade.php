<!DOCTYPE html>
<html>
<head>
	<title>Coustomer list</title>
</head>
<body>
	<h1>Coustomer List</h1>

	<a href="{{route('home.index')}}">Back</a> |
	<a href="{{route('logout.index')}}">logout</a>

<br><br>
	<table border="1">
		<tr>
			<td>ID</td>
			<td>USERNAME</td>
			<td>Type</td>
			<td>PASSWORD</td>
            <td>PHONE NUmber</td>
            <td>MAIL address</td>
            
			<td>ACTION</td>
		</tr>


	@foreach($user as $std)
		<tr>
			<td>{{ $std->userId }}</td>
			<td>{{ $std->username }}</td>
			<td>{{ $std->type }}</td>
			<td>{{ $std->password }}</td>
            <td>{{ $std->contactnumber }}</td>
            <td>{{ $std->password }}</td>
			<td>
				<a href="{{ route('coustomer.edit', $std->Id) }}"> EDIT </a> | 
				<a href="{{ route('coustomer.delete', $std->Id) }}"> DELETE </a> | 
				<a href="{{ route('coustomer.details', $std->Id) }}"> Details </a>
			</td>
		</tr>
	@endforeach

	</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Create Location</title>
<style>
.flex {
	display: flex;
	justify-content: center;
	justify-items: center;
	align-items: center;
	margin: 2px;
	padding: 1px;
}
</style>
</head>
<body>

	<form method="post" action="updateLoc">
		>
		<div class="flex">
			<label for="">Id</label> <input type="text" name="id"
				value="${location.id}"  readonly/>
		</div>

		<div class="flex">
			<label for="">Code</label> <input type="text" name="code"
				value="${location.code}" />
		</div>

		<div class="flex">
			<label for="">Name</label> <input type="text" name="name"
				value="${location.name}" />
		</div>

		<div class="flex">
			<label for="">Type</label> <input type="radio" name="type"
				value="Urban" {location.type== "Urban" ? "checked" : "" } /> <input
				type="radio" name="type" value="Rural" {location.type== "Rural" ? "checked" : "" } />
		</div>

		<input type="submit" value="Save">
	</form>
	${msg }
	<a href="displayLocations">View All</a>

</body>
</html>
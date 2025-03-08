<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>View All Employees</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 text-gray-900">

	<!-- Include Navigation -->
	<jsp:include page="index.jsp" />

	<div class="container mx-auto mt-24 p-4">
		<h1 class="text-2xl font-bold text-center mb-6">Employee List</h1>

		<!-- Responsive Table Container -->
		<div class="overflow-x-auto">
			<table
				class="min-w-full bg-white shadow-md rounded-lg overflow-hidden">
				<thead class="bg-blue-500 text-white">
					<tr>
						<th class="py-2 px-4 text-left">ID</th>
						<th class="py-2 px-4 text-left">Name</th>
						<th class="py-2 px-4 text-left">Email</th>
						<th class="py-2 px-4 text-left">Contact</th>
						<th class="py-2 px-4 text-left">Update</th>
						<th class="py-2 px-4 text-left">Delete</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="emp" items="${employees}">
						<tr class="border-b hover:bg-gray-100">
							<td class="py-2 px-4">${emp.eid}</td>
							<td class="py-2 px-4">${emp.name}</td>
							<td class="py-2 px-4">${emp.email}</td>
							<td class="py-2 px-4">${emp.contact}</td>
							<td class="py-2 px-4"><a href="updateEmployee?id=${emp.eid}"
								class="bg-yellow-500 text-white px-3 py-1 rounded hover:bg-yellow-600">Update</a>
							</td>
							<td class="py-2 px-4"><a href="deleteEmployee?id=${emp.eid}"
								class="bg-red-500 text-white px-3 py-1 rounded hover:bg-red-600">Delete</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>

	</div>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>  <%-- Ensure EL is enabled --%>
	
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register Page</title>

<!-- Tailwind CSS CDN -->
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex flex-col items-center min-h-screen pt-20">

	<!-- Include Header -->
	<jsp:include page="index.jsp"></jsp:include>

	<div class="w-full max-w-md bg-white p-8 rounded-lg shadow-lg mt-10">
		<h1 class="text-2xl font-bold text-center mb-6">Register Page</h1>

		<form action="saveemp" method="post" class="space-y-4">
			<div>
				<label class="block text-gray-700 font-semibold mb-1">Name</label> <input
					type="text" name="name" placeholder="Enter your name"
					class="w-full p-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"
					required />
			</div>

			<div>
				<label class="block text-gray-700 font-semibold mb-1">Email</label>
				<input type="email" name="email" placeholder="Enter your email"
					class="w-full p-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"
					required />
			</div>

			<div>
				<label class="block text-gray-700 font-semibold mb-1">Contact</label>
				<input type="text" name="contact" placeholder="Enter your contact"
					class="w-full p-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500"
					required />
			</div>

			<button type="submit"
				class="w-full bg-blue-500 text-white py-2 rounded-md hover:bg-blue-600 transition duration-300">
				Add New Employee</button>
		</form>
	</div>
	<p>Message: ${msg}</p>


</body>
</html>

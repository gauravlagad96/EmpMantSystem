<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Employee Management System</title>

<!-- Tailwind CSS CDN -->
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 text-gray-900">

	<!-- Navbar -->
	<nav class="bg-black text-white fixed w-full top-0 shadow-md">
		<div class="container mx-auto flex justify-between items-center p-4">
			<h1 class="text-2xl font-bold">Employee Management</h1>

			<!-- Mobile Menu Button -->
			<button id="menuBtn" class="lg:hidden focus:outline-none">
				<svg class="w-8 h-8" fill="none" stroke="currentColor"
					viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                    <path stroke-linecap="round" stroke-linejoin="round"
						stroke-width="2" d="M4 6h16M4 12h16m-7 6h7"></path>
                </svg>
			</button>

			<!-- Desktop Menu Items -->
			<ul class="hidden lg:flex gap-6 text-lg">
				<li><a href="register" class="hover:text-gray-300">Add
						Employee</a></li>
				<li><a href="viewAllEmp" class="hover:text-gray-300">View
						Employees</a></li>
				<li><a href="search" class="hover:text-gray-300">Search
						Employee</a></li>
			</ul>
		</div>
		<!-- Mobile Dropdown Menu -->
		<div id="mobileMenu" class="hidden bg-gray-800 lg:hidden">
			<ul class="flex flex-col text-center py-4 text-lg">
				<li class="py-2"><a href="register"
					class="block hover:text-gray-400">Add Employee</a></li>
				<li class="py-2"><a href="viewAllEmp"
					class="block hover:text-gray-400">View Employees</a></li>
				<li class="py-2"><a href="search"
					class="block hover:text-gray-400">Search Employee</a></li>
			</ul>
		</div>
	</nav>
	<!-- JavaScript for Mobile Menu -->
	<script>
        const menuBtn = document.getElementById('menuBtn');
        const mobileMenu = document.getElementById('mobileMenu');

        menuBtn.addEventListener('click', () => {
            mobileMenu.classList.toggle('hidden');
        });
    </script>
</body>
</html>

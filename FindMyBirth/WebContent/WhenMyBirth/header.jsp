<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>생일까지 남은 날짜 계산기</title>
<style>
	h1 {
		text-align: center;
		font-size: 50px;
		color: rgb(140,140,140);
	}
	
	h1 > span {
		color:skyblue;
		text-decoration: underline;
		text-underline-position:under;
		text-decoration-color: black;
	}
	
	.input {
		display: flex;
		justify-content: center;
	}
	
	.nameinput {
		border: 4px solid rgb(140,140,140);
		border-radius: 10px;
		font-size: 40px;
		font-weight: bold;
		padding: 10px;
		text-align: center;
		margin-top: 100px;
		background-color: rgb(255,252,200);
	}
	
	input::placeholder {
		font-style: oblique;
	}
	
	input:focus {
		outline: none;
	}
	
	.button {
		
		justify-content:center;
		border: 4px solid rgb(140,140,140);
		border-radius: 20px;
		font-size: 60px;
		font-weight: bold;
		background-color: rgb(220,243,150);
		color: rgb(140,140,140);
		padding: 10px 20px;
		margin: 100px;
		margin-left: 186px;
	}
	
	.button:hover {
		background-color:rgb(255,156,57);
		cursor: pointer;
		color: rgb(191,191,255);
		transition: 0.5s ease-out;
	}
	
	.button:not(:hover) {
		transition: 0.5s ease-out;
	}
	
	h3 {
		text-align:center;
		margin-top:180px;
		font-size: 200px;
	}
	
	div > p {
		text-align: center;
	}
	
	p > a {
		text-decoration:none;
		background-color: black;
		color: white;
		border: 5px solid rgb(140,140,140); 
		font-size: 20px;
		font-weight: bold;
		padding: 10px; 
	}
	
	a:hover {
		background-color: skyblue; 
		color: yellow;
		transition: 0.5s ease-out;
	}

</style>


</head>
<body>

<h1><span>${not empty name ? name : "(홍길동)" }</span>님의 생일까지 남은 날짜</h1>


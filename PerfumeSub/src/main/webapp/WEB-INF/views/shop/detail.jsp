<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src='http://code.jquery.com/jquery-3.3.1.js'></script>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<!-- Option 1: Bootstrap Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<title>2.5ml</title>
<style>
.col-sm-6 {
	padding-top: 200px;
	display: flex;
}

.row img {
	width: 80%;
	margin-left: 130px;
}

.dropdown-menu a {
	text-decoration: none;
	color: gray;
}

.progress-bar {
	 progress-bar-bg:    black;
	/* $progress-height:                   1rem;
       $progress-font-size:                $font-size-base * .75;
       $progress-bg:                       $gray-200;
       $progress-border-radius:            $border-radius;
       $progress-box-shadow:               $box-shadow-inset;
       $progress-bar-color:                $white;
       $progress-bar-bg:                   $primary;
       $progress-bar-animation-timing:     1s linear infinite;
       $progress-bar-transition:           width .6s ease;
*/
}
#ml{
	width: 400px;
	height: 30px;
	padding-left: 20px;
	font-size: 18px;
	color: gray;
	border: 1px solid black;
	border-radius: 1px;
	
}

</style>
<script>

$(document).ready(function(){
	$(document).ready(function(){
		var price;
		$("#ml").change(function() {
			if ($("#ml").val() == '40ml') {
				price = ${price}
				const cn1 = price.toString()
				  .replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
				price = '<strong>'+cn1+' 원</strong>'
				$("#p").text("");
				$("#p").append(price);
			}else if ($("#ml").val() == '60ml') {
				price = ${price2}
				const cn1 = price.toString()
				  .replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
				price = '<strong>'+cn1+' 원</strong>'
				$("#p").text("");
				$("#p").append(price);
			}else if ($("#ml").val() == '120ml') {
				price = ${price3}
				const cn1 = price.toString()
				  .replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
				price = '<strong>'+cn1+' 원</strong>'
				$("#p").text("");
				$("#p").append(price);
			}
			
			
			
			
		});
		

	});
});



</script>
</head>
<body>



	<!--  http://drive.google.com/uc?export=view&id=1-3p5BqrlNWPxZ6K2Ztu2ftxLOppfkTXF-->



	<div class="container">
		<div class="row">

			<div class="col-sm-6">
				<div class="card"
					style="width: 33rem; text-align: center; border: none;">



					<c:forEach var="item" items="${list}" >
						<img style="height: 35rem;" src="${item.image} "
							class="card-img-top" />
					</c:forEach>
				</div>
			</div>

			<div class="col-sm-6">
				<div class="product_title"
					style="padding-top: 100px; padding-left: 100px;">
					<h4>
						<strong><c:forEach var="item" items="${list}" >${item.name} </c:forEach></strong>

					</h4>
					<div class="produc_price">
						<c:forEach var="item" items="${list}" >
							<h6 style="padding-left: 310px;">
								<strong><fmt:formatNumber value="${item.price}"
										pattern="#,### 원" /></strong>
							</h6>
						</c:forEach>
						<br>
					</div>


					<div class="dropdown">

						
						
						<select name="ml" id="ml">												
							<option id="" value="40ml">-[필수] 옵션을 선택해 주세요-</option>
						    <option id="price" value="40ml">40ml </option>
						    <option id="price2" value="60ml">60ml + 5,000</option>
						    <option id="price3" value="120ml">120ml + 15,000</option>
						</select>




						
                      
					</div>
					<br>
					<div class="border-bottom"></div>

					<div class="all_price"
						style="padding-top: 20px; display: flex; padding-bottom: 10px;">
						<h6>총 상품금액</h6>
						<c:forEach var="item" items="${list}" >
							<h6 style="margin-left: 230px;" id="p">
								<strong><fmt:formatNumber value="${item.price}"
										pattern="#,### 원" /></strong>
							</h6>
						</c:forEach>
					</div>
					<div>
						<a href="#" style="text-decoration: none; color: black;">
							<div class="border border-dark"
								style="text-align: center; font-size: 20px; font-weight: bold; height: 50px; padding-top: 10px;">
								바로 구매</div>
						</a>
					</div>

					<div style="display: flex;">
						<div style="padding-top: 10px; width: 320px;">
						<button type="button" class="addCart_btn" style="text-decoration: none; color: white; height:50px; width: 350px; background-color: black; font-size: 18px; font-weight: bold;">
							장바구니
							</button>
						</div>
						<div style="padding-left: 40px; padding-top: 10px;">
							<button class="hit" style="background-color: white; border: 0; outline: 0;"><i class="bi bi-heart" style="font-size: 2rem;"></i></button>
						</div>
					</div>
					<br> <span style="font-size: 12px;">회원 가입 시 할인, 포인트 적립
						등 다양한 혜택을 받을 수 있습니다.</span>
				</div>

			</div>

			<div class="row" style="padding-top: 130px; padding-bottom: 20px;">

				<div class="col-sm-12"
					style="display: flex; justify-content: center; font-size: 20px;">

					<!-- <a href="#target1" class="scroll"> -->
					<div class="detail">
						<a href="#target1" class="scroll"
							style="color: black; text-decoration: none;"><span><strong>상세정보</strong></span></a>
						<div class="border-bottom border border-dark"></div>
					</div>

					<div class="review" style="padding-left: 40px">
						<a href="#target2" style="color: gray; text-decoration: none;"><span>리뷰</span></a>
						<div class="border-bottom"></div>
					</div>

				</div>


			</div>
			
			<div id="target1" class="row">

				<div class="col-sm-12">
					<img
						src="https://paffem.me/web/upload/NNEditor/20210111/wind01_detail-03_shop1_125421.png">
				</div>
				<div class="col-sm-12">
					<img
						src="https://paffem.me/web/upload/NNEditor/20210111/wind01_detail-04_shop1_125422.png">
				</div>
				<div class="col-sm-12">
					<img
						src="https://paffem.me/web/upload/NNEditor/20210111/wind01_detail-05_shop1_125606.png">
				</div>
				<div class="col-sm-12">
					<img
						src="https://paffem.me/web/upload/NNEditor/20210111/wind01_detail-06_shop1_125606.png">
				</div>
				<div class="col-sm-12">
					<img
						src="https://paffem.me/web/upload/NNEditor/20210111/wind01_detail-07_shop1_125606.png">
				</div>

			</div>


			<div class="row" style="padding-top: 130px; padding-bottom: 200px;">

				<div class="col-sm-12"
					style="display: flex; justify-content: center; font-size: 20px;">

					<!-- <a href="#target1" class="scroll"> -->
					<div class="detail">
						<a href="#target1" style="color: gray; text-decoration: none;"><span>상세정보</span></a>
						<div class="border-bottom "></div>
					</div>

					<div id="target2" class="review" style="padding-left: 40px">
						<a href="#target2" style="color: black; text-decoration: none;"><span><strong>리뷰</strong></span></a>
						<div class="border-bottom border border-dark"></div>
					</div>

				</div>


			</div>



		</div>

	</div>

	<div class=container style="padding-bottom: 100px;">
		<div class="border-bottom border border-dark"></div>
		 <div class="row" style="display: flex;">
		 
			   <div class="col-sm-5" style="text-align: center; margin-top: 20px;">
				    <i class="bi bi-star-fill" style="font-size: 4rem; margin-top: 20px;"> 4.6</i><br>
				    90%의 구매자가 이 상품을 좋아합니다.<br>
				    <button type="button" class="btn btn-lg btn btn-dark" style="margin-top: 20px;">상품 리뷰 작성하기</button>				      
			   </div>
			  
			  
               <div class="col-sm-2" style="padding-left:  100px;">
                    <div><h6 style="text-align: center;  margin-top: 70px;">아주 좋아요</h6></div>
                     <div><h6 style="text-align: center; margin-top: 7px;">맘에 들어요</h6></div>
                     <div><h6 style="text-align: center; margin-top: 7px;">보통이에요</h6></div>
                     <div><h6 style="text-align: center; margin-top: 7px;">그냥 그래요</h6></div>
                     <div><h6 style="text-align: center; font-weight: bold; margin-top: 7px;">아주 별로에요</h6></div>
                      
               </div>


			<div class="col-sm-4" >
				<div class="progress" style="margin-top: 70px;">				 
				 <div class="progress-bar"  role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>				 
				</div>
				<div class="progress" style="margin-top: 10px;">				 
				 <div class="progress-bar"  role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>				 
				</div>	
				<div class="progress" style="margin-top: 10px;">				 
				 <div class="progress-bar"  role="progressbar"  style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>				 
				</div>	
				<div class="progress" style="margin-top: 10px;">				 
				 <div class="progress-bar"  role="progressbar"  style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>				 
				</div>	
				<div class="progress" style="margin-top: 10px;">				 
				 <div class="progress-bar"  role="progressbar"  style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>				 
				</div>								
			</div>
			
			
		</div>
	</div>

     <div class="container" style="padding-bottom: 100px;">
     <div class="border-bottom"></div>
     </div>




</body>
</html>
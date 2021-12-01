<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detail view</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css" href="/static/css/main_style.css">
</head>
<body>
   <div id="wrap">
       <header>
          <jsp:include page="../include/gnb.jsp" />
       </header>
       
       <nav>
          <jsp:include page="../include/nav.jsp" />
       </nav>
       
       <div>
         <div class=" d-flex justify-content-center">
            <div class="emptyBox"></div>             
         </div><br>         
       </div>
       
      
       <div>
         <div class=" d-flex justify-content-center">
            <div class="detailImageBox d-flex">
             
               <img src="${detail.imagePath}" class="product">
               <div class="centerEmpty"></div>
               
               <div class="detailBox ml-4">       
                 <div class="ml-3 mt-4 productName">${detail.productName}</div><br><br>
                 <div class="ml-4 mt-2 productPrice font-weight-bold text-danger"><fmt:formatNumber value="${detail.price}" pattern="#,###"/>원</div>
                
                
                 <hr>
                 <div class="d-flex">
                    <div class="ml-2 font-weight-bold col-3">배송비</div>
                    <div class="ml-2 col-9">무료</div>                    
                 </div><br>
                 
                 <div class="d-flex">
                    <div class="ml-2 font-weight-bold col-3">혜택</div>
                    <div class="ml-2 col-9">회원가입 시 5,000원 쿠폰 지급</div>
                 </div><br><br><br><br><br>
                 <hr>
                                  
                 <div class="d-flex mt-4 ">
                  <button type="submit" id="buyBtn" class="buyBtn btn-secondary mr-2 form-control">구매하기</button>
                  <a href="/product/main_page_view"><button type="submit" class="cancleBtn text-white form-control">취소하기</button></a>
                 </div>                 
               </div>
                          
             </div>                                               
         </div>
       </div><br>
      
       <hr>
       
       <div>
         <div class=" d-flex justify-content-center">
            <div class="emptyBox1"></div>             
         </div><br>         
       </div>
       
       <div>
          <div class=" d-flex justify-content-center">
             <div class="reviewText justify-content-start">
                <div>review</div>               

					<table class="table mt-3">
						<thead>
						  <tr>
						    <th>작성자</th>
						    <th>평점</th>
						    <th>리뷰</th>
						  </tr>
						  
						</thead>
						
						<tbody>	
											 
							  <tr>							   
							    <td>${reviewDetail.writer}</td>
							    <td>${reviewDetail.grade}</td>
							    <td>${reviewDetail.review}</td>
							  </tr>			
							 				  					
						</tbody>						
						
					</table>
				</div>
          </div>
          
       </div>  
   </div>
   
   <script language="javascript">
      $(document).ready(function(){
    	  $("#buyBtn").on("click",function(e){
    		  e.preventDefault();    	
    		  
    		 if(confirm('상품을 구매하시겠습니까?')){
    			 alert("구매가 완료되었습니다. 메인화면으로 돌아갑니다")
    			 location.href="/product/main_page_view"
    		 }else {
    			 alert("구매가 취소되었습니다.")
    			 
    		 }
    		  
    		  
    	  });
      });
   </script>
</body>
</html>
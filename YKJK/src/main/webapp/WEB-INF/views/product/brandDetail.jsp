<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
    <title>brandDetail</title>
   
    <c:import url="../common/styler.jsp"/>
     <!-- Bootstrap CSS -->
    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
        integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous"> -->
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src='${pageContext.request.contextPath }/resources/js/jquery.zoom.js'></script>
    <script src='${pageContext.request.contextPath }/resources/js/jquery.Wheelzoom.js'></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/productDetail.css" />
</head>
<body>
	<c:import url="../common/header.jsp"/>

<section>
    <div class="product_detail">
        <div class="package" >
            <div id="insertArea" class="inputBox1">
            	<c:forEach items="${attachment}" var="a" varStatus="vs">
	                <div id="contentImgArea${vs.count}" class="imgInput">
	                    <img src="${pageContext.request.contextPath}/resources/images/productImgUpload/${ a.att_name }" 
	                        id="contentImg${vs.count}" style="height: 150px; width: 120px;"/>
	                </div>
                </c:forEach>
            </div>

            <div id="imgDetail" class="inputBox2">
                <div class='inputBox2 zoom' id='ex1'>
                    <img src='${pageContext.request.contextPath }/resources/images/productImgUpload/${a.att_name}' id='jack' width='540' height='620' alt=''/>
                </div>
            </div>
        
            
        </div>
        <div class="package">
            <div id="prTextInput" class="inputBox3">
                <span id="brand_name"><b>${ product.brand_name }</b></span>
                <br>
                
                <h4 id="pName">${ product.product_name }</h4>
                <span style="margin-left: 240px;" >???</span><span id="ppPrice">${ product.product_price }</span> <br><hr>
                
                <dl>
                    <dt class="drop"><b>Product Detail</b> 
                        <span class="accIcon" style="float: right; margin-right: 30px;"> 
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-lg" viewBox="0 0 16 16">
                                <path d="M8 0a1 1 0 0 1 1 1v6h6a1 1 0 1 1 0 2H9v6a1 1 0 1 1-2 0V9H1a1 1 0 0 1 0-2h6V1a1 1 0 0 1 1-1z"/>
                            </svg>
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-dash-lg" viewBox="0 0 16 16">
                                <path d="M0 8a1 1 0 0 1 1-1h14a1 1 0 1 1 0 2H1a1 1 0 0 1-1-1z"/>
                            </svg>
                        </span>
                    </dt> 
                    <dd class="ddd"><span class="pInfoText">
                        ${ product.product_detail }
                    </span> <br></dd>
                    <hr>
                    <dt class="drop"><b>Size, Color</b> 
                        <span class="accIcon" style="float: right; margin-right: 30px;">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-lg" viewBox="0 0 16 16">
                                <path d="M8 0a1 1 0 0 1 1 1v6h6a1 1 0 1 1 0 2H9v6a1 1 0 1 1-2 0V9H1a1 1 0 0 1 0-2h6V1a1 1 0 0 1 1-1z"/>
                            </svg>
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-dash-lg" viewBox="0 0 16 16">
                                <path d="M0 8a1 1 0 0 1 1-1h14a1 1 0 1 1 0 2H1a1 1 0 0 1-1-1z"/>
                            </svg>
                        </span>
                    </dt>
                    <dd class="ddd"><span class="pInfoText">
                        ${ product.product_sizeinfo }
                    </span> <br></dd>
                    <hr>
                    <dt>
                        <b>Select Size</b>
                        <select name="" id="selectSize" class="selectSize" style="width: 140px; float: right; margin-right: 30px;" >
                            <option value="">????????????</option>
                           	<c:if test="${ product.product_stock_s != 0}">
                            	<option value="S">S</option>
                            </c:if>
                            <c:if test="${ product.product_stock_s == 0}">
                            	<option value="">S - ??????</option>
                            </c:if>
                            <c:if test="${ product.product_stock_m != 0}">
                            	<option value="M">M</option>
                            </c:if>
                            <c:if test="${ product.product_stock_m == 0}">
                            	<option value="">M - ??????</option>
                            </c:if>
                            <c:if test="${ product.product_stock_l != 0}">
                            	<option value="L">L</option>
                            </c:if>
                            <c:if test="${ product.product_stock_l == 0}">
                            	<option value="">L - ??????</option>
                            </c:if>
                        </select> <br>
                    </dt><hr>
                    <dt class="pOrigin">
                        <div id="origin" class="selectedPList">
                       		<input type="hidden" class="product_no" value="${product.product_no }"/>
                       		<input type="hidden" class="product_type" value="${product.product_type }"/>
                            <span>${ product.product_name }<b class="selectedSize"></b> </span>
                            <input type="number" class="quantity" id="pQuan" name="pQuan" value="1" min="1"> <!-- input value ??? ??  -->
                            <img src="${pageContext.request.contextPath }/resources/images/xx.png" alt="" style="width: 15px; height: 15px; margin-right: 5px;" class="pdeleteBtn" >
                            <span>???</span><span class="pPrice">${ product.product_price }</span>
                            <input type="hidden" class="selSize" />
                        </div>
                    </dt>
                    <dt class="pResult">
                    </dt>

                    <dt><br /><br />
                        <div>   
                            <b>Total :</b> <span id="won">0</span> <span class="totalPD"></span> <span id="totalQ"></span>
                        </div>
                    </dt>
                </dl>
				<div class='btnArea'>
	                <button class="btn" onclick="addCart();">add to cart</button>
	                <button class="btn" onclick="goBuy();">buy now</button>
                </div>

            </div>
        </div>
    </div>

    <div class="review_list" style="clear:both;">
        <br><br><br><hr>

        <div style="margin-bottom: 15px;">
        	<span class="underMenu review" style="margin-bottom: 50px;">REVIEW</span><span class="underMenu faq" style="margin-bottom: 50px;">FAQ</span>
        </div><hr>
        
        <dl id="review-table">
        	<dt class="showArea">
				<span class="th">??????</span>
				<span class="th">??????</span>
				<span class="th">?????????</span>
				<span class="th">?????????</span>
	            <span class="accIcon" style="float: right; margin-right: 30px;">
                </span>
            </dt><hr>
            
            <c:forEach items="${ review }" var="r">
            	<dt class="showArea">
					<span class="th">${ r.review_no }</span>
					<span class="th">${ r.review_title }</span>
					<span class="th">${ r.member_nickname }</span>
					<span class="th">${ r.review_date }</span>
		            <span class="accIcon" style="float: right; margin-right: 30px;">
		                 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-lg" viewBox="0 0 16 16">
		                      <path d="M8 0a1 1 0 0 1 1 1v6h6a1 1 0 1 1 0 2H9v6a1 1 0 1 1-2 0V9H1a1 1 0 0 1 0-2h6V1a1 1 0 0 1 1-1z"/>
		                 </svg>
	                     <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-dash-lg" viewBox="0 0 16 16">
	                          <path d="M0 8a1 1 0 0 1 1-1h14a1 1 0 1 1 0 2H1a1 1 0 0 1-1-1z"/>
	                     </svg>
	                </span>
	            </dt>
	           	<dd class="dropArea">
	            	<div>
	                	<br />
	                	<span class="review-content">
		                	${ r.review_contents }
	                	</span>
	            	</div>
	            </dd><hr>
            </c:forEach>
            
            
        </dl>
        
        
        
        
        <dl id="FAQ-table">
            
	            <dt class="showArea-faq">
	                ??????????????? ???????????? ?????????.
	               
	                <span class="accIcon" style="float: right; margin-right: 30px;">
	                     <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-lg" viewBox="0 0 16 16">
	                          <path d="M8 0a1 1 0 0 1 1 1v6h6a1 1 0 1 1 0 2H9v6a1 1 0 1 1-2 0V9H1a1 1 0 0 1 0-2h6V1a1 1 0 0 1 1-1z"/>
	                     </svg>
	                     <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-dash-lg" viewBox="0 0 16 16">
	                          <path d="M0 8a1 1 0 0 1 1-1h14a1 1 0 1 1 0 2H1a1 1 0 0 1-1-1z"/>
	                     </svg>
	                </span>
	            </dt>
            	<dd class="dropArea">
	            	<div>
	                	<br />
	                	<span class="faq-text">
	                		YKJK ????????? ?????? ????????? ??? <br />
	                		????????? ????????? ?????? > MYPAGE > ?????????????????? <br /> 
	                		???????????? ?????? ???????????????.
	                	</span>
	                	
	            	</div>
	            </dd><hr>
	            
	            <dt class="showArea-faq">
	                ??????????????? ???????????? ?????????.
	               
	                <span class="accIcon" style="float: right; margin-right: 30px;">
	                     <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-lg" viewBox="0 0 16 16">
	                          <path d="M8 0a1 1 0 0 1 1 1v6h6a1 1 0 1 1 0 2H9v6a1 1 0 1 1-2 0V9H1a1 1 0 0 1 0-2h6V1a1 1 0 0 1 1-1z"/>
	                     </svg>
	                     <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-dash-lg" viewBox="0 0 16 16">
	                          <path d="M0 8a1 1 0 0 1 1-1h14a1 1 0 1 1 0 2H1a1 1 0 0 1-1-1z"/>
	                     </svg>
	                </span>
	            </dt>
            	<dd class="dropArea">
	            	<div>
	                	<br />
	                	<span class="faq-text">
	                		YKJK ????????? ?????? ????????? ??? ????????? ????????? ?????? > MYPAGE > ?????????????????? <br /> 
	                		?????? ??? ???????????? ?????? ???????????????. <br /><br /> 
	                		
	                		- ??????????????? : ???????????? ??? ?????? ?????????????????? ?????? ????????? ?????????<br /> 
	                		- ????????? : ??????????????? ?????? ?????? ??????<br />
	                		- ???????????? : ????????? ????????? ?????? ???????????? ???????????? ?????? <br />
	                	</span>
	                	
	            	</div>
	            </dd><hr>
	            
	            <dt class="showArea-faq">
	                ???????????? ??????/???????????? ????????? ??????????
	               
	                <span class="accIcon" style="float: right; margin-right: 30px;">
	                     <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-lg" viewBox="0 0 16 16">
	                          <path d="M8 0a1 1 0 0 1 1 1v6h6a1 1 0 1 1 0 2H9v6a1 1 0 1 1-2 0V9H1a1 1 0 0 1 0-2h6V1a1 1 0 0 1 1-1z"/>
	                     </svg>
	                     <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-dash-lg" viewBox="0 0 16 16">
	                          <path d="M0 8a1 1 0 0 1 1-1h14a1 1 0 1 1 0 2H1a1 1 0 0 1-1-1z"/>
	                     </svg>
	                </span>
	            </dt>
            	<dd class="dropArea">
	            	<div>
	                	<br />
	                	<span class="faq-text">
		                	YKJK?????? ?????????????????? ??????????????? ?????????????????????. <br /> 
		                	???????????? ?????? ?????? ??? ????????? ????????? ???????????????,<br />
		                	??????????????? > ???????????? ?????? ?????? ????????? ?????????????????? ????????????.<br />
	                	</span>
	            	</div>
	            </dd><hr>
	            
	            <dt class="showArea-faq">
	                ??? ????????? ????????? ????????????????
	               
	                <span class="accIcon" style="float: right; margin-right: 30px;">
	                     <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-lg" viewBox="0 0 16 16">
	                          <path d="M8 0a1 1 0 0 1 1 1v6h6a1 1 0 1 1 0 2H9v6a1 1 0 1 1-2 0V9H1a1 1 0 0 1 0-2h6V1a1 1 0 0 1 1-1z"/>
	                     </svg>
	                     <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-dash-lg" viewBox="0 0 16 16">
	                          <path d="M0 8a1 1 0 0 1 1-1h14a1 1 0 1 1 0 2H1a1 1 0 0 1-1-1z"/>
	                     </svg>
	                </span>
	            </dt>
            	<dd class="dropArea">
	            	<div>
	                	<br />
	                	<span class="faq-text">
		                	????????? ????????? ?????? > ??????????????? > ?????? ???????????? <br />
		                	???????????? ????????? ????????? ??? ????????????. <br />
	                	</span>
	            	</div>
	            </dd><hr>
	            
	            <dt class="showArea-faq">
	                ????????? ????????? ????????????????
	               
	                <span class="accIcon" style="float: right; margin-right: 30px;">
	                     <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-lg" viewBox="0 0 16 16">
	                          <path d="M8 0a1 1 0 0 1 1 1v6h6a1 1 0 1 1 0 2H9v6a1 1 0 1 1-2 0V9H1a1 1 0 0 1 0-2h6V1a1 1 0 0 1 1-1z"/>
	                     </svg>
	                     <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-dash-lg" viewBox="0 0 16 16">
	                          <path d="M0 8a1 1 0 0 1 1-1h14a1 1 0 1 1 0 2H1a1 1 0 0 1-1-1z"/>
	                     </svg>
	                </span>
	            </dt>
            	<dd class="dropArea" id="accordion2" class="collapse2">
	            	<div>
	                	<br />
	                	<span class="faq-text">
		                	????????? ????????? ?????? > ????????????????????? ???????????? ????????? ????????? ???????????? ??? ????????????. <br /> 
	                		?????? ????????? ???????????? ????????? ??? ????????? ??????????????? ??????????????? ???????????????. <br />
	                	</span>
	                	
	            	</div>
	            </dd>
	            
	         </dl>   
	        
        <hr />
        
        
        <!-- ?????? ?????? ???????????? -->
            <!-- ?????????????????? (??????) -->
            <c:out value="${pageBar}" escapeXml="false"/>



    </div>

</section>

<c:import url="../common/footer.jsp"/>
    
	<script>
	
		$(function() {
		    $(document).ready(function(){
		        $('#ex1').zoom();
		      
		    });
		});
    
    	// ??????????????? ???????????? ??????
		function addCart() {
				if(${empty member}){
					alert("PLEASE LOGIN")
				}else{
				 var pp = $('.selectedSize').text();
			 if(pp == ""){
	       		  alert('????????? ????????? ????????????.');
	       	  } else {
        		 if(product_size != ""){
        	   	 var product_size = [];
        		 $('.selSize').each(function(){
        			 product_size.push($(this).val());
        		 })
        		 
        		  var order_quantity = [];
				 $('.quantity').each(function(){
					 order_quantity.push($(this).val());
				 })
        		 var product_no = [];
				 $('.product_no').each(function(){
					product_no.push($(this).val()); 
				 	})
        		 }	
       	   		$.ajax({
	       		    method: 'POST',
	       		    url: "${pageContext.request.contextPath}/order/addCartList.or",
	       		   	data: {
						"product_size" :  product_size,
						"order_quantity" : order_quantity,
						"product_no" : product_no
					}, 
					success: function(){
						// ???????????? ?????? ??????
			        	 if(confirm("??????????????? ????????? ???????????????. ??????????????? ?????????????????????????") == true){
			        	        location.href="${pageContext.request.contextPath}/order/cart.or"
			        	    } else{
			        	        return ;
			        	    };
						}, error : function(){
							alert("??????");
						}
					});    
	   			 }
				}
    	}
		
		
		  // ?????? ????????????????????? ?????? ??????
          function goBuy() {
        	  if(${empty member}){
					alert("LOGIN FIRST.");
				}else{
					 var pp = $('.selectedSize').text();
					 if(pp == ""){
			       		  alert('????????? ?????? ?????? ??????????');
			       	  } else {
						  var buyList = [];
			        	  $('.selectedPList').each(function(){
				        	  var product_no = $(this).children('.product_no').val();
				        	  var cart_quantity = $(this).children('.quantity').val();
				        	  var cart_size = $(this).children('.selSize').val();
				        	  var product_name = '<c:out value="${ product.product_name }"/>';
				        	  var brand_name = '<c:out value="${ product.brand_name }"/>';
				        	  var product_price = '<c:out value="${ product.product_price}"/>';
				        	  var att_name = '<c:out value="${ attachment[1].att_name }"/>';
				        	 
				        	 
				        	  if(cart_size != ""){
					        	 var product = {
					        			 'product_no' : product_no,
					        			 'cart_quantity' : cart_quantity,
					        			 'cart_size' : cart_size,
					        			 'product_name' : product_name,
					        			 'brand_name' : brand_name,
					        			 'product_price' : product_price,
					        			 'att_name' : att_name
					        			 
					        	 }
					        	  buyList.push(product);
				        	  }
		        		  })
		        	  
		        		var data = JSON.stringify(buyList);
			        
		        	  
		        	   $.ajax({
		       		    method: 'POST',
		       		    url: '${pageContext.request.contextPath}/order/buyList.or',
		       		    traditional: true,
						data: {data}, 
						success: function(data){
								console.log("?????? ??????")
								location.href="${pageContext.request.contextPath}/order/order.or?selectedCart_no="+data;
							}, error : function(){
								console.log("??????");
							}
						});        	  
        	  }
			}
        	  			
		  }
          
          
          /*
        	 $('.selectedPList').each(function(){
        		 var product_no = $(this).children('.product_no').val();
	        	 var cart_quantity = $(this).children('.quantity').val();
	        	 var cart_size = $(this).children('.selSize').val();
	        	 var brand_name = ${ product.brand_name };
	        	 var product_name = ${ product.product_name };
	        	 var product_price = ${ product.product_price};
	        	// var att_name = ${ attachment[1].att_name };
	        	  
        	 })
        	 
        	 console.log('???????????? ?????? ??????');
        	 console.log(product_no);
        	 console.log(cart_quantity);
        	 console.log(cart_size);
        	 console.log(brand_name);
        	 console.log(product_name);
        	 console.log(product_price);
        	 //console.log(att_name);

        	 
        	 
         } */

        // $(function() {
        //     if($('.totalPD').text()== "") {
        //         console.log("totalPD::" + $('.totalPD').text())
        //         $('#won').text('0')
        //     }
        // });
        
         $('.pResult img').on('click', function() {
         	console.log('test');
             $(this).parent().remove();
         	totalCalc();
         });
            
        $('#pQuan').on('change', function() {
            var uuu = $(this).val()
            
            // var ggg = $('#ppPrice').text().str.substring(indexStart[2, indexEnd])
            // var ggg = $('#ppPrice').text()
            // console.log(uuu);
            // console.log(ggg);
            // console.log(uuu*hhh);
            $(this).siblings('.pPrice').text(thousandComma(uuu*hhh));
            totalCalc();
        });
        var hhh;
        $(function() {
            hhh = $('#ppPrice').text();
            // console.log(hhh);
            $('#ppPrice').text(thousandComma($('#ppPrice').text()));
            if($("#pQuan").val() < 1) alert("?????? ??????????????? 1??? ?????????.");
        });
        $('.pOrigin').hide();
        // $('.pResult').hide();
        
        $('#selectSize').on('change', function() {
            $('.pResult').show();
            if($('.frmSize.'+$('#selectSize').val()).length == 0){
                var result = $('#origin').clone(true);
                result.removeClass('#origin');
                result.addClass($('#selectSize').val());
                result.addClass('frmSize');
                result.find('.selectedSize').text("[" + $('#selectSize').val() + "]");
                result.find('.selSize').val($('#selectSize').val());
                
                $('.pResult').append(result);
                $('.pPrice').each(function(){
                    $(this).text(thousandComma($(this).text()));
                });
            } else {
                var quan = $('.frmSize.'+$('#selectSize').val()).find('[name=pQuan]');
                quan.val(parseInt(quan.val()) + 1);
                var priceTag = quan.siblings('.pPrice');
                priceTag.text(thousandComma(parseInt((priceTag.text()).replace(',','')) * quan.val()));
            }
            
            $('.pResult img').on('click', function() {
            	console.log('test');
                $(this).parent().remove();
            	totalCalc();
            });
            
            totalCalc();
            $('#won').text('???')
            // $('.pResult').$('#selectedSize').text($('#selectSize').val())
        })
        
        
       function totalCalc(){
            var totalPrice = 0;
            // console.log("totalPrice before :: " + totalPrice);
            
            $('.pResult .pPrice').each(function(){
                // console.log("parse : "+$(this).text());
                // console.log("count = " + Number(($(this).text()).replace(/,/gm,'')))
                totalPrice += Number(($(this).text()).replace(/,/gm,''));
            })
            
            // var totalQuan = 0;
            // $('.pResult #pQuan').each(function() {
            //     totalQuan += Number($('#pQuan').val())
            //     $('#totalQ').text("(" + totalQuan + "???)")
            // })
            $('.totalPD').text(thousandComma(totalPrice));
            // console.log("totalPrice after :: " + totalPrice);
       }
        
        function thousandComma(x){
            return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
        }
        $('.drop').on('click', function () {
        	$(this).next('.ddd').slideToggle(300);
        	
            // +, - ????????? ?????????
            var plus = $(this).children('span').children('.bi-plus-lg');
            var dash = $(this).children('span').children('.bi-dash-lg');
            if ( dash.css('display') == 'none' ) {
                dash.css('display', 'inline-block');
                plus.css('display', 'none');
            } else {
                plus.css('display', 'inline-block');
                dash.css('display', 'none');
            }
            // if ($(this).hasClass('on')) {
            //     slideUp();
            // } else {
            //     slideUp();
            //     $(this).addClass('on').next().slideDown();
            // }
            // function slideUp() {
            //     $('.drop').removeClass('on').next().slideUp();
            // };
        });
        $(function() {
        	$('#imgDetail').children().children().attr('src', $('#contentImg1').attr('src'));
        });
        $('#contentImgArea1').on('click', function() { 
			$('#imgDetail').children().children().attr('src', $('#contentImg1').attr('src'));
		});
		
		$('#contentImgArea2').on('click', function() {
			$('#imgDetail').children().children().attr('src', $('#contentImg2').attr('src'));
		});
		
		$('#contentImgArea3').on('click', function() {
			$('#imgDetail').children().children().attr('src', $('#contentImg3').attr('src'));
		});
		
		$('#contentImgArea4').on('click', function() {
			$('#imgDetail').children().children().attr('src', $('#contentImg4').attr('src'));
		});
		
		// icon, review-content toggle
		$('.showArea, .showArea-faq').on('click', function() {
			$(this).next('.dropArea').slideToggle(300);
            // +, - ????????? ?????????
            var plus = $(this).children('.icon-td').children('span').children('.bi-plus-lg');
            var dash = $(this).children('.icon-td').children('span').children('.bi-dash-lg');
			
            console.log(plus);
            console.log(dash);
            
            if ( dash.css('display') == 'none' ) {
                dash.css('display', 'block');
                plus.css('display', 'none');
            } else {
                plus.css('display', 'block');
                dash.css('display', 'none');
            }
        });
		
		// REVIEW ?????? ??? ?????? ???????????? ?????????
		$('.review').on('click', function() {
			$('#FAQ-table').css('display', 'none');
			$('#review-table').css('display', 'block');
			$(this).css({
				'text-decoration': 'underline'
			});
			$(this).siblings('.faq').css({
				'text-decoration': 'none'
			});
		});
		
		// FAQ ?????? ??? FAQ ???????????? ?????????
		$('.faq').on('click', function() {
			$('#review-table').css('display', 'none');
			$('#FAQ-table').css('display', 'block');
			$(this).css({
				'text-decoration': 'underline'
			});
			$(this).siblings('.review').css({
				'text-decoration': 'none'
			});
		});
		
		
		$(function() {
			
			var str = $('#currPage').text();
			// var index = str.indexOf('currPage');
			
			// var result = str.substring(index+11, index+12);
			console.log(str);
			
			if ( str > 1 ) {
				var offset = $(".review_list").offset();
	        	$('html, body').animate({scrollTop : offset.top}, 50);
			}
		});
			
	
			
		
		
		
	
		
		 
    </script>
</body>
</html>
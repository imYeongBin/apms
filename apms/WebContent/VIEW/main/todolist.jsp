<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
 %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 <c:set var="path" value="${pageContext.request.contextPath}"/>
 <fmt:requestEncoding value="utf-8"/>


<!-- todolist 는  jquery portlets 활용 -->






<!DOCTYPE html>
<html>
<head>
	<!-- 메타태그 설정 -->
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
<title>apms</title>
<!-- 폰트 및 아이콘 설정 -->
	<!-- https://fontawesome.com/icons?d=gallery -->
	<link href="${path}/bootstrap/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
	
	<!-- CSS Style 설정 -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
	<link rel="stylesheet" href="${path}/bootstrap/css/sb-admin-2.min.css" >
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

	

	<!-- CSS Style은 순서대로 적용되기 때문에 Custom CSS는 여기 하단으로 추가해주세요. -->
	<link rel="stylesheet" href="${path}/CSS/custom.css" >
	<!-- jsTree CSS -->
	<link rel="stylesheet" href="${path}/JS/jstree/dist/themes/default/style.min.css" />
	
	<!-- datatable CSS -->	 	
	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
	<link rel="stylesheet" href="https://cdn.datatables.net/select/1.2.7/css/select.dataTables.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.css"/> 
	<style type="text/css">

	</style>
	<!-- bootstrap에서 사용한 jquery -->
	<script src="${path}/bootstrap/vendor/jquery/jquery.min.js" type="text/javascript"></script>
	<!-- jquery ui -->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- bpopup js(http://dinbror.dk/bpopup/) -->
	<script src="${path}/JS/bpopup/jquery.bpopup.min.js" type="text/javascript"></script>
	<!-- jsTree js(https://www.jstree.com/) -->
	<script src="${path}/JS/jstree/dist/jstree.min.js"></script>
  	<!-- datatables -->
	

  	<script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
  	<script type="text/javascript" src="https://cdn.datatables.net/select/1.2.7/js/dataTables.select.min.js"></script>
  	
	<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.js"></script>

  	<!-- Script 설정(jquery) -->
	<script src="${path}/bootstrap/js/sb-admin-2.min.js" type="text/javascript"></script>
	
	<!-- Script 설정(bootstrap) -->
	<script src="${path}/bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js" type="text/javascript"></script>
	
	<!-- Core plugin JavaScript-->
    <script src="${path}/bootstrap/vendor/jquery-easing/jquery.easing.min.js"></script>
<script type="text/javascript">
	$(document).ready( function(){
		
		
		/* 
		  prjno number PRIMARY KEY,
    spaceno number,   --상위 워크스페이스 번호
    title VARCHAR2(100),
    pm number,
    prjbudget number DEFAULT 0,
    begindate date,
    enddate date,
    status varchar2(100),
    fileno number,
    empnos varchar2(500)
		 */
		

		
		var table = $('#todolist_table').DataTable({
	        columnDefs: [ {
	            orderable: false,
	            className: 'select-checkbox',
	            targets:   0
	        } ],
	        select: {
	            style:    'multi',
	            selector: 'td:first-child'
	        },
	        
	        order: [[ 1, 'asc' ]]
	    });

/* 
 	테이블 클릭시 이벤트 활용  
 $('#table_tbody').on('click', 'tr', function () {
			var data1 = table.row( this ).data();
			alert(data1[0]);
	 
	    } );
 */		
		
		$('#create_btn').on('click', function(e) {

            // Prevents the default action to be triggered. 
            e.preventDefault();

            // Triggering bPopup when click event is fired
            $('#element_to_pop_up').bPopup();

		});
 
		$('#modify_btn').on('click', function(e) {
						
            // Prevents the default action to be triggered. 
            e.preventDefault();

            // Triggering bPopup when click event is fired
            $('#element_to_pop_up2').bPopup();

		});
		
		
		
		/* portlet */
		
		$( ".column" ).sortable({
		      connectWith: ".column",
		      handle: ".portlet-header",
		      cancel: ".portlet-toggle",
		      placeholder: "portlet-placeholder ui-corner-all"
		    });
		 
		    $( ".portlet" )
		      .addClass( "ui-widget ui-widget-content ui-helper-clearfix ui-corner-all" )
		      .find( ".portlet-header" )
		        .addClass( "ui-widget-header ui-corner-all" )
		        .prepend( "<span class='ui-icon ui-icon-minusthick portlet-toggle'></span>");
		 
		    $( ".portlet-toggle" ).on( "click", function() {
		      var icon = $( this );
		      icon.toggleClass( "ui-icon-minusthick ui-icon-plusthick" );
		      icon.closest( ".portlet" ).find( ".portlet-content" ).toggle();
		    });
			
		    
		    
		    
		/* todolist 상태변경    onmouseup*/
			
		    
		    
		    
		    
	/* end of window~ */	 
	});

	
	$(function(){
		// datepicker 설정
		// 참조 : https://blog.naver.com/komj707/221447084954
		$(".datepicker").datepicker({
			// date 형식
			dateFormat:"yy-mm-dd",
			// 요일 표시
			dayNamesMin:["일","월","화","수","목","금","토"],
			// 월 표시
			monthNames:["01월","02월","03월","04월","05월","06월",
						"07월","08월","09월","10월","11월","12월"]
		});
		
	});



	
	
	function close_popup(){
		var pop = $("#element_to_pop_up").bPopup();
		pop.close();		
	}
	function submit_popup(){
		$("form[id=add_todolist]").submit();
		var pop = $("#element_to_pop_up").bPopup();
		pop.close();		
	}
	function close_popup2(){
		var pop2 = $("#element_to_pop_up2").bPopup();
		pop2.close();		
	}
	function submit_popup2(){
		$("form[id=add_todolist]").submit();
		var pop2 = $("#element_to_pop_up2").bPopup();
		pop2.close();		
	}


</script>
</head>
<body id="page-top" class="portlet">
<!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul id="accordionSidebar" class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion">
	
      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
        <div class="sidebar-brand-icon">
          <i class="fas fa-at"></i>
        </div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider">
	  
	  <div class="sidebar-heading">
        Menu
      </div>
	  
	 <!-- Nav Item - Workspace -->
      <li class="nav-item active">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#workspace" aria-expanded="true" aria-controls="workspace">
          <i class="fas fa-desktop"></i>
          <span>Workspace</span>
        </a>
        <div id="workspace" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Workspace:</h6>
            <a class="collapse-item" href="workspace.do?method=list">1번 워크스페이스</a>
            <a class="collapse-item" href="workspace.do?method=list">2번 워크스페이스</a>
            <a class="collapse-item" href="workspace.do?method=list">3번 워크스페이스</a>
            <a class="collapse-item" href="workspace.do?method=list">4번 워크스페이스</a>
          </div>
        </div>
      </li>
	  
      <!-- Nav Item - Dashboard -->
      <li class="nav-item">
        <a class="nav-link" href="workspace.do?method=list">
			<i class="fas fa-chart-pie"></i>  
		<span>workspace</span></a>
      </li>
      
      <!-- Nav Item - Financial -->
      <li class="nav-item">
        <a class="nav-link" href="financial.do?method=board">
			<i class="fas fa-won-sign"></i>  
		<span>Financial</span></a>
      </li>
      
      <!-- Nav Item - Financial -->
      <li class="nav-item">
        <a class="nav-link" href="gantt.do?method=list">
			<i class="fas fa-code-branch"></i>  
		<span>Gantt Chart</span></a>
      </li>
      
      <!-- Nav Item - Financial -->
      <li class="nav-item">
        <a class="nav-link" href="manpower.do?method=list">
			<i class="fas fa-users"></i>  
		<span>Manpower</span></a>
      </li>
      
      <!-- Nav Item - To-Do -->
      <li class="nav-item">
        <a class="nav-link" href="todo.do?method=list">
			<i class="fas fa-list-ol"></i> 
		<span>TO-DO List</span></a>
      </li>
      

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Interface
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-cog"></i>
          <span>Components</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Custom Components:</h6>
            <a class="collapse-item" href="buttons.html">Buttons</a>
            <a class="collapse-item" href="cards.html">Cards</a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Utilities Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities" aria-expanded="true" aria-controls="collapseUtilities">
          <i class="fas fa-fw fa-wrench"></i>
          <span>Utilities</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Custom Utilities:</h6>
            <a class="collapse-item" href="utilities-color.html">Colors</a>
            <a class="collapse-item" href="utilities-border.html">Borders</a>
            <a class="collapse-item" href="utilities-animation.html">Animations</a>
            <a class="collapse-item" href="utilities-other.html">Other</a>
          </div>
        </div>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Addons
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
          <i class="fas fa-fw fa-folder"></i>
          <span>Pages</span>
        </a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Login Screens:</h6>
            <a class="collapse-item" href="login.html">Login</a>
            <a class="collapse-item" href="register.html">Register</a>
            <a class="collapse-item" href="forgot-password.html">Forgot Password</a>
            <div class="collapse-divider"></div>
            <h6 class="collapse-header">Other Pages:</h6>
            <a class="collapse-item" href="404.html">404 Page</a>
            <a class="collapse-item" href="blank.html">Blank Page</a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Charts -->
      <li class="nav-item">
        <a class="nav-link" href="charts.html">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>Charts</span></a>
      </li>

      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link" href="tables.html">
          <i class="fas fa-fw fa-table"></i>
          <span>Tables</span></a>
      </li>
      
       <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link" href="tables.html">
          <i class="fas fa-fw fa-comments"></i>
          <span>Chating</span></a>
      </li>

    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">



     	 <!-- Main Content -->
      	<div id="content">
			<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
			
			</nav>
			<div class="m-5">
				<div class="text-left">
					<div id="region_project_name" class="mb-5">
						<span>${projectName }</span>
					</div>
				</div>
				
				<div class="text-right clearfix">
					<div id="region_create_btn" class="mb-5 float-right">
						<div>
							<a href="#" class="btn btn-primary "id="create_btn">todo list 생성</a> 
						</div>
					</div>					
					<div id="region_modify_btn" class="mb-5 float-left">
						<div>
							<a href="#" class="btn btn-danger "id="modify_btn">todo list 상태변경</a> 
						</div>
					</div>					
					<div class="float-left mt-5 ml-5 clearfix width100 parent">
						<div class="float-left bgd-blue width30 text-center p-2 bgd-blue">
							<span>준비중</span>
						</div>
						<div class="float-left bgd-gold width30 text-center p-2 bgd-blue">
							<span>작업중</span>
						</div>
						<div class="float-left bgd-tomato width30 text-center p-2 bgd-blue">
							<span>완료</span>
						</div>
					</div>
					
				</div>
		

				
				
				<div id="element_to_pop_up" class="popup_hide">
					<a class="b-close">x</a>
					<form action="todolist.do" id="add_todolist">
						<input type="hidden" name="method" value="ins"/>
						<input type="hidden" name="prjno" value="${prjno}" />
						<div class="mb-3">
							<div class="text-center ">
								<span class="text-bold">${projectName}</span>
							</div>							
						</div>
						
						<div class="mb-3">
							<div>
								<span>타이틀 : </span>
							</div>
							<div>
								<input type="text" id="title" name="title" class="length-80"/>
							</div>
						</div>

						<div class="mb-3">
							<div>
								<span>담당자 : </span>
							</div>
							<div>
								<input type="text" id="pm" name="pm" class="length-80"/>
							</div>
						</div>
						
						<div class="mb-3">
							<div>
								<span>프로젝트예산 : </span>
							</div>
							<div>
								<input type="text" id="todolistbudget" name="todolistbudget" class="length-80"/>
							</div>
						</div>
						
						<div class="mb-3">
							<div>
								<span>시작일 : </span>
							</div>
							<div>
								<input type="text" id="begindate" name="begindate" class="length-80 datepicker"/>
							</div>
						</div>
						<div class="mb-3">
							<div>
								<span>종료일 : </span>
							</div>
							<div>
								<input type="text" id="enddate" name="enddate" class="length-80 datepicker"/>
							</div>
						</div>
						
						<div class="mb-3">
							<div>
								<span>작업상태 : </span>
							</div>
							<div>
								<select name="status" id="status" class="length-80">
									<option value="status1">준비중</option>
									<option value="status2">작업중</option>
									<option value="status3">완료</option>
								</select>

							</div>
						</div>
						
						<div class="mb-3">
							<div>
								<span>참여인원 : </span>
							</div>
							<div>
								<input type="text" id="empnos" name="empnos" class="length-80"/>
							</div>
						</div>
						
						
						<div class="mb-3">
							<div>
								<span>파일번호 : </span>
							</div>
							<div>
								<input type="text" id="fileno" name="fileno" class="length-80"/>
							</div>
						</div>
						
						<div class="clearfix">
							<div class="float-left mr-5">
								<a href="javascript:submit_popup()" class="btn btn-primary"><span>생성하기</span></a>
							</div>
							<div class="float-left">
								<a href="javascript:close_popup()" class="btn btn-secondary"><span>취소</span></a>								
							</div>
						</div>
					</form>
				</div>
				
				<div id="element_to_pop_up2" class="popup_hide element_to_pop_up">
					<a class="b-close">x</a>
					<form action="todolist.do" id="modify_todolist_status">
						<input type="hidden" name="method" value="upd_status"/>		
						<select name="choose_option" id="choose_option" class="mb-3">
							<option value="준비중">준비중</option>
							<option value="진행중">진행중</option>
							<option value="완료">완료</option>
						</select>
						<div class="clearfix">
							<div class="float-left mr-5">
								<a href="javascript:submit_popup2()" class="btn btn-primary"><span>변경하기</span></a>
							</div>
							<div class="float-left">
								<a href="javascript:close_popup2()" class="btn btn-secondary"><span>취소</span></a>								
							</div>
						</div>
						
						
					</form>
				</div>
				
				
				
				
				
				
				
				<!-- portlet -->
				<div id="region_portlet" class="">
						<div class="column" id="status1"> 
									<input type="hidden" name="tip" value="status1"/>
							<c:forEach var="todo" items="${tlist }">
								<c:if test="${todo.status == 'status1'}">
									<div class="portlet choose">
										<div class="portlet-header text-center">${todo.title }</div>
										<div class="portlet-content">
											<div id="pm">
												<div><span>담당자 :</span></div>
												<span>${todo.pm} </span>
											</div>
											<div id="todolistbudget">
												<div><span>예산 :</span></div>
												<span>${todo.todolistbudget} </span>
											</div>
											<div id="begindate">
												<div><span>시작일 :</span></div>
												<span><fmt:formatDate value="${todo.begindate}" pattern="yyyy-MM-dd" /></span>
											</div>
											<div id="enddate">
												<div><span>종료일 :</span></div>
												<span><fmt:formatDate value="${todo.enddate}" pattern="yyyy-MM-dd" /></span>
											</div>
											<div id="empnos">
												<div><span>참가자 :</span></div>
												<span>${todo.empnos} </span>
											</div>
										</div>
									</div>									
								</c:if>
							</c:forEach>
						</div>





						<div class="column" id="status2">
							<c:forEach var="todo" items="${tlist }">
								<c:if test="${todo.status =='status2'}">
									<div class="portlet choose">
										<div class="portlet-header text-center">${todo.title }</div>
										<div class="portlet-content">
											<div id="pm">
												<div><span>담당자 :</span></div>
												<span>${todo.pm} </span>
											</div>
											<div id="todolistbudget">
												<div><span>예산 :</span></div>
												<span>${todo.todolistbudget} </span>
											</div>
											<div id="begindate">
												<div><span>시작일 :</span></div>
												<span><fmt:formatDate value="${todo.begindate}" pattern="yyyy-MM-dd" /></span>
											</div>
											<div id="enddate">
												<div><span>종료일 :</span></div>
												<span><fmt:formatDate value="${todo.enddate}" pattern="yyyy-MM-dd" /></span>
											</div>
											<div id="empnos">
												<div><span>참가자 :</span></div>
												<span>${todo.empnos} </span>
											</div>
										</div>
									</div>									
								</c:if>
							</c:forEach>

						</div>

						<div class="column" id="status3">
							<c:forEach var="todo" items="${tlist }">
								<c:if test="${todo.status == 'status3'}">
									<div class="portlet choose">
										<div class="portlet-header text-center">${todo.title }</div>
										<div class="portlet-content">
											<div id="pm">
												<div><span>담당자 :</span></div>
												<span>${todo.pm} </span>
											</div>
											<div id="todolistbudget">
												<div><span>예산 :</span></div>
												<span>${todo.todolistbudget} </span>
											</div>
											<div id="Begindate">
												<div><span>시작일 :</span></div>
												<span><fmt:formatDate value="${todo.begindate}" pattern="yyyy-MM-dd" /></span>
											</div>
											<div id="Enddate">
												<div><span>시작일 :</span></div>
												<span><fmt:formatDate value="${todo.enddate}" pattern="yyyy-MM-dd" /></span>
											</div>
											<div id="empnos">
												<div><span>참가자 :</span></div>
												<span>${todo.empnos} </span>
											</div>
										</div>
									</div>									
								</c:if>
							</c:forEach>

						</div>






					</div>
			</div>
			
		
		
		</div>
	</div>






</body>
</html>
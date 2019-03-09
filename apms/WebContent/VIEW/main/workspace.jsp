<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
 %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 <c:set var="path" value="${pageContext.request.contextPath}"/>
 <fmt:requestEncoding value="utf-8"/>

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
	
	<!-- datatable CSS -->	
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.css"/> 
	
	<!-- CSS Style은 순서대로 적용되기 때문에 Custom CSS는 여기 하단으로 추가해주세요. -->
	<link rel="stylesheet" href="${path}/CSS/custom.css" >
	

	
<style type="text/css">
	
</style>
	
	<!-- bootstrap에서 사용한 jquery -->
	<script src="https://code.jquery.com/jquery-3.3.1.js" type="text/javascript"></script>
	
	<!-- jquery ui -->
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
	<!-- bootstrap에서 사용한 jquery -->
	<script src="${path}/bootstrap/vendor/jquery/jquery.min.js" type="text/javascript"></script>
	
	<!-- bpopup js(http://dinbror.dk/bpopup/) -->
	<script src="${path}/JS/bpopup/jquery.bpopup.min.js" type="text/javascript"></script>

	<!-- Script 설정(jquery) -->
	<script src="${path}/bootstrap/js/sb-admin-2.min.js" type="text/javascript"></script>
	<!-- datatables -->
	<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.js"></script>
	
	<!-- Script 설정(bootstrap) -->
	<script src="${path}/bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js" type="text/javascript"></script>
	
	<!-- Core plugin JavaScript-->
    <script src="${path}/bootstrap/vendor/jquery-easing/jquery.easing.min.js"></script>
    


<script type="text/javascript">
	$(document).ready( function(){
		
		var table = $('#workspace_table').DataTable();

		$('#table_tbody').on('click', 'tr', function () {
			var data1 = table.row( this ).data();
			alert(data1[0]);
			location.href = "project.do?method=list&spaceno="+data1[0];
	 
	    } );
		
		$('#region_create_btn').on('click', function(e) {

            // Prevents the default action to be triggered. 
            e.preventDefault();

            // Triggering bPopup when click event is fired
            $('#element_to_pop_up').bPopup();

		});
	});
	
	function close_popup(){
		var pop = $("#element_to_pop_up").bPopup();
		pop.close();		
	}
	
	function submit_popup(){
		$("form[id=add_workspace]").submit();
		var pop = $("#element_to_pop_up").bPopup();
		pop.close();		
	}

</script>
</head>
<body id="page-top">
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
            <c:forEach var="workspace" items="${wlist}">
            	<a class="collapse-item" href="redirect:">1번 워크스페이스</a>
            </c:forEach>
            
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
        <a class="nav-link" href="${path }/chat.do">
          <i class="fas fa-fw fa-comments"></i>
          <span>Chating</span></a>
      </li>

    </ul>
    <!-- End of Sidebar -->
	<!-- chatting bpopup -->
	<div>
		<div id="element_to_pop_up3" class="popup_hide">
			<a class="b-close">x</a>
			<form action="chat.do" id="open_form">
				<input type="hidden" name="method" value="chat"/>
			</form>
		</div>
	
	</div>
	
	
	
	
	
    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">



     	 <!-- Main Content -->
      	<div id="content">
			<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
			
			</nav>
			<div class="text-right m-5">
				<div id="region_create_btn" class="mb-5">
					<a href="#" class="btn btn-primary ">워크스페이스생성</a>
				</div>
				
				<div id="element_to_pop_up" class="popup_hide">
					<a class="b-close">x</a>
					<form action="workspace.do" id="add_workspace">
						<input type="hidden" name="method" value="ins"/>
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
								<span>전체예산 : </span>
							</div>
							<div>
								<input type="text" id="totbudget" name="totbudget" class="length-80"/>
							</div>
						</div>
						
						<div class="mb-3">
							<div>
								<span>작업상태 : </span>
							</div>
							<div>
								<input type="text" id="status" name="status" class="length-80"/>
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
				
				
				<div id="region_table" class="">
					<table id="workspace_table">
						<thead>
							<tr>
								<th>번호</th><th>타이틀</th><th>담당자</th><th>전체예산</th><th>상태</th><th>파일번호</th><th>참가인원</th>
							</tr>
						</thead>
						<tbody id="table_tbody">						
							<c:forEach var="workspace" items="${wlist }">
								<tr>
									<td>${workspace.spaceno}</td>
									<td>${workspace.title}</td>
									<td>${workspace.pm}</td>
									<td>${workspace.totbudget}</td>
									<td>${workspace.status}</td>
									<td>${workspace.fileno}</td>
									<td>${workspace.empnos}</td>

								</tr>						
							</c:forEach>
						</tbody>
						
					</table>
				</div>
			</div>
			
		
		
		</div>
	</div>






</body>
</html>
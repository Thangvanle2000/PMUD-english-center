<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Anh Ngữ N2T</title>
<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/administrator/layout/css.jsp"></jsp:include>
</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">
		<!-- 	header -->
		<jsp:include page="/WEB-INF/views/administrator/layout/header.jsp"></jsp:include>
		<!-- 	header -->
		<!-- 		sidebar -->
		<jsp:include page="/WEB-INF/views/administrator/layout/sidebar.jsp"></jsp:include>
		<!-- 		sidebar -->
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<div class="form_content">
				<div class="title_form">
					<h2>Danh sách lớp học</h2>
				</div>
				<hr>
				<div class="table_list">
					<table class="table table-bordered ">
						<thead class="bg-secondary">
							<tr>
								<th scope="col">ID</th>
								<th scope="col">Tên lớp</th>
								<th scope="col">Khoá học</th>
								<th scope="col">Ngày bắt đầu</th>
								<th scope="col">Học phí</th>
								<th scope="col">Giảng viên</th>
								<th scope="col"></th>
							</tr>
						</thead>
						<c:forEach items="${classList }" var="o">
							<tbody>
								<tr>
									<th scope="row">${o.id}</th>
									<td>${o.className}</td>
									<td>${o.courseName}</td>
									<td>${o.startDate}</td>
									<td>${o.price}₫</td>
									<td>${o.teacherName}</td>
									<td> 
										<i class="fas fa-edit"></i>
										<i class="fas fa-trash-alt"></i>
									</td>
								</tr>
							</tbody>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
		<!-- /.content-wrapper -->
		<!-- 		footer -->
		<jsp:include page="/WEB-INF/views/administrator/layout/footer.jsp"></jsp:include>
		<!-- 		footer -->
	</div>
	<!-- ./wrapper -->
</body>
<jsp:include page="/WEB-INF/views/administrator/layout/js.jsp"></jsp:include>
</html>
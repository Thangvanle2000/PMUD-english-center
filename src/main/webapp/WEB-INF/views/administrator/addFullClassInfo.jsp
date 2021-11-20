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
			<div class="information mb-5">
				<table class=" table-bordered">
					<tr>
						<td colspan="3" class=""><h2>Thông tin lớp học</h2></td>
					</tr>
					<c:forEach items="${lastClass }" var="o">
						<tr>
							<td>Tên Lớp</td>
							<td>${o.className}</td>
							<td><a href=""><i class="fas fa-edit"></i></a></td>
						</tr>
						<tr>
							<td>Khoá Học</td>
							<td>${o.courseName}</td>
							<td><a href=""><i class="fas fa-edit"></i></a></td>
						</tr>
						<tr>
							<td>Ngày Bắt Đầu</td>
							<td>${o.startDate}</td>
							<td><a href=""><i class="fas fa-edit"></i></a></td>
						</tr>
						<tr>
							<td>Học Phí</td>
							<td>${o.price}</td>
							<td><a href=""><i class="fas fa-edit"></i></a></td>
						</tr>
						<tr>
							<td>Giảng Viên</td>
							<td>
								<ul>
									<li>${o.teacherName}</li>
								</ul>
							</td>
							<td><a href=""><i class="fas fa-plus-square"></i></a> <a
								href=""><i class="fas fa-edit"></i></a></td>
						</tr>
					</c:forEach>
					
				</table>
			</div>
			<div class="form_content">
				<div class="title_form">
					<h2>Danh sách học viên</h2>
				</div>
				<hr>
				<div class="table_list">
					<table class="table table-bordered">
						<thead class="bg-secondary">
							<tr>
								<th scope="col">ID</th>
								<th scope="col">Họ Tên</th>
								<th scope="col">Ngày Sinh</th>
								<th scope="col">Giới Tính</th>
								<th scope="col">Địa Chỉ</th>
								<th scope="col">SĐT</th>
								<th scope="col">Email</th>
								<th scope="col"></th>
							</tr>
						</thead>
						<c:forEach items="${studentList }" var="o">
							<tbody>
								<tr>
									<th scope="row">${o.id }</th>
									<td>${o.fullName }</td>
									<td>${o.birthday }</td>
									<td>${o.gender }</td>
									<td>${o.address }</td>
									<td>${o.phone }</td>
									<td>${o.email }</td>
									<td><a href=""><i class="fas fa-edit"></i></a> <a href=""><i
											class="fas fa-trash-alt"></i></a></td>
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
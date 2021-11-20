<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
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
			<div class="row">
				<!--Grid column-->
				<div class="col-md-12 mb-md-0 mb-5 form_createClass">
					<div class="title_form"> 
						<h2>Tạo Lớp Học Mới</h2>
					</div>
					<hr>
					<form id="form_createClass" name="form_createClass" action="${base }/createClass" method="POST">

						<!--Grid row-->
						<div class="row">
							<!--Grid column-->
							<div class="col-md-5">
								<div class="md-form mb-4">
									<label for="className" class="">Tên Lớp Học</label>
									<input type="text" id="className" name="className" class="form-control">
								</div>
							</div>
							<!--Grid column-->

							<!--Grid column-->
							<div class="col-md-4">
								<div class="md-form mb-4 btn_select">
									<label for="courseName" class="">Khoá Học</label><br>
									<select name="courseName" class="form-select form-control">
										<c:forEach items="${courseNameList }" var="o">
											<option value="${o.courseID }">${o.courseName }</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<!--Grid column-->
							<!--Grid column-->
							<div class="col-md-3">
								<div class="md-form mb-4 btn_select">
									<label for="levelName" class="">Cấp Độ</label><br>
									<select name="levelName" class="form-select form-control">
										<c:forEach items="${levelCourseNameList }" var="o">
											<option value="${o.levelID }">${o.levelName }</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<!--Grid column-->
						</div>
						<div class="row">
							<!--Grid column-->
							<div class="col-md-5">
								<div class="md-form mb-4">
									<label for="price" class="">Học Phí</label>
									<input type="text" id="price" name="price" class="form-control">
								</div>
							</div>
							<!--Grid column-->
							<!--Grid column-->
							<div class="col-md-4">
								<div class="md-form mb-4">
									<label for="price" class="">Ngày Bắt Đầu</label>
									<div class="input-append date" id="datepicker"  data-date-format="yyyy-mm-dd">
									  <input class="form-control add-on" size="16" type="text" placeholder="yyyy-mm-dd" name="startDate" autocomplete="off">
									</div>
								</div>
							</div>
							<!--Grid column-->
							<!--Grid column-->
							<div class="col-md-3">
								<div class="md-form mb-4">
									<label for="price" class="">Giảng Viên</label>
									<select name="teacherName" class="form-control">
										<c:forEach items="${teacherList }" var="o">
											<option value="${o.teacherID }">${o.fullName }</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<!--Grid column-->
						</div>
					</form>
					<a class="btn btn-primary" href="${base }/addFullClassInfo" role="button" onclick="document.getElementById('form_createClass').submit();">Tạo</a>
				</div>
			</div>
		</div>

					<!-- <div class="form-check">
			          <input type="checkbox" class="form-check-input" id="exampleCheck1">
			          <label class="form-check-label" for="exampleCheck1">Check me out</label>
			        </div> -->
					

		<!-- 		footer -->
		<jsp:include page="/WEB-INF/views/administrator/layout/footer.jsp"></jsp:include>
		<!-- 		footer -->
	</div>
	<!-- ./wrapper -->
</body>
<jsp:include page="/WEB-INF/views/administrator/layout/js.jsp"></jsp:include>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="${base }/admin" class="brand-link">
      <img src="dist/img/logon2t.png" alt="AdminLTE Logo" class="brand-image  elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">N2T admin</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="dist/img/anh.jpg" class="img-circle " alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">Tạ Ngọc Tuệ</a>
        </div>
      </div>

      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item">
             <a href="#" class="nav-link">Quản Lý Giảng Viên</a>
             <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="${base }/addInfo" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Thêm giảng viên mới</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="${base }/teacherList" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Danh sách giảng viên</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
             <a href="#" class="nav-link">Quản Lý Học Viên</a>
             <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="${base }/addInfo" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Thêm học viên mới</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="${base }/studentList" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Danh sách học viên</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">Quản Lý Khoá Học</a>
            <ul class="nav nav-treeview">
             <li class="nav-item">
               <a href="${base }/addInfo" class="nav-link">
                 <i class="far fa-circle nav-icon"></i>
                 <p>Thêm khoá viên mới</p>
               </a>
             </li>
             <li class="nav-item">
               <a href="${base }/courseList" class="nav-link">
                 <i class="far fa-circle nav-icon"></i>
                 <p>Danh sách khoá học</p>
               </a>
             </li>
           </ul>
         </li>
          <li class="nav-item">
            <a href="#" class="nav-link">Quản Lý lớp học</a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="${base }/createClass" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Thêm lớp học mới</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="${base }/classList" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Danh sách lớp học</p>
                </a>
              </li>
            </ul>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

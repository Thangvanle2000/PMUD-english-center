package websiteEnglishCenter.controller.administrator;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import websiteEnglishCenter.dao.DAO;
import websiteEnglishCenter.dto.Classroom;
import websiteEnglishCenter.dto.Course;
import websiteEnglishCenter.dto.Student;
import websiteEnglishCenter.dto.Teacher;

@Controller
public class AdminHomepageController {
	@RequestMapping(value = { "/admin" }, method = RequestMethod.GET)
	public String admin(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		return "administrator/admin";

	}

	
	@RequestMapping(value = { "/classList" }, method = RequestMethod.GET)
	public String listWrapper(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		List<Classroom> classList = new ArrayList();
		DAO dao = new DAO();
		classList = dao.getAllClass();
		System.out.println(classList);
		model.addAttribute("classList",classList);
		return "administrator/classList";
	}
	@RequestMapping(value = { "/studentList" }, method = RequestMethod.GET)
	public String getStudentList(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		List<Student> studentList = new ArrayList();
		DAO dao = new DAO();
		studentList = dao.getAllStudents();
		model.addAttribute("studentList",studentList);
		return "administrator/studentList";
	}
	@RequestMapping(value = { "/courseList" }, method = RequestMethod.GET)
	public String getCourseList(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		List<Course> courseList = new ArrayList();
		DAO dao = new DAO();
		courseList = dao.getAllInfoCourses();
		model.addAttribute("courseList",courseList);
		return "administrator/courseList";
	}
	@RequestMapping(value = { "/teacherList" }, method = RequestMethod.GET)
	public String getTeacherList(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		List<Teacher> teacherList = new ArrayList();
		DAO dao = new DAO();
		teacherList = dao.getAllTeachers();
		model.addAttribute("teacherList",teacherList);
		return "administrator/teacherList";
	}

}

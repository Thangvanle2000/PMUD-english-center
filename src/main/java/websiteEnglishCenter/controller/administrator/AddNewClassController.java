package websiteEnglishCenter.controller.administrator;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import websiteEnglishCenter.dao.DAO;
import websiteEnglishCenter.dto.Classroom;
import websiteEnglishCenter.dto.Course;
import websiteEnglishCenter.dto.LevelCourse;
import websiteEnglishCenter.dto.Student;
import websiteEnglishCenter.dto.Teacher;

@Controller
public class AddNewClassController {
	@RequestMapping(value = { "/createClass" }, method = RequestMethod.GET)
	public String addInfo(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		DAO dao = new DAO();
		List<Course> courseNameList = dao.getAllCourseNames();
		model.addAttribute("courseNameList",courseNameList);
		List<LevelCourse> levelCourseNameList = dao.getAllLevelCourseNames();
		model.addAttribute("levelCourseNameList", levelCourseNameList);
		List<Teacher> teacherList = dao.getAllTeachers();
		model.addAttribute("teacherList",teacherList);
		return "administrator/createClass";

	}
	@RequestMapping(value = { "/createClass" }, method = RequestMethod.POST)
	public String post_contact(final Model model,final HttpServletRequest request,
			final HttpServletResponse response) throws IOException, ParseException{
		DAO dao = new DAO();
		List<Course> courseNameList = dao.getAllCourseNames();
		model.addAttribute("courseNameList",courseNameList);
		List<LevelCourse> levelCourseNameList = dao.getAllLevelCourseNames();
		model.addAttribute("levelCourseNameList", levelCourseNameList);
		List<Teacher> teacherList = dao.getAllTeachers();
		model.addAttribute("teacherList",teacherList);
		int levelID =Integer.parseInt(request.getParameter("levelName"));
		int courseID =Integer.parseInt(request.getParameter("courseName"));
		int teacherID =Integer.parseInt(request.getParameter("teacherName"));
		System.out.println(levelID+" "+courseID);
		String className =request.getParameter("className");
		String startDate =request.getParameter("startDate");
		int price = Integer.parseInt(request.getParameter("price"));
//		System.out.println(startDate);
		String sprice =price+"đ";
//		System.out.println(className+courseID+levelID+startDate+sprice);
//		model.addAttribute("price", sprice);
//		model.addAttribute("startDate", startDate);
//		model.addAttribute("className", className);
//		model.addAttribute("levelID", levelID);
//		model.addAttribute("courseID", courseID);
		SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date date = sdf1.parse(startDate);
//		System.out.println(date);
//		dao.insertEmptyClass(className, date, price,teacherID,courseID);
		return "administrator/addFullClassInfo";
	}
	
	@RequestMapping(value = { "/addFullClassInfo" }, method = RequestMethod.GET)
	public String getAddFullClassInfo(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		DAO dao = new DAO();
		List<Student> studentList = dao.getAllStudents();
		model.addAttribute("studentList",studentList);
		List<Classroom> lastClass = dao.getLastClass();
		for (Classroom classroom : lastClass) {
			System.out.println(classroom);
		}
		List<Teacher> teacherList = dao.getAllTeachers();
		model.addAttribute("teacherList",teacherList);
		model.addAttribute("lastClass",lastClass);
		return "administrator/addFullClassInfo";

	}
//	@RequestMapping(value = { "/addFullClassInfo" }, method = RequestMethod.POST)
//	public String postAddFullClassInfo(final Model model, final HttpServletRequest request, final HttpServletResponse response)
//			throws IOException {
//		
//		return "administrator/addFullClassInfo";
//	}
}

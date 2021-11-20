package websiteEnglishCenter.dto;

public class Course {
	private int courseID;
	private String courseName;
	private String description;
	public int getCourseID() {
		return courseID;
	}
	public void setCourseID(int courseID) {
		this.courseID = courseID;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Course() {
		super();
	}
	public Course(int courseID, String courseName, String description) {
		super();
		this.courseID = courseID;
		this.courseName = courseName;
		this.description = description;
	}
	
	public Course(int courseID, String courseName) {
		super();
		this.courseID = courseID;
		this.courseName = courseName;
	}
	@Override
	public String toString() {
		return "Course [courseID=" + courseID + ", courseName=" + courseName + ", levelName=" + ", description=" + description + "]";
	}
	
}

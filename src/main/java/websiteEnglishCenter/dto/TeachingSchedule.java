package websiteEnglishCenter.dto;

public class TeachingSchedule {
	private int idSchedule;
	private int idClass;
	private String times;
	private int idWeeksday;
	private int idClassroom;
	private int idTeacher;
	private String weeksday;
	private String classroomName;
	private String teacherName;
	public int getIdSchedule() {
		return idSchedule;
	}
	public void setIdSchedule(int idSchedule) {
		this.idSchedule = idSchedule;
	}
	public String getTimes() {
		return times;
	}
	public void setTimes(String times) {
		this.times = times;
	}
	public int getIdClass() {
		return idClass;
	}
	public void setIdClass(int idClass) {
		this.idClass = idClass;
	}
	public int getIdClassroom() {
		return idClassroom;
	}
	public void setIdClassroom(int idClassroom) {
		this.idClassroom = idClassroom;
	}
	public int getIdTeacher() {
		return idTeacher;
	}
	public void setIdTeacher(int idTeacher) {
		this.idTeacher = idTeacher;
	}
	public int getIdWeeksday() {
		return idWeeksday;
	}
	public void setIdWeeksday(int idWeeksday) {
		this.idWeeksday = idWeeksday;
	}
	
	public String getWeeksday() {
		return weeksday;
	}
	public void setWeeksday(String weeksday) {
		this.weeksday = weeksday;
	}
	public String getClassroomName() {
		return classroomName;
	}
	public void setClassroomName(String classroomName) {
		this.classroomName = classroomName;
	}
	public String getTeacherName() {
		return teacherName;
	}
	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}
	public TeachingSchedule(int idSchedule, int idClass, String times, int idWeeksday, int idClassroom, int idTeacher) {
		super();
		this.idSchedule = idSchedule;
		this.idClass = idClass;
		this.times = times;
		this.idWeeksday = idWeeksday;
		this.idClassroom = idClassroom;
		this.idTeacher = idTeacher;
	}
	public TeachingSchedule() {
		super();
	}
	
	public TeachingSchedule(int idSchedule, String times, String weeksday, String classroomName, String teacherName) {
		super();
		this.idSchedule = idSchedule;
		this.times = times;
		this.weeksday = weeksday;
		this.classroomName = classroomName;
		this.teacherName = teacherName;
	}
	@Override
	public String toString() {
		return "TeachingSchedule [idSchedule=" + idSchedule + ", idClass=" + idClass + ", times=" + times
				+ ", idWeeksday=" + idWeeksday + ", idClassroom=" + idClassroom + ", idTeacher=" + idTeacher
				+ ", weeksday=" + weeksday + ", classroomName=" + classroomName + ", teacherName=" + teacherName + "]";
	}
	
	
	
	
	
}

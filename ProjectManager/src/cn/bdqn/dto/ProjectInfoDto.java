package cn.bdqn.dto;

import java.sql.Timestamp;

public class ProjectInfoDto {

	private String id;
	private String projectName;
	private String startDate;
	private String endDate;
	private String statues;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getStatues() {
		return statues;
	}
	public void setStatues(String statues) {
		this.statues = statues;
	}
	public ProjectInfoDto(String id, String projectName, String startDate, String endDate, String statues) {
		super();
		this.id = id;
		this.projectName = projectName;
		this.startDate = startDate;
		this.endDate = endDate;
		this.statues = statues;
	}
	public ProjectInfoDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return super.toString();
	}
	
	
	
	
	
	
	
}

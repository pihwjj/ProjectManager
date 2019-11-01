package cn.bdqn.domain;

import java.sql.Timestamp;

/**
 * Projectinfo entity. @author MyEclipse Persistence Tools
 */

public class Projectinfo implements java.io.Serializable {

	// Fields

	private Long id;
	private String projectName;
	private Timestamp startDate;
	private Timestamp endDate;
	private Integer statues;

	// Constructors

	/** default constructor */
	public Projectinfo() {
	}

	/** full constructor */
	public Projectinfo(Long id, String projectName, Timestamp startDate, Timestamp endDate, Integer statues) {
		this.id = id;
		this.projectName = projectName;
		this.startDate = startDate;
		this.endDate = endDate;
		this.statues = statues;
	}

	// Property accessors

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getProjectName() {
		return this.projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public Timestamp getStartDate() {
		return this.startDate;
	}

	public void setStartDate(Timestamp startDate) {
		this.startDate = startDate;
	}

	public Timestamp getEndDate() {
		return this.endDate;
	}

	public void setEndDate(Timestamp endDate) {
		this.endDate = endDate;
	}

	public Integer getStatues() {
		return this.statues;
	}

	public void setStatues(Integer statues) {
		this.statues = statues;
	}

	@Override
	public String toString() {
		return super.toString();
	}
	
	
	
	

}
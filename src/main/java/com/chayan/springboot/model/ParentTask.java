package com.chayan.springboot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="parent_task_tab")
public class ParentTask {
	
	
	@Id
	@GeneratedValue(strategy= GenerationType.AUTO)
	@Column(name="parent_id", nullable=false)
	private Integer parentTaskId;
	
	@NotEmpty
	@Column(name="parent_task", nullable=false)
	private String parentTask;

	public Integer getParentTaskId() {
		return parentTaskId;
	}

	public void setParentTaskId(Integer parentTaskId) {
		this.parentTaskId = parentTaskId;
	}

	public String getParentTask() {
		return parentTask;
	}

	public void setParentTask(String parentTask) {
		this.parentTask = parentTask;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((parentTask == null) ? 0 : parentTask.hashCode());
		result = prime * result + ((parentTaskId == null) ? 0 : parentTaskId.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ParentTask other = (ParentTask) obj;
		if (parentTask == null) {
			if (other.parentTask != null)
				return false;
		} else if (!parentTask.equals(other.parentTask))
			return false;
		if (parentTaskId == null) {
			if (other.parentTaskId != null)
				return false;
		} else if (!parentTaskId.equals(other.parentTaskId))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "ParentTask [parentTaskId=" + parentTaskId + ", parentTask=" + parentTask + "]";
	}

}

package org.study.model;

import java.util.Date;

public class Application {

	String Id;
	String userId;
	String PLAN;
	String PLANDESC;
	public Application(String id2) {
		// TODO Auto-generated constructor stub
	}
	public String getId() {
		return Id;
	}
	public void setId(String id) {
		Id = id;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPLAN() {
		return PLAN;
	}
	public void setPLAN(String pLAN) {
		PLAN = pLAN;
	}
	public String getPLANDESC() {
		return PLANDESC;
	}
	public void setPLANDESC(String pLANDESC) {
		PLANDESC = pLANDESC;
	}
	@Override
	public String toString() {
		return "Application [Id=" + Id + ", userId=" + userId + ", PLAN=" + PLAN + ", PLANDESC=" + PLANDESC + "]";
	}
	
	
	
	

}

package ch10.bean;

import java.sql.Timestamp;

public class RegisterBean {
	// Property
	private String idt;
	private String passwd;
	private String name;
	private Timestamp reg_date;
	
	public String getIdt() {
		return idt;
	}
	public void setIdt(String idt) {
		this.idt = idt;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	
	
}

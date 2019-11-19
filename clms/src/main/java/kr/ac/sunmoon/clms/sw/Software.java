package kr.ac.sunmoon.clms.sw;

import java.io.Serializable;

public class Software implements Serializable{
	private int no;
	private String name;
	private String usage;
	private String useDept;
	private String serialNumber;
	private String division;

	public Software() {
		
	}
	
	public Software(int no, String name, String usage, String useDept, String serialNumber, String division) {
		this.no = no;
		this.name = name;
		this.usage = usage;
		this.useDept = useDept;
		this.serialNumber = serialNumber;
		this.division = division;
	}
	
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUsage() {
		return usage;
	}

	public void setUsage(String usage) {
		this.usage = usage;
	}

	public String getUseDept() {
		return useDept;
	}

	public void setUseDept(String useDept) {
		this.useDept = useDept;
	}

	public String getSerialNumber() {
		return serialNumber;
	}

	public void setSerialNumber(String serialNumber) {
		this.serialNumber = serialNumber;
	}

	public String getDivision() {
		return division;
	}

	public void setDivision(String division) {
		this.division = division;
	}
}
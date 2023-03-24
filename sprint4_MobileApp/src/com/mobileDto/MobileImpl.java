package com.mobileDto;

import java.time.LocalDate;

public class MobileImpl implements Mobile{
	private int id;
	private String model_no;
	private String company;
	private int price;
	private LocalDate MFGdate;
	
	@Override
	public int getId() {
		return id;
	}
	@Override
	public void setId(int id) {
		this.id = id;
	}
	@Override
	public String getModel_no() {
		return model_no;
	}
	@Override
	public void setModel_no(String model_no) {
		this.model_no = model_no;
	}
	@Override
	public String getCompany() {
		return company;
	}
	@Override
	public void setCompany(String company) {
		this.company = company;
	}
	@Override
	public int getPrice() {
		return price;
	}
	@Override
	public void setPrice(int price) {
		this.price = price;
	}
	@Override
	public LocalDate getMFGdate() {
		return MFGdate;
	}
	@Override
	public void setMFGdate(LocalDate mFGdate) {
		MFGdate = mFGdate;
	}
	public MobileImpl(int id, String model_no, String company, int price, LocalDate mFGdate) {
		super();
		this.id = id;
		this.model_no = model_no;
		this.company = company;
		this.price = price;
		MFGdate = mFGdate;
	}
	
	@Override
	public String toString() {
		return "MobileImpl [id=" + id + ", model_no=" + model_no + ", company=" + company + ", price=" + price
				+ ", MFGdate=" + MFGdate + "]";
	}
	
	
}

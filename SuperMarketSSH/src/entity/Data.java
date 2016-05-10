package entity;

import java.sql.Timestamp;

/**
 * Data entity. @author MyEclipse Persistence Tools
 */

public class Data implements java.io.Serializable {

	// Fields

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private String name;
	private Integer inPrice;
	private Integer salePrice;
	private Integer inNum;
	private Timestamp inTime;
	private Integer num;
	private Integer saleAmount;
	private Integer earn;

	// Constructors

	/** default constructor */
	public Data() {
	}

	/** full constructor */
	public Data(Integer id, String name, Integer inPrice, Integer salePrice,
			Integer inNum, Timestamp inTime, Integer num, Integer saleAmount,
			Integer earn) {
		this.id = id;
		this.name = name;
		this.inPrice = inPrice;
		this.salePrice = salePrice;
		this.inNum = inNum;
		this.inTime = inTime;
		this.num = num;
		this.saleAmount = saleAmount;
		this.earn = earn;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getInPrice() {
		return this.inPrice;
	}

	public void setInPrice(Integer inPrice) {
		this.inPrice = inPrice;
	}

	public Integer getSalePrice() {
		return this.salePrice;
	}

	public void setSalePrice(Integer salePrice) {
		this.salePrice = salePrice;
	}

	public Integer getInNum() {
		return this.inNum;
	}

	public void setInNum(Integer inNum) {
		this.inNum = inNum;
	}

	public Timestamp getInTime() {
		return this.inTime;
	}

	public void setInTime(Timestamp inTime) {
		this.inTime = inTime;
	}

	public Integer getNum() {
		return this.num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

	public Integer getSaleAmount() {
		return this.saleAmount;
	}

	public void setSaleAmount(Integer saleAmount) {
		this.saleAmount = saleAmount;
	}

	public Integer getEarn() {
		return this.earn;
	}

	public void setEarn(Integer earn) {
		this.earn = earn;
	}

}
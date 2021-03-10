package emp.bam.vo;

import java.util.Date;

public class BusinessAnnouncementVO {

	private int bamAncIdx;
	private int boardIdx;
	private String ancTitle;
	private String ancRemark;
	private String writer;
	private Date ancBeginDt;
	private Date ancEndDt;
	private Date regDate;
	private Date modDate;
	private String DelYN;
	public int getBamAncIdx() {
		return bamAncIdx;
	}
	public void setBamAncIdx(int bamAncIdx) {
		this.bamAncIdx = bamAncIdx;
	}
	public int getBoardIdx() {
		return boardIdx;
	}
	public void setBoardIdx(int boardIdx) {
		this.boardIdx = boardIdx;
	}
	public String getAncTitle() {
		return ancTitle;
	}
	public void setAncTitle(String ancTitle) {
		this.ancTitle = ancTitle;
	}
	public String getAncRemark() {
		return ancRemark;
	}
	public void setAncRemark(String ancRemark) {
		this.ancRemark = ancRemark;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getAncBeginDt() {
		return ancBeginDt;
	}
	public void setAncBeginDt(Date ancBeginDt) {
		this.ancBeginDt = ancBeginDt;
	}
	public Date getAncEndDt() {
		return ancEndDt;
	}
	public void setAncEndDt(Date ancEndDt) {
		this.ancEndDt = ancEndDt;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		regDate = regDate;
	}
	public Date getModDate() {
		return modDate;
	}
	public void setModDate(Date modDate) {
		modDate = modDate;
	}
	public String getDelYN() {
		return DelYN;
	}
	public void setDelYN(String delYN) {
		DelYN = delYN;
	}
	
	
	
}
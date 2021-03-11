package emp.bam.vo;

import java.util.Date;

public class BusinessAnnouncementVO {

	private int BAM_ANC_IDX;
	private int BOARD_IDX;
	private String ANC_TITLE;
	private String ANC_REMARK;
	private String writer;
	private Date ANC_BEGIN_DT;
	private Date ANC_END_DT;
	private Date REGDATE;
	private Date MODDATE;
	public int getBAM_ANC_IDX() {
		return BAM_ANC_IDX;
	}
	public void setBAM_ANC_IDX(int bAM_ANC_IDX) {
		BAM_ANC_IDX = bAM_ANC_IDX;
	}
	public int getBOARD_IDX() {
		return BOARD_IDX;
	}
	public void setBOARD_IDX(int bOARD_IDX) {
		BOARD_IDX = bOARD_IDX;
	}
	public String getANC_TITLE() {
		return ANC_TITLE;
	}
	public void setANC_TITLE(String aNC_TITLE) {
		ANC_TITLE = aNC_TITLE;
	}
	public String getANC_REMARK() {
		return ANC_REMARK;
	}
	public void setANC_REMARK(String aNC_REMARK) {
		ANC_REMARK = aNC_REMARK;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getANC_BEGIN_DT() {
		return ANC_BEGIN_DT;
	}
	public void setANC_BEGIN_DT(Date aNC_BEGIN_DT) {
		ANC_BEGIN_DT = aNC_BEGIN_DT;
	}
	public Date getANC_END_DT() {
		return ANC_END_DT;
	}
	public void setANC_END_DT(Date aNC_END_DT) {
		ANC_END_DT = aNC_END_DT;
	}
	public Date getREGDATE() {
		return REGDATE;
	}
	public void setREGDATE(Date rEGDATE) {
		REGDATE = rEGDATE;
	}
	public Date getMODDATE() {
		return MODDATE;
	}
	public void setMODDATE(Date mODDATE) {
		MODDATE = mODDATE;
	}

	
	
	
	
}
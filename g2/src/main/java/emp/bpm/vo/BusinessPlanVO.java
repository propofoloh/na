package emp.bpm.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import emp.bpm.util.Criteria;

public class BusinessPlanVO extends Criteria{
	

	
	private int bpm_bplan_idx;
	private int board_idx = 2;
	private int bam_anc_idx;
	private String title_remark1;
	private String title_remark2;
	private String title_remark3;
	private String title_remark4;
	private String title_name1;
	private String title_name2;
	private String title_name3;
	private String title_name4;
	private String writer;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date reg_date;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date mod_date;
	private String status;
	
	public int getBam_anc_idx() {
		return bam_anc_idx;
	}
	public void setBam_anc_idx(int bam_anc_idx) {
		this.bam_anc_idx = bam_anc_idx;
	}
	public int getBpm_bplan_idx() {
		return bpm_bplan_idx;
	}
	public void setBpm_bplan_idx(int bpm_bplan_idx) {
		this.bpm_bplan_idx = bpm_bplan_idx;
	}
	public int getBoard_idx() {
		return board_idx;
	}
	public void setBoard_idx(int board_idx) {
		this.board_idx = board_idx;
	}
	
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public Date getMod_date() {
		return mod_date;
	}
	public void setMod_date(Date mod_date) {
		this.mod_date = mod_date;
	}
	public String getTitle_remark1() {
		return title_remark1;
	}
	public void setTitle_remark1(String title_remark1) {
		this.title_remark1 = title_remark1;
	}
	public String getTitle_remark2() {
		return title_remark2;
	}
	public void setTitle_remark2(String title_remark2) {
		this.title_remark2 = title_remark2;
	}
	public String getTitle_remark3() {
		return title_remark3;
	}
	public void setTitle_remark3(String title_remark3) {
		this.title_remark3 = title_remark3;
	}
	public String getTitle_remark4() {
		return title_remark4;
	}
	public void setTitle_remark4(String title_remark4) {
		this.title_remark4 = title_remark4;
	}
	public String getTitle_name1() {
		return title_name1;
	}
	public void setTitle_name1(String title_name1) {
		this.title_name1 = title_name1;
	}
	public String getTitle_name2() {
		return title_name2;
	}
	public void setTitle_name2(String title_name2) {
		this.title_name2 = title_name2;
	}
	public String getTitle_name3() {
		return title_name3;
	}
	public void setTitle_name3(String title_name3) {
		this.title_name3 = title_name3;
	}
	public String getTitle_name4() {
		return title_name4;
	}
	public void setTitle_name4(String title_name4) {
		this.title_name4 = title_name4;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}

	
	


	
	

	

	
	
	
	
}
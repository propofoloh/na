package emp.bpm.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import emp.bpm.util.Criteria;

public class BusinessPlanVO extends Criteria{
	

	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	private int bpm_bplan_idx;
	private int board_idx = 2;
	private int bam_anc_idx;
	private String research_obj;
	private String research_remark;
	private String benefit;
	private String research_cost;
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
	public String getResearch_obj() {
		return research_obj;
	}
	public void setResearch_obj(String research_obj) {
		this.research_obj = research_obj;
	}
	public String getResearch_remark() {
		return research_remark;
	}
	public void setResearch_remark(String research_remark) {
		this.research_remark = research_remark;
	}
	public String getBenefit() {
		return benefit;
	}
	public void setBenefit(String benefit) {
		this.benefit = benefit;
	}
	public String getResearch_cost() {
		return research_cost;
	}
	public void setResearch_cost(String research_cost) {
		this.research_cost = research_cost;
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

	
	


	
	

	

	
	
	
	
}
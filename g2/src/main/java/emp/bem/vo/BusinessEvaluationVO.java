package emp.bem.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import emp.bpm.util.Criteria;

public class BusinessEvaluationVO extends Criteria{
	
	private int bpm_bplan_idx;
	private int board_idx;
	private int bem_beval_idx;
	private String eval_title;
	private String eval_column1;
	private String eval_column2;
	private String eval_column3;
	private String eval_column4;
	private String eval_column5;
	private String eval_column6;
	private String eval_column7;
	private String eval_column8;
	private String eval_opinion;
	private String eval_writer;
	private String writer;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date reg_date;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date mod_date;
	
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
	public int getBem_beval_idx() {
		return bem_beval_idx;
	}
	public void setBem_beval_idx(int bem_beval_idx) {
		this.bem_beval_idx = bem_beval_idx;
	}
	public String getEval_title() {
		return eval_title;
	}
	public void setEval_title(String eval_title) {
		this.eval_title = eval_title;
	}
	public String getEval_column1() {
		return eval_column1;
	}
	public void setEval_column1(String eval_column1) {
		this.eval_column1 = eval_column1;
	}
	public String getEval_column2() {
		return eval_column2;
	}
	public void setEval_column2(String eval_column2) {
		this.eval_column2 = eval_column2;
	}
	public String getEval_column3() {
		return eval_column3;
	}
	public void setEval_column3(String eval_column3) {
		this.eval_column3 = eval_column3;
	}
	public String getEval_column4() {
		return eval_column4;
	}
	public void setEval_column4(String eval_column4) {
		this.eval_column4 = eval_column4;
	}
	public String getEval_column5() {
		return eval_column5;
	}
	public void setEval_column5(String eval_column5) {
		this.eval_column5 = eval_column5;
	}
	public String getEval_column6() {
		return eval_column6;
	}
	public void setEval_column6(String eval_column6) {
		this.eval_column6 = eval_column6;
	}
	public String getEval_column7() {
		return eval_column7;
	}
	public void setEval_column7(String eval_column7) {
		this.eval_column7 = eval_column7;
	}
	public String getEval_column8() {
		return eval_column8;
	}
	public void setEval_column8(String eval_column8) {
		this.eval_column8 = eval_column8;
	}
	public String getEval_opinion() {
		return eval_opinion;
	}
	public void setEval_opinion(String eval_opinion) {
		this.eval_opinion = eval_opinion;
	}
	public String getEval_writer() {
		return eval_writer;
	}
	public void setEval_writer(String eval_writer) {
		this.eval_writer = eval_writer;
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
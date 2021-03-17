package emp.bpm.dao;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import emp.bpm.util.SearchCriteria;
import emp.bpm.vo.BusinessPlanVO;


public interface BusinessPlanDAO {

	// 사업공고 리스트조회
	public List<BusinessPlanVO> businessPlanApplyList(Map<String,Integer> paramMap) throws Exception;
	
	// 사업공고등록
	public void write(BusinessPlanVO businessPlanVO,MultipartHttpServletRequest mpRequest) throws Exception;
	
	// 사업공고 갯수
	public int listCount(SearchCriteria scri) throws Exception;

	// 사업공고 상세보기
	public BusinessPlanVO businessPlanApplyDetail(int bam_bplan_idx) throws Exception;
	
	// 사업공고 수정
	public void update(BusinessPlanVO VO) throws Exception;
	
	// 사업공고 삭제
	public void delete(int bno) throws Exception;

	// 파일업로드
	public void insertFile(Map<String, Object> map) throws Exception;
	
    // 파일선택
	public List<Map<String, Object>> selectFileList(int bno) throws Exception;
	
	// 선택파일정보
	public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception;
	
	// 파일첨부 수정
	public void updateFile(Map<String, Object> map) throws Exception;
    
	// 사업공고 조회수
	public void boardHit(int bno) throws Exception;


	    
	
}
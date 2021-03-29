package emp.bem.dao;

import java.util.List;
import java.util.Map;

import emp.bem.util.SearchCriteria;
import emp.bem.vo.BusinessEvaluationVO;




public interface BusinessEvaluationDAO {
	

	// 사업공고 리스트조회
	public List<BusinessEvaluationVO> businessEvaluationList(Map<String,Integer> paramMap) throws Exception;
	
	// 사업공고등록
	public void businessEvaluation(BusinessEvaluationVO businessEvaluationVO ) throws Exception;
	
	// 사업공고 갯수
	public int listCount(SearchCriteria scri) throws Exception;

	// 사업공고 상세보기
	public BusinessEvaluationVO businessEvaluationDetail(int bem_beval_idx) throws Exception;
	
	// 사업공고 수정
	public void update(BusinessEvaluationVO VO) throws Exception;
	
	// 사업공고 삭제
	public void delete(int bem_beval_idx) throws Exception;

	// 파일업로드
	public void insertFile(Map<String, Object> map) throws Exception;
	
    // 파일선택
	public List<Map<String, Object>> selectFileList(int bno) throws Exception;
	
	// 선택파일정보
	public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception;
	
	// 파일첨부 수정
	public void updateFile(Map<String, Object> map) throws Exception;
    
	// 사업공고 조회수
	public void boardHit(int bem_beval_idx) throws Exception;


	    
	
}
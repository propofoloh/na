package emp.bem.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import emp.bem.util.SearchCriteria;
import emp.bem.vo.BusinessEvaluationVO;


public interface BusinessEvaluationService {
	
		// 사업공고 리스트조회
		public List<BusinessEvaluationVO> businessEvaluationList(SearchCriteria scri) throws Exception;
		
		// 사업공고등록
		public void businessEvaluation(BusinessEvaluationVO businessEvaluationVO) throws Exception;
		
		// 사업공고 갯수
		public int listCount(SearchCriteria scri) throws Exception;

		// 사업공고 상세보기
		public BusinessEvaluationVO businessEvaluationDetail(int bem_beval_idx) throws Exception;
		
		// 사업공고 수정
		public void update(BusinessEvaluationVO businessEvaluationVO, String[] files, String[] fileNames, MultipartHttpServletRequest mpRequest) throws Exception;		
		
		// 사업공고 삭제
		public void delete(int bem_beval_idx) throws Exception;
		
	    // 파일선택
		public List<Map<String, Object>> selectFileList(int bem_beval_idx) throws Exception;
		
		// 선택파일정보
		public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception;
		
		// 파일첨부 수정
		public void update(BusinessEvaluationVO businessEvaluationVO) throws Exception;
		
	    

		    
		
	}    
 
package emp.bem.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import emp.bem.dao.BusinessEvaluationDAO;
import emp.bem.util.FileUtils;
import emp.bem.util.SearchCriteria;
import emp.bem.vo.BusinessEvaluationVO;










@Service
public class BusinessEvaluationServiceImpl implements BusinessEvaluationService {
	
	
	@Resource(name="bemFileUtils")
	private FileUtils fileUtils;

	@Inject
	private BusinessEvaluationDAO dao;
	
	// 寃뚯떆湲� �옉�꽦
	@Override
	public void businessEvaluation(BusinessEvaluationVO businessEvaluationVO) throws Exception {
		// TODO Auto-generated method stub
		dao.businessEvaluation(businessEvaluationVO);
	}
	
	// 寃뚯떆臾� 紐⑸줉 議고쉶
	@Override
	public List<BusinessEvaluationVO> businessEvaluationList(SearchCriteria scri) throws Exception {

		return dao.businessEvaluationList(scri);
	}
	
	
	// 媛쒖떆臾� 珥� 媛��닔
	@Override
	public int listCount(SearchCriteria scri) throws Exception{
		return dao.listCount(scri);
	}

	
	// 寃뚯떆臾� 議고쉶
	@Transactional(isolation = Isolation.READ_COMMITTED)
	@Override
	public BusinessEvaluationVO businessEvaluationDetail(int bem_beval_idx) throws Exception {
		/* dao.boardHit(bno); */
		return dao.businessEvaluationDetail(bem_beval_idx);
	}
	
	@Override
	public void update(BusinessEvaluationVO businessEvaluationVO) throws Exception {
		// TODO Auto-generated method stub
		dao.update(businessEvaluationVO);
	}
	
	@Override
	public void delete(int bem_beval_idx) throws Exception {
		// TODO Auto-generated method stub
		
		dao.delete(bem_beval_idx);
		
	}

	// 泥⑤��뙆�씪 議고쉶
	@Override
	public List<Map<String, Object>> selectFileList(int bem_beval_idx) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectFileList(bem_beval_idx);
	}

	// 泥⑤��뙆�씪 �떎�슫濡쒕뱶
	@Override
	public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectFileInfo(map);
	}
	
	
	
	@Override
	public void update(BusinessEvaluationVO businessEvaluationVO, String[] files, String[] fileNames, MultipartHttpServletRequest mpRequest) throws Exception {
		
		dao.update(businessEvaluationVO);
		
		List<Map<String, Object>> list = fileUtils.parseUpdateFileInfo(businessEvaluationVO, files, fileNames, mpRequest);
		Map<String, Object> tempMap = null;
		int size = list.size();
		for(int i = 0; i<size; i++) {
			tempMap = list.get(i);
			if(tempMap.get("IS_NEW").equals("Y")) {
				dao.insertFile(tempMap);
			}else {
				dao.updateFile(tempMap);
			}
		}
	}
	


}

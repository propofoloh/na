package emp.bam.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import emp.bam.util.SearchCriteria;
import emp.bam.vo.BusinessAnnouncementVO;



@Repository
public class BusinessAnnouncementDAOImpl implements BusinessAnnouncementDAO {

	@Inject
	private SqlSession sqlSession;
	
	// 사업공고리스트 조회
	@Override
	public List<BusinessAnnouncementVO> businessAnnouncementList(SearchCriteria scri) throws Exception {
	
		return sqlSession.selectList("businessAnnouncementMapper.businessAnnouncementList", scri);

	}
	
	// 사업공고등록
	@Override
	public void write(BusinessAnnouncementVO VO,MultipartHttpServletRequest mpRequest) throws Exception {
		sqlSession.insert("boardMapper.insert", VO);
		
	}
	
	// 사업리스트 카운트
	@Override
	public int listCount(SearchCriteria scri) throws Exception{
		return sqlSession.selectOne("boardMapper.listCount", scri);
	}

	// 사업공고 상세보기
	@Override
	public BusinessAnnouncementVO read(int bno) throws Exception {
			
		return sqlSession.selectOne("boardMapper.read", bno);
	}
	
	// 사업공고 수정
	@Override
	public void update(BusinessAnnouncementVO businessAnnouncementVO) throws Exception {
		
		sqlSession.update("boardMapper.update", businessAnnouncementVO);
	}

	// 사업공고 삭제
	@Override
	public void delete(int bno) throws Exception {
		
		sqlSession.delete("boardMapper.delete", bno);
	}
	
	// 첨부파일 등록
	@Override
	public void insertFile(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert("boardMapper.insertFile", map);
	}
	
   	// 파일선택리스트
	@Override
	public List<Map<String, Object>> selectFileList(int bno) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList("boardMapper.selectFileList", bno);
	}
	
	// 선택파일정보
	@Override
	public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("boardMapper.selectFileInfo", map);
	}
	
	// 첨부파일 수정
	@Override
	public void updateFile(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		
		sqlSession.update("boardMapper.updateFile", map);
	}
	
	// 사업공고 조회수
	@Override
	public void boardHit(int bno) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.update("boardMapper.boardHit", bno);
	}
	
	
}
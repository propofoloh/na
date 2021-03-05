package a.b.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import a.b.vo.SearchCriteria;
import a.b.vo.BoardVO;
import a.b.vo.Criteria;
import a.b.vo.ReplyVO;

public interface BoardService {

	// 寃뚯떆湲� �옉�꽦
	public void write(BoardVO boardVO, MultipartHttpServletRequest mpRequest) throws Exception;

	// 寃뚯떆臾� 紐⑸줉 議고쉶
	public List<BoardVO> receipList(SearchCriteria scri) throws Exception;
	
	// 寃뚯떆臾� 珥� 媛��닔
	public int listCount(SearchCriteria scri) throws Exception;
	
	// 寃뚯떆臾� 紐⑸줉 議고쉶
	public BoardVO read(int bno) throws Exception;
	
	// 寃뚯떆臾� �닔�젙
	public void update(BoardVO boardVO) throws Exception;
	
	// 寃뚯떆臾� �궘�젣
	public void delete(int bno) throws Exception;
	
	// 泥⑤��뙆�씪 議고쉶
	public List<Map<String, Object>> selectFileList(int bno) throws Exception;
    
	// 泥⑤��뙆�씪 �떎�슫'
	public Map<String, Object> selectFileInfo(Map<String, Object> map) throws Exception;
    
	// 寃뚯떆臾� �닔�젙
	public void update(BoardVO boardVO, String[] files, String[] fileNames, MultipartHttpServletRequest mpRequest) throws Exception;
    
    
	


	    
	
}
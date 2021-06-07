package emp.cmm.service;

import java.util.List;
import java.util.Map;

import emp.cmm.vo.MemberVO;

public interface MemberService {
	//회원가입
	public void register(MemberVO vo) throws Exception;
	//로그인
	public MemberVO login(MemberVO vo) throws Exception;
	//회원정보 수정
	public void memberUpdate(MemberVO vo) throws Exception;
	//회원정보 삭제
	public void memberDelete(MemberVO vo) throws Exception;
	//패스워드체크
	public int passChk(MemberVO vo) throws Exception;
	//아이디체크
	public int idChk(MemberVO vo) throws Exception;
	//멤버리스트 조회 
	public List<Map<String,Object>> memberList() throws Exception;
	
	// 회원 관리
    // 회원 목록 
    public List<MemberVO> memberMngList();
    // 회원 입력
    public void insertMember(MemberVO vo);
    // 회원 정보 상세보기
    public MemberVO viewMember();
    // 회원삭제
    public void deleteMember(String user_id);
    // 회원정보 수정
    public void updateMember(MemberVO vo);

}
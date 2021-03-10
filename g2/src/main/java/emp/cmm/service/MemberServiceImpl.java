package emp.cmm.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import emp.cmm.dao.MemberDAO;
import emp.cmm.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Inject MemberDAO dao;
	
	@Override
	public void register(MemberVO vo) throws Exception {
		
		dao.register(vo);
		
	}
	
	@Override
	public MemberVO login(MemberVO vo) throws Exception{
		return dao.login(vo);
	}
	
	@Override
	public void memberUpdate(MemberVO vo) throws Exception{
		
		//받은 vo를 DAO 로 보내줍니다.
		dao.memberUpdate(vo);
	}
	
	// 업데이트에서 처리한 내용과 같습니다.
@Override
public void memberDelete(MemberVO vo) throws Exception {
	dao.memberDelete(vo);
	}

//패스워드 체크

@Override
public int passChk(MemberVO vo) throws Exception {
	int result = dao.passChk(vo);
	return result;
}

//아이디 중복 체크
@Override
public int idChk(MemberVO vo) throws Exception {
	int result = dao.idChk(vo);
	return result;
}


}
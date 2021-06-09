package pet.member.service;

import pet.member.vo.MemberVO;


public interface MemberService {

   //회원가입
   public void join(MemberVO vo) throws Exception;
   
   //중복체크
   public int mailChk(String email) throws Exception;
   
   //로그인
   public MemberVO login(MemberVO lvo);
   
   //마이페이지
   public MemberVO mypage(int vo);
   
   //팔로우
   public MemberVO followmypage(int lvo);
   
   //정보수정
   public void memberUpdateDo(MemberVO vo) throws Exception;
   
   //아이디 찾기
   public MemberVO getEmailSearch(String address, String name) throws Exception;
   
   //메일 보내기 (임시비밀번호)
   public void sendEmail(MemberVO vo) throws Exception;

   //비밀번호 찾기
   public String getpwSearch(String email) throws Exception;
   
   //비밀번호 수정
   public void pwModify(MemberVO vo) throws Exception;
   
   // 내정보 수정
   public void memberModify(MemberVO vo) throws Exception;
   
   public void loginLog(long member_number);
   
   public void makeLoginLog(long member_number, String member_name);
   
   public long checkLoginLog(long member_number);
   
}

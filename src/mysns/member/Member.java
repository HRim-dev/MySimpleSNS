package mysns.member;

import java.util.Date;

//회원 정보 관리하는 DO 클래스:s_member 테이블의 정보를 표현 가능해야함
//테이블의 칼럼 정보를 멤버로하는 클래스 구조
public class Member {	
	//회원 이름
	private String name;
	
	//회원 아이디(로그인 용)
	private String uid;
	
	//로그인 비밀 번호
	private String passwd;
	
	//이메일 주소
	private String email;
	
	//가입일
	private Date date;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}
	
	
}

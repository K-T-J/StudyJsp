package web.jsp04.test;

//캡슐화로 작업			//생략가능 자동생성
public class Bean implements java.io.Serializable{
	
	// 변수 
	private String id;
	private String pw;
	
	public Bean () {}//생략 가능 자동생성으로 실행
	
	public void setId(String id) {
		this.id = id;
	}
			
	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getId() {
		return id;
	}
	
	public String getPw() {
		return pw;
	}
	
	
	
	
	
	
	
	
	
	
	

}

package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;

// DB전담 클래스는 DB에 접근(access)해서  CRUD처리를 하는 클래스
// DB Access Object(DAO)
public class MemberDAO {
	Connection con; // 선언, 타입 변수명;
	// 선언의 위치가 변수를 사용할 수 있는 범위를 결정하기 때문
	// 전역 변수, 글로벌 변수
	// 전역변수는 자동초기화(null)
	
	// 이 클래스를 가지고 new로 객체생성시, 꼭 해주어야하는 작업이 있으면 
	// 클래스 이름과 똑같이 생긴 메서드를 만들어주면 된다.
	// new로 객체생성시 자동호출 해주는 메서드: 생성자 메서드, 생성자, constructor
	public MemberDAO() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("1. 커넥터 설정 ok");
		
		// 지역 변수, 로컬 변수, 자동초기화X
		String url = "jdbc:mysql://localhost:3366/spring";
		con = DriverManager.getConnection(url, "root", "1234");
		System.out.println("2. mysql spring db 연결 ok");
	}
	
	public void create(MemberVO bag) throws Exception {
		String sql = "insert into member values (?, ?, ?, ?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, bag.getId());
		ps.setString(2, bag.getPw());
		ps.setString(3, bag.getName());
		ps.setString(4, bag.getTel());
		System.out.println("3. sql문 객체로 생성 ok");
		
		ps.executeUpdate();
		System.out.println("4. sql문 mysql로 전송 ok");
	}
	public MemberVO read(String id) throws Exception {
		String sql = "select * from member where id = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, id);
		System.out.println("3. sql문 객체로 생성 ok");
		
		ResultSet result = ps.executeQuery();
		System.out.println("4. sql문 mysql로 전송 ok");
		//System.out.println("검색결과는 " + result.next());
		MemberVO bag = new MemberVO();
		if (result.next()) {
			//검색결과가 있으면(true) => 각 컬럼에 해당하는 값을 하나씩 꺼내와라.
			String id2 = result.getString(1);
			String pw = result.getString(2);
			String name = result.getString(3);
			String tel = result.getString(4);
			System.out.println(id2);
			System.out.println(pw);
			System.out.println(name);
			System.out.println(tel);
			bag.setId(id2);
			bag.setPw(pw);
			bag.setName(name);
			bag.setTel(tel);
		} else {
			System.out.println("검색 결과 없음.");
		}
		return bag;
	}
	public void list() {
		
	}
	public void update(String tel, String id) throws Exception {
		String sql = "update member set tel = ? where id = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, tel);
		ps.setString(2, id);
		System.out.println("3. sql문 객체로 생성 ok");
		
		ps.executeUpdate();
		System.out.println("4. sql문 mysql로 전송 ok");
	}
	public void delete(String id) throws Exception {
		String sql = "delete from member where id = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, id);
		System.out.println("3. sql문 객체로 생성 ok");
		
		ps.executeUpdate();
		System.out.println("4. sql문 mysql로 전송 ok");
	}
}

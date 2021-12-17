package com.bsj.delight.mybatis;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.bsj.delight.member.model.dto.Member;


// @WebAppConfiguration
// 		가상으로 만들어지는 web.xml을 사용해 테스트환경을 구축
// @RunWith(SpringJUnit4ClassRunner.class)
// 		JUnit을 실행할 방법
// 		테스트 때 사용할 가상의 applicationContext를 생성하고 관리
// @ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*-context.xml" })
// 		가상의 applicationContext를 생성할 때 사용할 spring bean 설정파일의 위치를 지정

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*-context.xml" })
public class MybatisTest {
	
	// Junit annotation
	// @Before : 테스트 전에 실행될 메서드
	// @Test : 테스트 메서드
	// @After : 테스트 이후에 실행될 메서드
	
	// SqlSessionTemplate의 주요 메서드
	// selectOne : 단일행 select문 실행
	// selectList : 다중행 select문 실행
	// insert : 메서드의 결과값은 쿼리에 의해 영향을 받은 row 수
	// update : 메서드의 결과값은 쿼리에 의해 영향을 받은 row 수
	// delete : 메서드의 결과값은 쿼리에 의해 영향을 받은 row 수
	// ** procedure 호출은 dml 쿼리메서드 중에서 잘 부합하는 것을 선택
	
	@Autowired
	private SqlSessionTemplate session; // Mybatis를 사용할 것이므로
	private final String NAMESPACE = "com.bsj.delight.mybatis.MybatisMapper."; //변수로 미리 빼놔서 간단히 입력 가능함
	private String userId = "DEV"; // test에 사용할 userid 선언

	@Test
	public void selectOneTest() {
		session.selectOne(NAMESPACE + "selectPasswordByUserId", userId);
	}
	//userId로 password를 조회하는 쿼리
	
	@Test
	public void selectOneAsDto() {
		Member member = session.selectOne(NAMESPACE + "selectMemberByUserId", userId);
		System.out.println(member);
	}
	
	@Test
	public void insertWithDto() {
		Member member = new Member(); // insert 파라미터가 4개이므로 dto에 담아버리기
		member.setUserId("test2");
		member.setPassword("1234");
		member.setEmail("mybatis@naver.com");
		member.setTell("010-0000-0000");
		session.insert(NAMESPACE + "insertWithDto", member);
	}
	
	
	
	
	
}

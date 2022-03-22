package edu.study.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.study.vo.SarchVO;
import edu.study.vo.TspotVO;

@Repository
public class TspotDAO {
	
	@Autowired  //타입으로 의존 주입
	private SqlSession sqlSession;
	
	private static final String Namespace = "edu.study.mapper.locationMapper" ;//상수값 설정
	
	public List<TspotVO> list(SarchVO vo) throws Exception {
				
		return sqlSession.selectList(Namespace+".listtspot", vo);
	}
	
	
	
	
}

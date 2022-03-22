package team.ture.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import team.ture.vo.SarchVO;
import team.ture.vo.TspotVO;

@Repository
public class TspotDAO {
	
	@Autowired  //타입으로 의존 주입
	private SqlSession sqlSession;
	
	private static final String Namespace = "team.ture.mapper.locationMapper" ;//상수값 설정
	
	public List<TspotVO> list(SarchVO vo) throws Exception {
				
		return sqlSession.selectList(Namespace+".listtspot", vo);
	}
	
	
	
	
}

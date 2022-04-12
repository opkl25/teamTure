package team.ture.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import team.ture.vo.TreplyVO;
@Repository

public class TreplyDAO {
	
	
	@Autowired  
	private SqlSession sqlSession;
	
	private static final String Namespace = "team.ture.mapper.locationMapper" ;//����� ����
	
	public List<TreplyVO> list() throws Exception {
				
		return sqlSession.selectList(Namespace+".listTreply");
	}
}

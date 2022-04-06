package team.ture.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import team.ture.vo.BoardVO;
import team.ture.vo.LocationVO;
import team.ture.vo.SarchVO;
import team.ture.vo.TspotVO;

@Repository
public class TspotDAO {
	
	@Autowired  //Ÿ������ ���� ����
	private SqlSession sqlSession;
	
	private static final String Namespace = "team.ture.mapper.locationMapper" ;//����� ����
	
	public List<TspotVO> list(SarchVO vo) throws Exception {
				
		return sqlSession.selectList(Namespace+".listTspot", vo);
	}

	public TspotVO detail(int tidx) throws Exception{
		return sqlSession.selectOne(Namespace+".detailTspot", tidx);
	}

	public int insert(TspotVO vo) throws Exception{
		return sqlSession.insert(Namespace+".insertTspot",vo);
	}
	
	
	
	
}

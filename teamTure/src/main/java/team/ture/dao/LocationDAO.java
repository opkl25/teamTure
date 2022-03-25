package team.ture.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import team.ture.vo.BoardVO;
import team.ture.vo.LocationVO;
import team.ture.vo.SarchVO;

@Repository
public class LocationDAO {
	
	@Autowired  //타입으로 의존 주입
	private SqlSession sqlSession;
	
	private static final String Namespace = "team.ture.mapper.locationMapper" ;//상수값 설정
	
	public List<LocationVO> list(SarchVO vo) throws Exception {
				
		return sqlSession.selectList(Namespace+".listLocation", vo);
	}
	
	
	
	public LocationVO detail(int lidx) throws Exception{
		return sqlSession.selectOne(Namespace+".detailLocation", lidx);
	}
	
	public int update(LocationVO vo) throws Exception{
		return sqlSession.update(Namespace+".updateLocation",vo);
	}
	
	
}

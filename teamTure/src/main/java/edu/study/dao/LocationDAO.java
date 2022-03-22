package edu.study.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import edu.study.vo.LocationVO;
import edu.study.vo.SarchVO;

@Repository
public class LocationDAO {
	
	@Autowired  //Ÿ������ ���� ����
	private SqlSession sqlSession;
	
	private static final String Namespace = "edu.study.mapper.locationMapper" ;//����� ����
	
	public List<LocationVO> list(SarchVO vo) throws Exception {
				
		return sqlSession.selectList(Namespace+".listLocation", vo);
	}
	
	public LocationVO detail(int lidx) throws Exception{
		return sqlSession.selectOne(Namespace+"detailLocation", lidx);
	}
	
	
	
	
}

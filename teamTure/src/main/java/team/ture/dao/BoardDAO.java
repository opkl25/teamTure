package team.ture.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import team.ture.vo.BoardVO;
import team.ture.vo.SarchVO;

@Repository
public class BoardDAO {
	
	@Autowired  //Ÿ������ ���� ����
	private SqlSession sqlSession;
	
	private static final String Namespace = "team.ture.mapper.boardMapper" ;//����� ����
	
	public List<BoardVO> list(SarchVO vo) throws Exception {
				
		return sqlSession.selectList(Namespace+".listBoard",vo);
	}
	
	public BoardVO detail(int bidx) throws Exception{
		return sqlSession.selectOne(Namespace+".detailBoard",bidx);
	}
	
	public int update(BoardVO vo) throws Exception{
		return sqlSession.update(Namespace+".updateBoard",vo);
	}
	
	public int delete(int bidx) throws Exception{
		return sqlSession.update(Namespace+".deleteBoard",bidx);
	}
	
	public int insert(BoardVO vo) throws Exception{
		return sqlSession.insert(Namespace+".insertBoard",vo);
	}
	
}

package team.ture.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team.ture.dao.BoardDAO;
import team.ture.vo.BoardVO;
import team.ture.vo.SarchVO;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardDAO boardDao;

	@Override
	public List<BoardVO> list(SarchVO vo) throws Exception {
				
		List<BoardVO> list =  boardDao.list(vo);
		
		return list;
	}

	@Override
	public BoardVO detail(int bidx) throws Exception {
		// TODO Auto-generated method stub
		
		return boardDao.detail(bidx);
	}

	@Override
	public int update(BoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		return boardDao.update(vo);
	}

	@Override
	public int delete(int bidx) throws Exception {
		// TODO Auto-generated method stub
		return boardDao.delete(bidx);
	}

	@Override
	public int insert(BoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		return boardDao.insert(vo);
	}
	
	

}

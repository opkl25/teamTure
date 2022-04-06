package team.ture.service;

import java.util.List;

import team.ture.vo.BoardVO;
import team.ture.vo.SarchVO;

public interface BoardService {

	List<BoardVO> list(SarchVO vo) throws Exception;
	BoardVO detail(int bidx) throws Exception;
	int update(BoardVO vo) throws Exception;
	int delete(int bidx) throws Exception;
	int upload(BoardVO map) throws Exception;
	
}

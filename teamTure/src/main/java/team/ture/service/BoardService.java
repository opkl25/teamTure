package team.ture.service;

import java.util.List;

import team.ture.util.PagingVO;
import team.ture.vo.BoardVO;
import team.ture.vo.SarchVO;

public interface BoardService {

	List<BoardVO> list(SarchVO vo) throws Exception;
	BoardVO detail(int bidx) throws Exception;
	int update(BoardVO vo) throws Exception;
	int delete(int bidx) throws Exception;
	int upload(BoardVO map) throws Exception;
	
	
	// 게시물 총 갯수
	public int countBoard();

	// 페이징 처리 게시글 조회
	public List<BoardVO> selectBoard(PagingVO vo);
	
}

package edu.study.service;

import java.util.List;

import edu.study.vo.BoardVO;
import edu.study.vo.SarchVO;

public interface BoardService {

	List<BoardVO> list(SarchVO vo) throws Exception;
	BoardVO detail(int bidx) throws Exception;
	int update(BoardVO vo) throws Exception;
	int delete(int bidx) throws Exception;
	int insert(BoardVO vo) throws Exception;
	
}

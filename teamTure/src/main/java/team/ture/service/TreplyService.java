package team.ture.service;

import java.util.List;

import team.ture.vo.TreplyVO;

public interface TreplyService {
	
	List<TreplyVO> list() throws Exception;
}

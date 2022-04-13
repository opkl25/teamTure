package team.ture.service;

import java.util.HashMap;
import java.util.List;

import team.ture.vo.TreplyVO;

public interface TreplyService {
	
	HashMap<String, Object> getUserCount() throws Exception;
	int insert(TreplyVO vo) throws Exception;
	List<TreplyVO> list() throws Exception;
	
}

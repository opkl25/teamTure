package team.ture.service;

import java.util.List;

import team.ture.vo.SarchVO;
import team.ture.vo.TspotVO;

public interface TspotService {

	List<TspotVO> list(SarchVO vo) throws Exception;
	TspotVO detail(int tidx) throws Exception;
	int insert(TspotVO map) throws Exception;
	int update(TspotVO map) throws Exception;
	int delete(int tidx) throws Exception;
	List<TspotVO> alist() throws Exception;
	
}

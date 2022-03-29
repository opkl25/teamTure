package team.ture.service;

import java.util.List;

import team.ture.vo.SarchVO;
import team.ture.vo.TspotVO;

public interface TspotService {

	List<TspotVO> list(SarchVO vo) throws Exception;
	TspotVO detail(int tidx) throws Exception;
	
}

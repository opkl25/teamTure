package edu.study.service;

import java.util.List;

import edu.study.vo.SarchVO;
import edu.study.vo.TspotVO;

public interface TspotService {

	List<TspotVO> list(SarchVO vo) throws Exception;
	
	
}

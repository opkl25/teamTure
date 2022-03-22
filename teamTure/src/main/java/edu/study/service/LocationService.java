package edu.study.service;

import java.util.List;

import edu.study.vo.LocationVO;
import edu.study.vo.SarchVO;

public interface LocationService {

	List<LocationVO> list(SarchVO vo) throws Exception;
	LocationVO detail(int lidx) throws Exception;
	
	
}

package team.ture.service;

import java.util.List;

import team.ture.vo.LocationVO;
import team.ture.vo.SarchVO;

public interface LocationService {

	List<LocationVO> list(SarchVO vo) throws Exception;
	LocationVO detail(int lidx) throws Exception;
	int update(LocationVO vo) throws Exception;
	
}

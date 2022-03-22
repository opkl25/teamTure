package edu.study.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.study.dao.LocationDAO;
import edu.study.vo.LocationVO;
import edu.study.vo.SarchVO;

@Service
public class LocationServiceImpl implements LocationService {
	
	@Autowired
	private LocationDAO locationDao;

	@Override
	public List<LocationVO> list(SarchVO vo) throws Exception {
				
		List<LocationVO> list =  locationDao.list(vo);
		
		return list;
	}

	@Override
	public LocationVO detail(int lidx) throws Exception {
		// TODO Auto-generated method stub
		
		return locationDao.detail(lidx);
	}
		
	

}

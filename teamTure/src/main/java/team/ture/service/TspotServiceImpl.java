package team.ture.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team.ture.dao.TspotDAO;
import team.ture.vo.SarchVO;
import team.ture.vo.TspotVO;

@Service
public class TspotServiceImpl implements TspotService {
	
	@Autowired
	private TspotDAO tspotDao;

	@Override
	public List<TspotVO> list(SarchVO vo) throws Exception {
				
		List<TspotVO> list =  tspotDao.list(vo);
		
		return list;
	}

	
	@Override
	public TspotVO detail(int tidx) throws Exception {
		// TODO Auto-generated method stub
		
		return tspotDao.detail(tidx);
	}
	
	@Override
	public int insert(TspotVO map) throws Exception {
		// TODO Auto-generated method stub
		return tspotDao.insert(map);
	}
	
	@Override
	public int update(TspotVO map) throws Exception {
		// TODO Auto-generated method stub
		return tspotDao.update(map);
	}
	
	@Override
	public int delete(int tidx) throws Exception {
		// TODO Auto-generated method stub
		return tspotDao.delete(tidx);
	}
	

}

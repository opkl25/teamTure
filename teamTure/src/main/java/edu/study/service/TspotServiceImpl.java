package edu.study.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.study.dao.TspotDAO;
import edu.study.vo.SarchVO;
import edu.study.vo.TspotVO;

@Service
public class TspotServiceImpl implements TspotService {
	
	@Autowired
	private TspotDAO tspotDao;

	@Override
	public List<TspotVO> list(SarchVO vo) throws Exception {
				
		List<TspotVO> list =  tspotDao.list(vo);
		
		return list;
	}

	
	

}

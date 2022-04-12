package team.ture.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team.ture.dao.TreplyDAO;
import team.ture.vo.TreplyVO;

@Service
public class TreplyServiceImpl implements TreplyService {

	@Autowired
	private TreplyDAO treplyDao;
	
	@Override
	public List<TreplyVO> list() throws Exception{
		
		List<TreplyVO> list = treplyDao.list();
		
		return list;
	}
	
}

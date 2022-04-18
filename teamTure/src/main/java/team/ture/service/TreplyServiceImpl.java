package team.ture.service;

import java.util.HashMap;
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
	
	@Override
	public int insert(TreplyVO vo) throws Exception {
		// TODO Auto-generated method stub
		return treplyDao.insert(vo);
	}
	
	@Override
	public HashMap<String, Object> getUserCount() throws Exception{
		
		return treplyDao.getUserCount();
		
	}
	
}

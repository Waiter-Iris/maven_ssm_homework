package cn.zzz.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.zzz.mapper.InfoMapper;
import cn.zzz.po.Info;
import cn.zzz.service.InfoService;

@Service("infoService")
public class InfoServiceImpl implements InfoService{
	@Autowired
	public InfoMapper infoMapper;

	public List<Info> findById(int id) {
		// TODO Auto-generated method stub
		return infoMapper.findById(id);
	}

}

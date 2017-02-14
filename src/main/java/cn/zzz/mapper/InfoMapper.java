package cn.zzz.mapper;

import java.util.List;

import cn.zzz.po.Info;

public interface InfoMapper {
	
	List<Info> findById(int id);
	
    int deleteByPrimaryKey(Integer id);

    int insert(Info record);

    int insertSelective(Info record);

    Info selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Info record);

    int updateByPrimaryKey(Info record);
}
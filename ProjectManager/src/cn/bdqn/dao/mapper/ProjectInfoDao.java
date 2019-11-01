package cn.bdqn.dao.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.bdqn.domain.Projectinfo;

public interface ProjectInfoDao {
	
	public List<Projectinfo> getAll(@Param("statue")Integer statue);
	
	public Integer updateStatues(@Param("statue")Integer statues,@Param("id")Integer id);

}

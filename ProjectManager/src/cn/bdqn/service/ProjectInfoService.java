package cn.bdqn.service;

import java.util.List;

import cn.bdqn.domain.Projectinfo;

public interface ProjectInfoService {
	
	/**
	 * ����ȫ����Ŀ
	 * @return
	 */
	List<Projectinfo> findAll(String statue);
	
	public Integer modifyStatues(String statues,String id);

}

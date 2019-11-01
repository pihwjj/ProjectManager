package cn.bdqn.service.impl;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import cn.bdqn.dao.mapper.ProjectInfoDao;
import cn.bdqn.domain.Projectinfo;
import cn.bdqn.service.ProjectInfoService;

@Service
public class ProjectInfoServiceImpl implements ProjectInfoService {

	@Resource
	private ProjectInfoDao projectInfo;
	
	@Override
	public List<Projectinfo> findAll(String statue) {
		Integer num = null;
		if(Integer.parseInt(statue) != -1){
			num = Integer.parseInt(statue);
		}
		return projectInfo.getAll(num);
	}

	@Override
	public Integer modifyStatues(String statues, String id) {
		Integer statuesNum = Integer.parseInt(statues);
		Integer idNum = Integer.parseInt(id);
		return projectInfo.updateStatues(statuesNum, idNum);
	}
	
}

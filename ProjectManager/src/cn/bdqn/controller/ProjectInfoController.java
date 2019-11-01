package cn.bdqn.controller;

import javax.annotation.Resource;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.bdqn.domain.Projectinfo;
import cn.bdqn.dto.ProjectInfoDto;
import cn.bdqn.service.ProjectInfoService;

@Controller
@RequestMapping("/project")
public class ProjectInfoController {
	
	/**
	 * service 层
	 */
	@Resource
	private ProjectInfoService infoService; 
	
	/**
	 * 显示主页
	 * @param statue
	 * @param model
	 * @return
	 */
	@RequestMapping("/main")
	public String doMain(@RequestParam(defaultValue="-1",required = true) String statue,
							Model model){
		
		model.addAttribute("projects", infoService.findAll(statue));
		return "ProjectInfo";
	}
	
	/**
	 * 审核项目
	 * @param projectInfoDto
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/review",method = RequestMethod.POST)
	public String review(ProjectInfoDto projectInfoDto,
							Model model){
		System.out.println("状态---->"+projectInfoDto.getStatues());
		model.addAttribute("info", projectInfoDto);
		return "review";
	}
	
	
	@RequestMapping("/modify")
	public String modifyStatues(String statue,String id,Model model){
		if(infoService.modifyStatues(statue, id) != 0){
			return "redirect:/project/main";
		}
		return "review";
	}
	
	
	
	
	

}

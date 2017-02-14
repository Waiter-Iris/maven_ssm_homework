package cn.zzz.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.zzz.po.Info;
import cn.zzz.service.InfoService;

@Controller
public class InfoController {
	@Autowired
	public InfoService infoService;

	@RequestMapping("/findById")
	public @ResponseBody
	List<Info> findById(int id) {
		List<Info> infos = infoService.findById(id);
		return infos;
	}

}

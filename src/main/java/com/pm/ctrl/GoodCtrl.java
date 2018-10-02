package com.pm.ctrl;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pm.service.GoodService;
@RequestMapping("/good")
@Controller
public class GoodCtrl {
	@Resource(name="goodService")
	private GoodService goodService;
	@RequestMapping("/list")
	public String list(Model model) {
		model.addAttribute("goods", goodService.listAll());
		return "good/goods";
	}
}

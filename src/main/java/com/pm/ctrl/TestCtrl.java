package com.pm.ctrl;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pm.service.impl.TestServiceImpl;

@Controller
public class TestCtrl {

	@Autowired
	private TestServiceImpl tServiceImpl;


	@RequestMapping("/test")
	public String queryAll(Model model) {

		model.addAttribute("list", tServiceImpl.query());
		return "test";
	}
/*	@RequestMapping("/index")
	public String queryAll(Model model) {

		// model.addAttribute("list", tServiceImpl.query());
		return "index";

	}*/
	//跳转到登录界面
	@RequestMapping("/login")
	public String goLogin(Model model) {

		// model.addAttribute("list", tServiceImpl.query());
		return "login";

	}
	
	//跳转到主页面
	@RequestMapping("/index")
	public String goIndex(Model model) {

		// model.addAttribute("list", tServiceImpl.query());
		return "index";

	}
	@RequestMapping("/index_body")
	public String goIndex_body(Model model) {

		// model.addAttribute("list", tServiceImpl.query());
		return "index_body";

	}
	@RequestMapping("/index_menu")
	public String goIndex_menu(Model model) {

		// model.addAttribute("list", tServiceImpl.query());
		return "index_menu";

	}
	@RequestMapping("/index_head")
	public String goIndex_head(Model model) {

		// model.addAttribute("list", tServiceImpl.query());
		return "index_head";

	}


	// 处理日期
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		dateFormat.setLenient(false);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}

}

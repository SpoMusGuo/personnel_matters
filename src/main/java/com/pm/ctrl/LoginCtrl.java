package com.pm.ctrl;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginCtrl {
		//跳转到登录界面
		@RequestMapping("/login")
		public String goLogin(Model model) {

			return "login";
		}
		//跳转到主页面
		@RequestMapping("/index")
		public String goIndex(Model model) {

			return "index";
		}
		@RequestMapping("/index_body")
		public String goIndex_body(Model model) {

			return "index_body";
		}
		@RequestMapping("/index_menu")
		public String goIndex_menu(Model model) {

			return "index_menu";
		}
		@RequestMapping("/index_head")
		public String goIndex_head(Model model) {

			return "index_head";
		}
		@RequestMapping("/quit")
		public String quit() {
			return "login";
		}

}

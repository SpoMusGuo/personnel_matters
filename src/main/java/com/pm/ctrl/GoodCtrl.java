package com.pm.ctrl;

import javax.annotation.Resource;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pm.model.Good;
import com.pm.model.Pager;
import com.pm.service.GoodService;
@RequestMapping("/good")
@Controller
public class GoodCtrl {
	@Resource(name="goodService")
	private GoodService goodService;
	@RequestMapping("/list/{currentPageindex}")
	public String list(Model model,@PathVariable(value="currentPageindex")Integer currentPageindex) {
		Pager<Good> pager = new Pager<Good>();
//		从前端传来的当前页和每页记录条数
		int pagesize=2;
		if(currentPageindex==null) {
			currentPageindex=1;
		}
		int startindex=(currentPageindex-1)*pagesize;
		int records=goodService.getRecords();
		int pagecount=(int)Math.ceil(records/pagesize);
		pager.setPagesize(pagesize);
		pager.setPageindex(currentPageindex);
		pager.setStartindex(startindex);
		pager.setPagecount(pagecount);
		pager.setRecords(records);
		pager.setDatas(goodService.listPager(pager));
		model.addAttribute("pager", pager);
		return "good/goods";
	}
	@RequestMapping("/addGood")
	public String addGood(Model model) {
		String good_id=goodService.getLastId();
		int num=(Integer.parseInt(good_id.split("WP")[1]))+1;
		if(num>=1000) {
			good_id="WP"+num;
		}else if(num>=100) {
			good_id="WP"+0+num;
		}else if(num>=10) {
			good_id="WP"+0+0+num;
		}
		model.addAttribute("good_id", good_id);
		return "good/addGood";
	}
	

}

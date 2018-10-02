package com.pm.ctrl;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pm.model.Good;
import com.pm.model.Pager;
import com.pm.service.GoodService;
@RequestMapping("/good")
@Controller
public class GoodCtrl {
	@Resource(name="goodService")
	private GoodService goodService;
	@RequestMapping("/list")
	public String list(Model model,Integer currentPageindex) {
		model.addAttribute("goods", goodService.listAll());
		Pager<Good> pager = new Pager<Good>();
//		从前端传来的当前页和每页记录条数
		int pagesize=2;
		if(currentPageindex==null) {
			currentPageindex=1;
		}
		int startindex=(currentPageindex-1)*pagesize;
		int records=goodService.listAll().size();
		int pagecount=(int)Math.ceil(records/pagesize);
		pager.setPagesize(pagesize);
		pager.setPageindex(currentPageindex);
		pager.setStartindex(startindex);
		pager.setPagecount(pagecount);
		pager.setRecords(records);
		model.addAttribute("listpager",goodService.listPager(pager));
		model.addAttribute("pager", pager);
		return "good/goods";
	}
}

package com.pm.ctrl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pm.model.Pager;
import com.pm.model.Train;
import com.pm.service.TrainService;

@Controller(value = "trainCtrl")
public class TrainCtrl {

	@Autowired
	private TrainService trainService;

	@RequestMapping("/index_train")
	public String list(Model model,Integer currentPageindex) {
		Pager<Train> pager = new Pager<Train>();
		// 从前端传来的当前页和每页记录条数
		int pagesize = 5;
		if (currentPageindex == null) {
			currentPageindex = 1;
		}
		int startindex=(currentPageindex-1)*pagesize;
		int records=trainService.getRecords();
		int pagecount=(int)Math.ceil((double)records/pagesize);
		pager.setPagesize(pagesize);
		pager.setPageindex(currentPageindex);
		pager.setStartindex(startindex);
		pager.setPagecount(pagecount);
		pager.setRecords(records);
		pager.setDatas(trainService.listPager(pager));
		model.addAttribute("pager", pager);
		return "train/index_train";
	}

}

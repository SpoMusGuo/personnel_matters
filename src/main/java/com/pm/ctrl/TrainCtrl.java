package com.pm.ctrl;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pm.model.Train;
import com.pm.model.Pager;
import com.pm.service.TrainService;

@RequestMapping("/train")
@Controller
public class TrainCtrl {
	@Resource(name = "trainService")
	private TrainService trainService;

	@RequestMapping("/list/{currentPageindex}")
	public String list(Model model, @PathVariable(value = "currentPageindex") Integer currentPageindex) {
		Pager<Train> pager = new Pager<Train>();
		// 从前端传来的当前页和每页记录条数
		int pagesize = 2;
		if (currentPageindex == null) {
			currentPageindex = 1;
		}
		int startindex = (currentPageindex - 1) * pagesize;
		int records = trainService.getRecords();
		int pagecount = (int) Math.ceil(records / pagesize);
		pager.setPagesize(pagesize);
		pager.setPageindex(currentPageindex);
		pager.setStartindex(startindex);
		pager.setPagecount(pagecount);
		pager.setRecords(records);
		pager.setDatas(trainService.listPager(pager));
		model.addAttribute("pager", pager);
		return "train/trains";
	}
	/*@RequestMapping("/addTrain")
	public String addTrain(Model model) {
		return "train/addTrain";
	}*/
	

}

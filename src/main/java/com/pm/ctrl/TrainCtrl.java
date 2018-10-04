package com.pm.ctrl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pm.model.Train;
import com.pm.model.Paging;
import com.pm.service.TrainService;

@Controller
public class TrainCtrl {
	
	@Autowired
	private TrainService trainservice;

	@RequestMapping("/index_train")
	public String queryTrainList(String pageSize, String currentPage, List<Train> trainsa, Map map) {

		Integer iPageSize;
		Integer iCurrentPage;
		
		if(pageSize != null) {
			iPageSize = Integer.parseInt(pageSize);
		} else {
			iPageSize = 15;
		}
		if(currentPage != null) {
			iCurrentPage = Integer.parseInt(currentPage);
		} else {
			iCurrentPage = 1;
		}
		List<Train> trains = trainservice.listAll();
		
		map.put("TRAINS", trains);
		map.put("PAGING", new Paging(trains.size(), iCurrentPage, iPageSize));
		return "index_train";
	}

}


/*@Controller
public class TrainCtrl {
	@Autowired
	private TrainService trainService;

	@RequestMapping("/index_train")
	public String list(Model model, Integer currentPageindex) {
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
		return "index_train";
	}

	@RequestMapping("/addTrain")
	public String addTrain(Model model) {
		return "index_train";
	}

}*/

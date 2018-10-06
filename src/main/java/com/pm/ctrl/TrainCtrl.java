package com.pm.ctrl;

import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

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
	public String list(Model model, Integer currentPageindex) {
		Pager<Train> pager = new Pager<Train>();
		// 从前端传来的当前页和每页记录条数
		int pagesize = 12;
		if (currentPageindex == null) {
			currentPageindex = 1;
		}
		int startindex = (currentPageindex - 1) * pagesize;
		int records = trainService.getRecords();
		int pagecount = (int) Math.ceil((double) records / pagesize);
		pager.setPagesize(pagesize);
		pager.setPageindex(currentPageindex);
		pager.setStartindex(startindex);
		pager.setPagecount(pagecount);
		pager.setRecords(records);
		pager.setDatas(trainService.listPager(pager));
		model.addAttribute("pager", pager);
		return "train/index_train";
	}

	// 新增
	@RequestMapping("/addTrain")
	public String addTrain(Model model) {
		return "train/addTrain";
	}

	// 插入
	@RequestMapping("/insertTrain")
	public String insertdTrain(Model model, String train_plan_name, String train_sponsoring_dept, String train_course,
			String train_organization, String train_type, String train_form, String train_address, String train_teacher,
			int train_periods, String train_start_time, String train_finish_time, String train_plan_cost,
			int train_join_people, String train_object) {
		DateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
		Date train_start_time_date = null;
		Date train_finish_time_date = null;
		try {
			train_start_time_date = format1.parse(train_start_time);
			train_finish_time_date = format1.parse(train_finish_time);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		BigDecimal train_plan_cost_bigDecimal = new BigDecimal(train_plan_cost);
		
		Train train = new Train();
		train.setTrain_plan_name(train_plan_name);
		train.setTrain_sponsoring_dept(train_sponsoring_dept);
		train.setTrain_course(train_course);
		train.setTrain_organization(train_organization);
		train.setTrain_type(train_type);
		train.setTrain_form(train_form);
		train.setTrain_address(train_address);
		train.setTrain_teacher(train_teacher);
		train.setTrain_periods(train_periods);
		train.setTrain_start_time(train_start_time_date);
		train.setTrain_finish_time(train_finish_time_date);
		train.setTrain_plan_cost(train_plan_cost_bigDecimal);
		train.setTrain_join_people(train_join_people);
		train.setTrain_object(train_object);
		System.out.println(train);
		@SuppressWarnings("unused")
		int result = 0;
		result = trainService.insertTrain(train);
		return "redirect:/index_train";
	}

}

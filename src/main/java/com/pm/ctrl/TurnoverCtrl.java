package com.pm.ctrl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pm.model.Emp;
import com.pm.model.Pager;
import com.pm.model.Transfer;
import com.pm.model.Turnover;
import com.pm.service.TurnoverService;

@Controller
public class TurnoverCtrl {
	@Resource(name="turnoverService")
	private TurnoverService turnoverService;
	
	@RequestMapping("turnover/{pageNum}")
	public String getTransfersByPage(@PathVariable(value="pageNum")int pageNum,ModelMap map){
				Pager pager = new Pager();
				int pageSize = 8;
				int startIndex = (pageNum-1)*pageSize;
				pager.setStartindex(startIndex);
				pager.setPagesize(pageSize);
				List<Turnover> turnover = new ArrayList<Turnover>();
				turnover = turnoverService.getTurnoversByPage(pager);
				map.put("turnover", turnover);
				map.put("turnover_count",turnover.size());
				map.put("turnover_sum", turnoverService.getRecords());
				return "turnover/turnover_list";
			}
	
	@RequestMapping("turnover_add")
	public String getAdd() {
		return "turnover/turnover_add";
	}
	
	@RequestMapping("turnoverToAdd")
	public String setAdd(Turnover turnover) {
		Emp emp = new Emp();
		emp=turnoverService.queryRecords(turnover.getEmp_id());
		Turnover queryTurnover = new Turnover();
		queryTurnover=turnoverService.queryByEmpId(turnover.getEmp_id());
		if(queryTurnover !=null) {
			return "turnover/defeatForExist";
		}else if(emp!=null) {
			int result = turnoverService.insertRecords(turnover);
			int removeEmp = turnoverService.removeEmp(turnover);
			if(removeEmp<=0) {
				return "turnover/defeat";
			}else if(result<=0) {
				return "turnover/defeat";
			}else{
				return "turnover/success";
			}
		}else{
			return "turnover/defeat";
		}
	}
	
	@RequestMapping("modifyTurnover/{taxGrade.turnover_id}")
	public String getModify(@PathVariable(value="taxGrade.turnover_id")int turnoverId,ModelMap map) {
		Turnover turnoverById = new Turnover();
		turnoverById =turnoverService.queryByTurnoverId(turnoverId);
		map.put("turnoverById", turnoverById );
		return "turnover/turnover_modify";
	}
	
	@RequestMapping("turnoverToModify")
	public String setModify(Turnover turnover) {
		int result = turnoverService.updateTurnover(turnover);
		if(result<=0) {
			return "turnover/defeatForModify";
		}
		return "turnover/successForModify";
	}
	
	@RequestMapping("removeTurnover/{taxGrade.turnover_id}")
	public String removeTurnover(@PathVariable(value="taxGrade.turnover_id")int turnoverId,ModelMap map){
		int result = turnoverService.removeRecords(turnoverId);
		Pager pager = new Pager();
		int pageSize = 8;
		int startIndex = (1-1)*pageSize;
		pager.setStartindex(startIndex);
		pager.setPagesize(pageSize);
		List<Turnover> turnover = new ArrayList<Turnover>();
		turnover = turnoverService.getTurnoversByPage(pager);
		map.put("turnover", turnover);
		map.put("turnover_count",turnover.size());
		map.put("turnover_sum", turnoverService.getRecords());
		return "turnover/turnover_list";
	}

}

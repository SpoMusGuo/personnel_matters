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
import com.pm.service.TransferService;


@Controller
public class TransferCtrl {
	@Resource(name="transferService")
	private TransferService transferService;
	
	@RequestMapping("transfer/{pageNum}")
	public String getTransfersByPage(@PathVariable(value="pageNum")int pageNum,ModelMap map){
				Pager pager = new Pager();
				int pageSize = 8;
				int startIndex = (pageNum-1)*pageSize;
				pager.setStartindex(startIndex);
				pager.setPagesize(pageSize);
				List<Transfer> transfer = new ArrayList<Transfer>();
				transfer = transferService.getTransfersByPage(pager);
				map.put("transfer", transfer);
				map.put("transfer_count", transfer.size());
				map.put("transfer_sum", transferService.getRecords());
				return "personnel_mobilization/employee_mobilization";
			}
	
	@RequestMapping("mobilization_add")
	public String getAdd() {
		return "personnel_mobilization/employee_mobilization_add";
	}
	
	@RequestMapping("mobilizationToAdd")
	public String setAdd(Transfer transfer) {
		Emp emp = new Emp();
		emp=transferService.queryRecords(transfer.getEmp_id());
		Transfer queryTransfer = new Transfer();
		queryTransfer = transferService.queryByEmpId(transfer.getEmp_id());
		if(queryTransfer!=null) {
			return "personnel_mobilization/defeatForExist";
		}else if(emp!=null){
			if(emp.getEmpName().equals(transfer.getEmp_name()) && emp.getEmpDepartment().equals(transfer.getOriginal_dept()) &&emp.getEmpJob().equals(transfer.getOriginal_post())) {
				int result = transferService.insertRecords(transfer);
				int end = transferService.updateEmp(transfer);
				if(end<=0) {
					return "personnel_mobilization/defeat";
				}else if(result<=0) {
					return "personnel_mobilization/defeat";
				}else {
					return "personnel_mobilization/success";
				}
			}else {
				return "personnel_mobilization/defeat";
			}
		}else{
			return "personnel_mobilization/defeat";
		}
	}

	@RequestMapping("modifyTransfer/{taxGrade.mobility_id}")
	public String getModify(@PathVariable(value="taxGrade.mobility_id")int mobilityId,ModelMap map) {
		Transfer transferById = new Transfer();
		transferById=transferService.queryByMobilityId(mobilityId);
		map.put("transferById", transferById);
		return "personnel_mobilization/employee_mobilization_modify";
	}
	
	@RequestMapping("mobilizationToModify")
	public String setModify(Transfer transfer) {
		int result =  transferService.updateRecords(transfer);
		int end = transferService.updateEmp(transfer);
		if(end<=0) {
			return "personnel_mobilization/defeatForModify";
		}else if(result<=0) {
			return "personnel_mobilization/defeatForModify";
		}
		return "personnel_mobilization/successForModify";
	}
	
	@RequestMapping("removeTransfer/{taxGrade.mobility_id}")
	public String removeTransfer(@PathVariable(value="taxGrade.mobility_id")int mobilityId,ModelMap map) {
		int result = transferService.removeRecords(mobilityId);
		Pager pager = new Pager();
		int pageSize = 8;
		int startIndex = (1-1)*pageSize;
		pager.setStartindex(startIndex);
		pager.setPagesize(pageSize);
		List<Transfer> transfer = new ArrayList<Transfer>();
		transfer = transferService.getTransfersByPage(pager);
		map.put("transfer", transfer);
		map.put("transfer_count", transfer.size());
		map.put("transfer_sum", transferService.getRecords());
		return "personnel_mobilization/employee_mobilization";
	}
	
}


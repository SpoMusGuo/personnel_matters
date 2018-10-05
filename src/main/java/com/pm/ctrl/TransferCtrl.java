package com.pm.ctrl;


import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.websocket.server.PathParam;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pm.model.Pager;
import com.pm.model.TaxGrade;
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
				System.out.println(transfer.size());
				map.put("transfer_sum", transferService.getRecords());
				return "personnel_mobilization/employee_mobilization";
			}
	
	@RequestMapping("mobilization_add")
	public String getAdd() {
		return "personnel_mobilization/employee_mobilization_add";
	}

	
}

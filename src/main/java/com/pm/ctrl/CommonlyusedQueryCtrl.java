package com.pm.ctrl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pm.model.DrivinglicenseQuery;
import com.pm.model.Good;
import com.pm.model.Pager;

@RequestMapping(value="/driving")
@Controller
public class CommonlyusedQueryCtrl {
	@Resource(name="commonlyusedQueryService")
	private com.pm.service.CommonlyusedQueryService commonlyusedQueryService;
	@RequestMapping("/11/{currentPageindex}")
	public ModelAndView list(ModelAndView mv,@PathVariable(value = "currentPageindex") Integer currentPageindex) {
		Pager<DrivinglicenseQuery> pager = new Pager<DrivinglicenseQuery>();
		// 从前端传来的当前页和每页记录条数
		int pagesize = 5;
		if (currentPageindex == null) {
			currentPageindex = 1;
		}
		int startindex=(currentPageindex-1)*pagesize;
		int records=commonlyusedQueryService.getRecords();
		int pagecount=(int)Math.ceil((double)records/pagesize);
		pager.setPagesize(pagesize);
		pager.setPageindex(currentPageindex);
		pager.setStartindex(startindex);
		pager.setPagecount(pagecount);
		pager.setRecords(records);
		pager.setDatas(commonlyusedQueryService.listPager(pager));
		mv.addObject("pager", pager);
		mv.setViewName("commonlyquery");
		return mv;
	}
}

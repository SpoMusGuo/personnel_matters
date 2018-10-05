package com.pm.ctrl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


import javax.annotation.Resource;

import org.springframework.beans.propertyeditors.CustomDateEditor;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pm.model.Good;
import com.pm.model.Pager;
import com.pm.service.GoodService;

@RequestMapping("/good")
@Controller
public class GoodCtrl {
	@Resource(name = "goodService")
	private GoodService goodService;

	@RequestMapping("/list/{currentPageindex}")
	public String list(Model model, @PathVariable(value = "currentPageindex") Integer currentPageindex) {
		Pager<Good> pager = new Pager<Good>();
		// 从前端传来的当前页和每页记录条数
		int pagesize = 10;
		if (currentPageindex == null) {
			currentPageindex = 1;
		}
		int startindex=(currentPageindex-1)*pagesize;
		int records=goodService.getRecords();
		int pagecount=(int)Math.ceil((double)records/pagesize);
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
		}else {
			good_id="WP"+0+0+0+num;
		}
		model.addAttribute("good_id", good_id);
		return "good/addGood";
	}
	@RequestMapping("/insertGood")
	public String insertdGood(Model model,String good_name,String good_type,double good_price,int good_count,int good_repetory,Date good_register_date,String good_notes){
		String good_id=goodService.getLastId();
		int num=(Integer.parseInt(good_id.split("WP")[1]))+1;
		if(num>=1000) {
			good_id="WP"+num;
		}else if(num>=100) {
			good_id="WP"+0+num;
		}else if(num>=10) {
			good_id="WP"+0+0+num;
		}else {
			good_id="WP"+0+0+0+num;
		}
		Good good=new Good();
		good.setGood_id(good_id);
		good.setGood_name(good_name);
		good.setGood_type(good_type);
		good.setGood_price(good_price);
		good.setGood_count(good_count);
		good.setGood_repetory(good_repetory);
		good.setGood_register_date(good_register_date);
		good.setGood_notes(good_notes);
		System.out.println(good);
		int result=goodService.insertGood(good);
		return "redirect:/good/list/1";
	}
	@RequestMapping("/editGood/{good_id}")
	public String editGood(Model model,@PathVariable(value = "good_id") String good_id) {
		model.addAttribute("good", goodService.get(good_id));
		return "good/editGood";
	}
	@RequestMapping("/updateGood")
	public String updateGood(Model model,Good good) {
		int reslut=goodService.updateGood(good);
		return "redirect:/good/list/1";
	}
	@RequestMapping("/deleteGood/{good_id}")
	public String deleteGood(Model model,@PathVariable(value = "good_id") String good_id) {
		int reslut=goodService.deleteGood(good_id);
		return "redirect:/good/list/1";
	}
	@RequestMapping("/likeGood/{value}/{pageindex}")
	public String likeGood(Model model,@PathVariable(value = "pageindex") int pageindex,@PathVariable(value = "value") String value) {
		List<Good> goodlist=goodService.listLike(value);
		Pager<Good> pager = new Pager<Good>();
		if(goodlist.size()==0) {
			pageindex=1;
			int pagesize =1;
			int startindex=-1;
			int records=0;
			int pagecount=1;
			pager.setPagesize(pagesize);
			pager.setPageindex(pageindex);
			pager.setStartindex(startindex);
			pager.setPagecount(pagecount);
			pager.setRecords(records);
			List<Good> list = new ArrayList<Good>();
			pager.setDatas(list);
			model.addAttribute("value", value);
			model.addAttribute("pager", pager);
			return "good/like";
		}else {
			int pagesize = 10;
			int startindex=(pageindex-1)*pagesize;
			int records=goodlist.size();
			int pagecount=(int)Math.ceil((double)records/pagesize);
			pager.setPagesize(pagesize);
			pager.setPageindex(pageindex);
			pager.setStartindex(startindex);
			pager.setPagecount(pagecount);
			pager.setRecords(records);
			List<Good> list = new ArrayList<Good>();
			for(int i=startindex;i<(pagesize+startindex);i++) {
				if(i>=records) {
					break;
				}
				list.add(goodlist.get(i));
			}
			pager.setDatas(list);
			model.addAttribute("value", value);
			model.addAttribute("pager", pager);
			return "good/like";
		}
	}
	@RequestMapping("/typeGood/{type}/{pageindex}")
	public String typeGood(Model model,@PathVariable(value = "pageindex") int pageindex,@PathVariable(value = "type") String good_type) {
		List<Good> goodlist=goodService.listType(good_type);
		Pager<Good> pager = new Pager<Good>();
		if(goodlist.size()==0) {
			pageindex=1;
			int pagesize =1;
			int startindex=-1;
			int records=0;
			int pagecount=1;
			pager.setPagesize(pagesize);
			pager.setPageindex(pageindex);
			pager.setStartindex(startindex);
			pager.setPagecount(pagecount);
			pager.setRecords(records);
			List<Good> list = new ArrayList<Good>();
			pager.setDatas(list);
			model.addAttribute("value", good_type);
			model.addAttribute("pager", pager);
			return "good/type";
		}else {
			int pagesize = 10;
			int startindex=(pageindex-1)*pagesize;
			int records=goodlist.size();
			int pagecount=(int)Math.ceil((double)records/pagesize);
			pager.setPagesize(pagesize);
			pager.setPageindex(pageindex);
			pager.setStartindex(startindex);
			pager.setPagecount(pagecount);
			pager.setRecords(records);
			List<Good> list = new ArrayList<Good>();
			for(int i=startindex;i<(pagesize+startindex);i++) {
				if(i>=records) {
					break;
				}
				list.add(goodlist.get(i));
			}
			pager.setDatas(list);
			model.addAttribute("value", good_type);
			model.addAttribute("pager", pager);
			return "good/type";
		}
	}
	@InitBinder  
	public void initBinder(WebDataBinder binder) {  
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");  
		dateFormat.setLenient(false);  
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));  
	}

}

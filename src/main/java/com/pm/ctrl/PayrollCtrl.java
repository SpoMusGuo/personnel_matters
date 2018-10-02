package com.pm.ctrl;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PayrollCtrl {
	@RequestMapping("/PersonalIncomeTaxSetting")
	public String registerPersonalIncomeTaxSetting() {
		return "payroll-control/personal_income_taxsetting";
	}
	@RequestMapping("/PieceworkProductSetup")
	public String registerPieceworkProductSetup() {
		return "payroll-control/piecework_product_setup";
	}
}

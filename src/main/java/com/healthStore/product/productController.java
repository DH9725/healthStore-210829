package com.healthStore.product;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@RequestMapping("/product")
@Controller
public class ProductController {

	@RequestMapping("/himssen_upperBody_view")
	public String upperView() {		
		
		return "part/upper";
	}
	
	@RequestMapping("/himssen_lowerBody_view")
	public String lowerView() {		
		
		return "part/lower";
	}
	
	@RequestMapping("/himssen_abdominal_view")
	public String abdominalView() {		
		
		return "part/abdominal";
	}
	
	@RequestMapping("/detail_view")
	public String detailView() {
		
		return "part/detail";
	}
}

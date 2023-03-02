package com.ict.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ict.model.service.EmpService;
import com.ict.model.vo.EmpVO;

@Controller
public class EmpController {
	@Autowired
	private EmpService empService;

	public void setEmpService(EmpService empService) {
		this.empService = empService;
	}

	@RequestMapping("emp_list.do")
	public ModelAndView emp_list() {
		ModelAndView mv = new ModelAndView("emp_list");
		try {
			List<EmpVO> list = empService.getList();
			mv.addObject("list", list);
		} catch (Exception e) {
		}
		return mv;
	}

	@RequestMapping("emp_search.do")
	public ModelAndView emp_search(String department_id) {
		ModelAndView mv = new ModelAndView("emp_dept");
		try {
			List<EmpVO> dlist = empService.search(department_id);
			mv.addObject("dlist", dlist);
		} catch (Exception e) {
		}
		return mv;
	}

	@RequestMapping("emp_dynamic_search.do")
	public ModelAndView emp_dynamic_search(@ModelAttribute("idx") String idx, String keyword) {
		ModelAndView mv = new ModelAndView("emp_dynamic");
		try {
			List<EmpVO> dylist = empService.search(idx, keyword);
			mv.addObject("dylist", dylist);
		} catch (Exception e) {
		}
		return mv;
	}
}

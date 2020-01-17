package com.bob1.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bob1.dao.CafeDao;
import com.bob1.dao.EvtDao;
import com.bob1.vo.CafeVo;
import com.bob1.vo.EvtVo;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class indexController {
	/*
	 * @Autowired private CafeDao cafedao; public void setCafedao(CafeDao cafedao) {
	 * this.cafedao = cafedao; }
	 */
	int evt_no;
	@Autowired
	private EvtDao evtdao;
	public void setEvtdao(EvtDao evtdao) {
		this.evtdao = evtdao;
	}
	
//
		//성빈
	
	/*
	 * @RequestMapping("/cafeInsert4.do") public void cafeInsert4() {
	 * 
	 * }
	 */

	@RequestMapping("/seatMap.do")
	public void seatMap() {
		
	}
	
	@RequestMapping("/indextest2.do")
	public void indextest() {
		
	}
	
	@RequestMapping("/blank_page")
	public void blank_page() {
		
	}
	
	@RequestMapping("/cafeList.do")
	public void blank0() {
		
	}
	
	@RequestMapping("/cafeDetail.do")
	public void cafeDetail() {
		
	}
	
	@RequestMapping("/blank1.do")
	public void blank1() {
		
	}
//
	
	
	
	@RequestMapping("/indextest.do")
	public void test1() {
		
	}

	/*
	 * @RequestMapping("/getEvt.do") public void test2() {
	 * 
	 * }
	 */
	@RequestMapping("/insertCafe.do")
	public void test3() {
		
	}
	@RequestMapping("/listEvt.do")
	public void test4() {
		
	}
	@RequestMapping("/insertLicenseNumber.do")
	public void test5() {
		
	}
	@RequestMapping("/custMyPageView.do")
	public void test6() {	
		
	}
	@RequestMapping("/custMyPageView2.do")
	public void test7() {	
		
	}
	@RequestMapping("/custMyPage.do")
	public void test8() {	
		
	}
	
	
	
	//[이벤트] 이벤트 목록
	@ResponseBody
	@RequestMapping("/listEvt")
	public String listEvt() {
		String re = null;
		try {
			ObjectMapper mapper = new ObjectMapper();
			re = mapper.writeValueAsString(evtdao.listEvt());
		}catch (Exception e) {
			e.printStackTrace();
		}
		return re;
	}
	//----------------------------------------
	//[이벤트] 이벤트 상세	
	@RequestMapping("/getEvt.do")
	public ModelAndView getEvt(int evt_no) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("e", evtdao.getEvt(evt_no));
		return mav;
	}
	

}

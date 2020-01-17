package com.bit.std_1st.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.bit.std_1st.dao.MPDao;
import com.bit.std_1st.vo.LoginVo;
import com.fasterxml.jackson.databind.ObjectMapper;

@SessionAttributes("loginVo")
@Controller
public class MPController {
	@Autowired
	private MPDao mp_dao;
	public void setMp_dao(MPDao mp_dao) {
		this.mp_dao = mp_dao;
	}


	@ModelAttribute("loginVo")
	public LoginVo initLoginVo() {
		return null;
	}

	
	//---------------------------------------------------------------
	@RequestMapping("/custMyPage")
	   public void custMyPage() {}
	
	//----------------스투더 페이지---------------------------------------
	@ResponseBody
	@RequestMapping("/allStd")
	public String allStd(int cust_no) {
		String str = "";
		try {
			ObjectMapper mapper = new ObjectMapper();
			str = mapper.writeValueAsString(mp_dao.allStd(cust_no));

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return str;
	}

	@ResponseBody
	@RequestMapping("/ingStd")
	public String ingStd(int cust_no) {
		String str = "";
		try {
			ObjectMapper mapper = new ObjectMapper();
			str = mapper.writeValueAsString(mp_dao.ingStd(cust_no));

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return str;
	}

	@ResponseBody
	@RequestMapping("/endStd")
	public String endStd(int cust_no) {
		String str = "";
		try {
			ObjectMapper mapper = new ObjectMapper();
			str = mapper.writeValueAsString(mp_dao.endStd(cust_no));

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return str;
	}

	@ResponseBody
	@RequestMapping("/myStd")
	public String myStd(int cust_no) {
		String str = "";
		try {
			ObjectMapper mapper = new ObjectMapper();
			str = mapper.writeValueAsString(mp_dao.myStd(cust_no));

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return str;
	}

	@ResponseBody
	@RequestMapping("/watingStd")
	public String watingStd(int cust_no) {
		String str = "";
		try {
			ObjectMapper mapper = new ObjectMapper();
			str = mapper.writeValueAsString(mp_dao.watingStd(cust_no));

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return str;
	}
	
	@ResponseBody
	@RequestMapping("/allStdCnt")
	public String allStdCnt(int cust_no) {
		String str = "";
		try {
			ObjectMapper mapper = new ObjectMapper();
			str = mapper.writeValueAsString(mp_dao.allStdCnt(cust_no));

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return str;
	}
	
	@ResponseBody
	@RequestMapping("/ingStdCnt")
	public String ingStdCnt(int cust_no) {
		String str = "";
		try {
			ObjectMapper mapper = new ObjectMapper();
			str = mapper.writeValueAsString(mp_dao.ingStdCnt(cust_no));

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return str;
	}
	
	@ResponseBody
	@RequestMapping("/endStdCnt")
	public String endStdCnt(int cust_no) {
		String str = "";
		try {
			ObjectMapper mapper = new ObjectMapper();
			str = mapper.writeValueAsString(mp_dao.endStdCnt(cust_no));

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return str;
	}
	
	@ResponseBody
	@RequestMapping("/watingStdCnt")
	public String watingStdCnt(int cust_no) {
		String str = "";
		try {
			ObjectMapper mapper = new ObjectMapper();
			str = mapper.writeValueAsString(mp_dao.watingStdCnt(cust_no));

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return str;
	}
	
//	@ResponseBody
//	@RequestMapping("/myStdCnt")
//	public String myStdCnt() {
//		int founder_no = 1;
//		String str = "";
//		try {
//			ObjectMapper mapper = new ObjectMapper();
//			str = mapper.writeValueAsString(mp_dao.myStdCnt(founder_no));
//
//		} catch (Exception e) {
//			System.out.println(e.getMessage());
//		}
//		return str;
//	}

	//----------------스투더 페이지---------------------------------------
	
	//----------------카페 페이지---------------------------------------
	// [개인마이페이지_카페] 전체목록 수
		@ResponseBody
		@RequestMapping("/cnt_all_mypage")
		public String cnt_all_mypage(int cust_no) {
			String re = null;		
			try {
				ObjectMapper mapper = new ObjectMapper();
				re = mapper.writeValueAsString(mp_dao.cnt_all_mypage(cust_no));
				System.out.println("전체목록 수:"+re);
			} catch (Exception e) {
				e.printStackTrace();
			}
			System.out.println(re);
			return re;
		}

		// 전체목록
		@ResponseBody
		@RequestMapping("/all_mypage")
		public String all_mypage(int cust_no) {
			String re = null;
			try {
				ObjectMapper mapper = new ObjectMapper();
				re = mapper.writeValueAsString(mp_dao.all_mypage(cust_no));
			} catch (Exception e) {
				e.printStackTrace();
			}
			return re;
		}

		// [개인마이페이지_카페] 예약후 이용전 목록 수
		@ResponseBody
		@RequestMapping("/cnt_reserved_mypage")
		public String cnt_reserved_mypage(int cust_no) {
			String re = null;
			try {
				ObjectMapper mapper = new ObjectMapper();
				re = mapper.writeValueAsString(mp_dao.cnt_reserved_mypage(cust_no));
				System.out.println("예약목록 수:"+re);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return re;
		}

		// 예약목록
		@ResponseBody
		@RequestMapping("/reserved_mypage")
		public String reserved_mypage(int cust_no) {
			String re = null;
			try {
				ObjectMapper mapper = new ObjectMapper();
				re = mapper.writeValueAsString(mp_dao.reserved_mypage(cust_no));
				System.out.println("에약목록:" + re);
			} catch (Exception e) {
				e.printStackTrace();
			}

			return re;
		}

		// [개인마이페이지_카페] 예약후 기간만료 목록 수
		@ResponseBody
		@RequestMapping("/cnt_used_mypage")
		public String cnt_used_mypage(int cust_no) {
			String re = null;
			
			try {
				ObjectMapper mapper = new ObjectMapper();
				re = mapper.writeValueAsString(mp_dao.cnt_used_mypage(cust_no));
			} catch (Exception e) {
				e.printStackTrace();
			}
			return re;
		}

		// 만료목록
		@ResponseBody
		@RequestMapping("/used_mypage")
		public String used_mypage(int cust_no) {
			String re = null;		
			try {
				ObjectMapper mapper = new ObjectMapper();
				re = mapper.writeValueAsString(mp_dao.used_mypage(cust_no));
			} catch (Exception e) {
				e.printStackTrace();
			}

			return re;
		}
		// [개인마이페이지_카페] 개인이용권 목록 수
		@ResponseBody
		@RequestMapping("/cnt_pass_mypage")
		public String cnt_pass_mypage(int cust_no) {
			String re = null;			
			try {
				ObjectMapper mapper = new ObjectMapper();
				re = mapper.writeValueAsString(mp_dao.cnt_pass_mypage(cust_no));
				System.out.println("controller's re at cnt_pass:"+re);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return re;
		}
		
		// 만료목록
		@ResponseBody
		@RequestMapping("/pass_mypage")
		public String pass_mypage(int cust_no) {
			String re = null;		
			try {
				ObjectMapper mapper = new ObjectMapper();
				re = mapper.writeValueAsString(mp_dao.pass_mypage(cust_no));
				System.out.println("controller's re at list of pass:"+re);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return re;
		}
		//----------------카페 페이지---------------------------------------
}

package com.bit.std_1st.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.bit.std_1st.dao.CafeDao;
import com.bit.std_1st.vo.CafeVo;
import com.bit.std_1st.vo.Cafe_Chkbox_Vo;
import com.bit.std_1st.vo.Cafe_Img_Vo;
import com.bit.std_1st.vo.PassVo;
import com.bit.std_1st.vo.RoomVo;
import com.bit.std_1st.vo.Room_Time_Vo;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class CafeController {

	String main_img = "";
	int cafe_no = 0;// 지워 - 세션에서 받아올거양
	static ArrayList<String> FnameList = new ArrayList<String>();
	String[] checked;
	static ArrayList<Integer> room_no_list = new ArrayList<Integer>();
	// ---------------------------------------------------------------------------------
	@Autowired
	private CafeDao cafedao;

	public void setCafedao(CafeDao cafedao) {
		this.cafedao = cafedao;
	}

	// ---------------------------------------------------------------------------------
	// [CAFE]
	// [카페등록] 체크박스 내용 받아오기
	@ResponseBody
	@RequestMapping("/getCheckboxes")
	public void getCheckboxes(String data) {
		checked = data.split(" ");
	}

	// [카페등록] 파일업로드
	@ResponseBody
	@RequestMapping(value = "/upload.do", method = RequestMethod.POST)
	public String requestupload2(MultipartHttpServletRequest mtfRequest) {
		// FnameList.clear(); 오류남

		List<MultipartFile> fileList = mtfRequest.getFiles("file");
		String src = mtfRequest.getParameter("src");
		System.out.println("src value : " + src);
		System.out.println("fileList:" + fileList);

		String path = "/data/";

		for (MultipartFile mf : fileList) {
			String originFileName = mf.getOriginalFilename(); // 원본 파일 명
			long fileSize = mf.getSize(); // 파일 사이즈
			String real = mtfRequest.getRealPath(path);

			System.out.println("originFileName : " + originFileName);
			System.out.println("fileSize : " + fileSize);
			System.out.println("real : " + real);

			String safeFile = real + System.currentTimeMillis() + originFileName;
			String fname = safeFile;
			fname = fname.substring(real.length());
			FnameList.add(fname);
			System.out.println("fname : " + fname);
			System.out.println("safeFile" + safeFile);
			try {
				mf.transferTo(new File(safeFile));
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

		String firstIMG = FnameList.get(0); // == main_img

		String SecondIMG = FnameList.get(1);
		String ThirdIMG = FnameList.get(2);
		String FourthIMG = FnameList.get(3);

		System.out.println("첫번쨰 이미지 : " + firstIMG);
		System.out.println("--------------------------");
		System.out.println("두번쨰 이미지 : " + SecondIMG);
		System.out.println("세번쨰 이미지 : " + ThirdIMG);
		System.out.println("네번쨰 이미지 : " + FourthIMG);

		System.out.println(FnameList);
		return "redirect:/requestupload2";
	}

	@ResponseBody
	@RequestMapping(value = "/insertCafe", method = RequestMethod.GET)
	public String insertCafe(CafeVo c) {
		return "insertCafe";
	}

	@ResponseBody
	@RequestMapping(value = "/insertCafe", method = RequestMethod.POST)
	public String insertCafeSubmit(CafeVo c, HttpSession session) {
		String re = "";

		System.out.println("vo세팅 전:" + c.toString());
		// null값인 애들
		// cafe_no, main_img

		cafe_no = cafedao.getNextNo_cafe();
		c.setCafe_no(cafe_no);
		c.setMain_img(FnameList.get(0));
		System.out.println("vo세팅 후:" + c.toString());

		try {
			ObjectMapper mapper = new ObjectMapper();
			re = mapper.writeValueAsString(cafedao.insertCafe(c));
			System.out.println("rere 전:" + re);

			if (!(re.equals("-1"))) {
				re = cafe_no + "";
				// -------------------------------------------
				session.setAttribute("cafe_no", cafe_no);
				// -------------------------------------------
			} else {
				re = "insertCafe";
			}
			System.out.println("rere 후:" + re);
			System.out.println("insertCafe 완료!");
		} catch (Exception e) {
			e.printStackTrace();
		}

		return re;
	}

	// [CAFE_CHKBOX]
	@ResponseBody
	@RequestMapping("/insert_cafe_chkbox")
	public String insert_cafe_chkbox(HttpServletRequest request) {
		String re = null;
		cafe_no = (int) request.getSession().getAttribute("cafe_no");
		try {

			for (int i = 0; i < checked.length; i++) {
				Cafe_Chkbox_Vo ch = new Cafe_Chkbox_Vo();

				ch.setCafe_chkbox_no(cafedao.getNextNo_cafe_chkbox());
				ch.setCafe_chkbox_name(checked[i]);
				ch.setCafe_no(cafe_no);

				ObjectMapper mapper = new ObjectMapper();
				re = mapper.writeValueAsString(cafedao.insert_cafe_chkbox(ch));
				System.out.println("chkboxVO: "+ch);

			}
			System.out.println("insert_cafe_chkbox 완료!");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return re;
	}

	// [CAFE_IMG]
	@ResponseBody
	@RequestMapping("/insert_cafe_img")
	public String insert_cafe_img(HttpServletRequest request) {
		cafe_no = (int) request.getSession().getAttribute("cafe_no");
		String re = null;
		try {
			for (int j = 1; j <= 3; j++) {
				Cafe_Img_Vo i = new Cafe_Img_Vo();

				i.setCafe_img_no(cafedao.getNextNo_cafe_img());
				i.setCafe_img_name(FnameList.get(j));
				i.setCafe_no(cafe_no);
				
				System.out.println("imgVO: "+i);
				ObjectMapper mapper = new ObjectMapper();
				re = mapper.writeValueAsString(cafedao.insert_cafe_img(i));
			}
			System.out.println("insert_cafe_img 완료!");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return re;
	}

	// [CAFE_PASS]
	@ResponseBody
	@RequestMapping(value = "/insert_pass", method = RequestMethod.POST)
	public String insert_pass(String[] pass_content, int[] price, HttpServletRequest request) {
		cafe_no = (int) request.getSession().getAttribute("cafe_no");
		String re = null;

		try {
			for (int i = 0; i < pass_content.length; i++) {
				PassVo p = new PassVo();

				p.setPass_no(cafedao.getNextNo_pass());
				p.setPass_content(pass_content[i]);
				p.setPrice(price[i]);
				p.setCafe_no(cafe_no);

				System.out.println("passVO: "+p);
				ObjectMapper mapper = new ObjectMapper();
				re = mapper.writeValueAsString(cafedao.insert_pass(p));				
			}
			System.out.println("insert_pass 완료!");
		} catch (Exception e) {
			e.printStackTrace();
		}

		return re;
	}

//	[CAFE_ROOM]
	@ResponseBody
	@RequestMapping(value = "/insert_room", method = RequestMethod.POST)
	public int insert_room(String[] room_name, HttpServletRequest request) {
		cafe_no = (int) request.getSession().getAttribute("cafe_no");
		int re = -1;
		try {

			for (int i = 0; i < room_name.length; i++) {
				RoomVo r = new RoomVo();
				int room_no = cafedao.getNextNo_room();
				r.setRoom_no(room_no);
				r.setRoom_name(room_name[i]);
				r.setCafe_no(cafe_no);

				System.out.println("roomVO: "+r);
				ObjectMapper mapper = new ObjectMapper();
				re = Integer.parseInt(mapper.writeValueAsString(cafedao.insert_room(r)));
				if (re != -1) {
					re = room_no;
					room_no_list.add(room_no);

				}
			}
			System.out.println("insert_room 완료!");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return re;
	}

	// [CAFE_ROOM_TIME]
	@ResponseBody
	@RequestMapping(value = "/insert_room_time", method = RequestMethod.POST)
	public int insert_room_time(int[] start_time, int[] end_time, int[] time_price) {

		int re = -1;
		try {

			for (int i = 0; i < start_time.length; i++) {
				Room_Time_Vo rt = new Room_Time_Vo();

				rt.setTime_no(cafedao.getNextNo_room_time());
				rt.setStart_time(start_time[i]);
				rt.setEnd_time(end_time[i]);
				rt.setTime_price(time_price[i]);
				rt.setRoom_no(room_no_list.get(i));

				System.out.println("rtVO: "+rt);
				ObjectMapper mapper = new ObjectMapper();
				re = Integer.parseInt(mapper.writeValueAsString(cafedao.insert_room_time(rt)));

			}
			System.out.println("insert_room_time 완료!");
			room_no_list.clear();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return re;
	}

	@RequestMapping("/index.do")
	public void index() {

	}

	@RequestMapping("/mypageCafe.do")
	public void mypageCafe() {

	}

	@RequestMapping("/insertLicenseNumber.do")
	public void insertLicenseNumber() {

	}

	@RequestMapping("/insertLicenseNumber2.do")
	public void insertLicenseNumber2() {

	}

	@RequestMapping("/insertLicenseNumber2_1.do")
	public void insertLicenseNumber2_1() {

	}

	@RequestMapping("/listEvt.do")
	public void listEvt() {

	}

	@RequestMapping("/getEvt.do")
	public void getEvt() {

	}

	@RequestMapping("/cafeInsert3.do")
	public void cafeInsert3() {

	}

	@RequestMapping("/dz_test.do")
	public void dz_test() {

	}

	@RequestMapping("/jw_test.do")
	public void jw_test() {

	}

	@RequestMapping("/sa_test.do")
	public void sa_test() {

	}

}

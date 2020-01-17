package com.bit.std_1st.db;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.bit.std_1st.vo.MPCafePassVo;
import com.bit.std_1st.vo.MPCafeVo;
import com.bit.std_1st.vo.StdVo;


public class MPManager {
	private static SqlSessionFactory factory;

	static {
		try {
			Reader reader = Resources.getResourceAsReader("com/bit/std_1st/db/dbConfig.xml");
			factory = new SqlSessionFactoryBuilder().build(reader);
			reader.close();
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}
	//----------------스투더 페이지---------------------------------------
	
	public static List<StdVo> allStd(int cust_no) {
		// TODO Auto-generated method stub
//		System.out.println("selectMyStd 매니저인1");
		List<StdVo> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("mypage.allStd", cust_no);
//		System.out.println("selectMyStd 매니저인2");
		session.close();
		return list;
	}
	
	public static List<StdVo> ingStd(int cust_no){
//		System.out.println("ingStd 매니저인1");
		List<StdVo> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("mypage.ingStd", cust_no);
//		System.out.println("ingStd 매니저인2");
		session.close();
		return list;
	}
	
	public static List<StdVo> endStd(int cust_no){
//		System.out.println("endStd 매니저인1");
		List<StdVo> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("mypage.endStd", cust_no);
//		System.out.println("endStd 매니저인2");
		session.close();
		return list;		
	}
	
	public static List<StdVo> myStd(int founder_no){
//		System.out.println("myStd 매니저인1");
		List<StdVo> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("mypage.myStd", founder_no);
//		System.out.println("myStd 매니저인2");
		session.close();
		return list;		
	}
	
	public static List<StdVo> watingStd(int cust_no){
//		System.out.println("watingStd 매니저인1");
		List<StdVo> list = null;
		SqlSession session = factory.openSession();
		list = session.selectList("mypage.watingStd", cust_no);
//		System.out.println("watingStd 매니저인2");
		session.close();
		return list;		
	}
	
	public static int allStdCnt(int cust_no) {
		int re = -1;
		SqlSession session = factory.openSession();
		re = session.selectOne("mypage.allStdCnt", cust_no);
		session.close();
		return re;
	}

	public static int ingStdCnt(int cust_no) {
		int re = -1;
		SqlSession session = factory.openSession();
		re = session.selectOne("mypage.ingStdCnt", cust_no);
		session.close();
		return re;
	}
	
	public static int endStdCnt(int cust_no) {
		int re = -1;
		SqlSession session = factory.openSession();
		re = session.selectOne("mypage.endStdCnt", cust_no);
		session.close();
		return re;
	}
	
	public static int watingStdCnt(int cust_no) {
		int re = -1;
		SqlSession session = factory.openSession();
		re = session.selectOne("mypage.watingStdCnt", cust_no);
		session.close();
		return re;
	}
	
//	public static int myStdCnt(int founder_no) {
//		int re = -1;
//		SqlSession session = factory.openSession();
//		re = session.selectOne("mypage.myStdCnt", founder_no);
//		session.close();
//		return re;
//	}
	
	//----------------스투더 페이지---------------------------------------
	
	//----------------카페 페이지---------------------------------------

	//전체 목록 카운트
	public static int cnt_all_mypage(int cust_no) {
		int re = 0;	
		SqlSession session = factory.openSession();
		re = session.selectOne("mypage.cnt_all_mypage", cust_no);
		session.close();
		return re;
	}
	
	//전체 목록 
	public static List<MPCafeVo> all_mypage(int cust_no){
		List<MPCafeVo> list = null;
		
		SqlSession session = factory.openSession();
		list = session.selectList("mypage.all_mypage", cust_no);
		session.close();
		
		return list;
	}

	//전체 예약 카운트
	public static int cnt_reserved_mypage(int cust_no) {
		int re = 0;		
		SqlSession session = factory.openSession();		
		re = session.selectOne("mypage.cnt_reserved_mypage", cust_no);
		session.close();
		return re;
	}
	//예약 목록 
	public static List<MPCafeVo> reserved_mypage(int cust_no){
		List<MPCafeVo> list = null;
		SqlSession session = factory.openSession();		
		list = session.selectList("mypage.reserved_mypage", cust_no);
		session.close();		
		return list;
	}
	//전체 만료 카운트
	public static int cnt_used_mypage(int cust_no) {
		int re = 0;		
		SqlSession session = factory.openSession();		
		re = session.selectOne("mypage.cnt_used_mypage", cust_no);
		session.close();
		return re;
	}
	//만료된 목록 
		public static List<MPCafeVo> used_mypage(int cust_no){
			List<MPCafeVo> list = null;
			SqlSession session = factory.openSession();		
			list = session.selectList("mypage.used_mypage", cust_no);
			session.close();			
			return list;
		}
	//이용권 카운트
	public static int cnt_pass_mypage(int cust_no) {
		int re = 0;		
		SqlSession session = factory.openSession();		
		re = session.selectOne("mypage.cnt_pass_mypage", cust_no);
		System.out.println("이용권 카운트 :"+re);
		session.close();
		return re;
	}
	//이용권 목록 
	public static List<MPCafePassVo> pass_mypage(int cust_no){
		List<MPCafePassVo> list = null;
		SqlSession session = factory.openSession();		
		list = session.selectList("mypage.pass_mypage", cust_no);
		System.out.println("이용권 목록 :"+list);
		session.close();			
		return list;
	}
	
//	개마페[카페]끝
}

package com.bit.std_1st.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bit.std_1st.db.MPManager;
import com.bit.std_1st.vo.MPCafePassVo;
import com.bit.std_1st.vo.MPCafeVo;
import com.bit.std_1st.vo.StdVo;

@Repository
public class MPDao {
	//----------------스투더 페이지---------------------------------------
	
	public List<StdVo> allStd(int cust_no) {
		// TODO Auto-generated method stub
		return MPManager.allStd(cust_no);
	}
	
	public List<StdVo> ingStd(int cust_no) {
		// TODO Auto-generated method stub
		return MPManager.ingStd(cust_no);
	}
	
	public List<StdVo> endStd(int cust_no) {
		// TODO Auto-generated method stub
		return MPManager.endStd(cust_no);
	}
	
	public List<StdVo> myStd(int founder_no) {
		// TODO Auto-generated method stub
		return MPManager.myStd(founder_no);
	}
	
	public List<StdVo> watingStd(int cust_no) {
		// TODO Auto-generated method stub
		return MPManager.watingStd(cust_no);
	}
	
	public int allStdCnt(int cust_no) {
		return MPManager.allStdCnt(cust_no);
	}
	public int ingStdCnt(int cust_no) {
		return MPManager.ingStdCnt(cust_no);
	}
	public int endStdCnt(int cust_no) {
		return MPManager.endStdCnt(cust_no);
	}
	public int watingStdCnt(int cust_no) {
		return MPManager.watingStdCnt(cust_no);
	}
//	public int myStdCnt(int founder_no) {
//		return MPManager.myStdCnt(founder_no);
//	}
	
	//----------------스투더 페이지---------------------------------------
	
	//----------------카페 페이지---------------------------------------
	// 개마페 전체목록 수
	public int cnt_all_mypage(int cust_no) {
		return MPManager.cnt_all_mypage(cust_no);
	}
	public List<MPCafeVo> all_mypage(int cust_no){
		return MPManager.all_mypage(cust_no);
	}
	// 개마페 예약목록 수
	public int cnt_reserved_mypage(int cust_no) {
		return MPManager.cnt_reserved_mypage(cust_no);
	}
	public List<MPCafeVo> reserved_mypage(int cust_no){
		return MPManager.reserved_mypage(cust_no);
	}
	// 개마페 예약 후 기간만료 목록 수
	public int cnt_used_mypage(int cust_no) {
		return MPManager.cnt_used_mypage(cust_no);
	}
	public List<MPCafeVo> used_mypage(int cust_no){
		return MPManager.used_mypage(cust_no);
	}
	// 개마페 이용권 목록 수
	public int cnt_pass_mypage(int cust_no) {
		return MPManager.cnt_pass_mypage(cust_no);
	}
	public List<MPCafePassVo> pass_mypage(int cust_no){
		return MPManager.pass_mypage(cust_no);
	}
//	개마페[카페] 끝
}

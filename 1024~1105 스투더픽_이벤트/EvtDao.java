package com.bob1.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bob1.db.DBManager;
import com.bob1.vo.EvtVo;

@Repository
public class EvtDao {

	public List<EvtVo> listEvt(){
		return DBManager.listEvt();
	}

	public EvtVo getEvt(int evt_no) {
		// TODO Auto-generated method stub
		return DBManager.getEvt(evt_no);
	}

	
}

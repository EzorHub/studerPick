package com.bob1.db;

import java.io.Reader;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.bob1.vo.EvtVo;

public class DBManager {

	private static SqlSessionFactory factory;
	static {
		try {
			Reader reader
			= Resources.getResourceAsReader("com/bob1/db/dbConfig.xml");
			factory = new SqlSessionFactoryBuilder().build(reader);
			reader.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	//-------------------------------------------
	public static SqlSession session() {
		SqlSession session = null;
		session = factory.openSession(true);
		return session;
	}
	//-------------------------------------------
	
	public static List<EvtVo> listEvt(){
		List<EvtVo> list = null;
		list = session().selectList("cs.listEvt");
		session().close();
		return list;
	}

	public static EvtVo getEvt(int evt_no) {
		// TODO Auto-generated method stub
		EvtVo e = null;
		HashMap map = new HashMap();
		map.put("evt_no", evt_no);
		e = session().selectOne("cs.getEvt",map);
		System.out.println("e: "+e);
		session().close();
		return e;
	}
	
}

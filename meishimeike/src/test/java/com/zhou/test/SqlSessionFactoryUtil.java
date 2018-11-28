package com.zhou.test;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


/**
 * 
 * @author Mr_zhou
 * 2018��11��21�� ����10:11:33
 * TODO 
 * 		MyBatis ���Թ���
 * 		getOpenSession ���SqlSession
 * 		getTestMapper ����dao�ӿڣ�����daoʵ����
 */
public class SqlSessionFactoryUtil {
	
	private static SqlSessionFactory sqlSessionFactory;
	
	
	static {
		try {
			InputStream inputStream = Resources.getResourceAsStream("mybatis_config_Test.xml");
			 sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	
	
	public static SqlSession getOpenSession() {
		SqlSession session=null;
        try {
            session = sqlSessionFactory.openSession(true);
        } catch (Exception e) {
			System.out.println(e.getMessage());
		}
        return session;
	}
	
	/**
	 * 
	 * @fun-name getTestMapper
	 * @return-type T
	 * @author Mr_zhou
	 * @date 2018��11��21�� ����10:03:04
	 * @param type
	 * @return
	 * TODO !!! ��Ԫ����ר�÷���������dao�ӿڣ�����ʵ����
	 */
	public static <T> T getTestMapper(Class<T> type) {
		return getOpenSession().getMapper(type);
	}
	
}

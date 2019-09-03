package kr.co.sist.football.gamelist.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.sist.football.common.model.dto.GameInfo;
import mybatis.config.MybatisConnector;

@Repository
public class GameRoomDao {
	public MybatisConnector mybatisconnector;
	
	private final String namespace = "mybatis.mappers.GamelistMapper.";

	@Autowired
	private GameRoomDao(MybatisConnector mybatisconnector) {
		this.mybatisconnector = mybatisconnector;
	}
	
	
	public int getCreateGame(GameInfo gameInfo) {
		SqlSession sqlSession = mybatisconnector.sqlSession();
		try { 
			return sqlSession.insert(namespace + "insertGameRoom", gameInfo);
		} finally {
			sqlSession.close();
		}
	}
}
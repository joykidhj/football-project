package kr.co.sist.football.teampage;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import org.springframework.context.support.GenericXmlApplicationContext;

import kr.co.sist.football.common.model.dto.GameInfo;
import kr.co.sist.football.gamelist.model.dao.GameRoomDao;
import kr.co.sist.football.teampage.model.dto.TeampageDTO;
import mybatis.config.MybatisConnector;

public class MybatisTest {

	private static GenericXmlApplicationContext ctx = new GenericXmlApplicationContext("root-context.xml");
	private static GameRoomDao gameRoomDao = ctx.getBean(GameRoomDao.class);
	private final String namespace = "mybatis.mappers.GamelistMapper";
	MybatisConnector mybatisconnector = ctx.getBean(MybatisConnector.class);

	public MybatisTest() {
	}

	public MybatisTest(MybatisConnector mybatisconnector) {
		this.mybatisconnector = mybatisconnector;
	}

	public void updateTeamId(int memberId, int teamId) {
		SqlSession sqlSession = mybatisconnector.sqlSession();

		TeampageDTO teampageDTO = new TeampageDTO();

		Map<String, Integer> updateTeamIdMap = new HashMap<String, Integer>();
		updateTeamIdMap.put("teamId", teamId);
		updateTeamIdMap.put("memberId", memberId);

		try {
			int result = sqlSession.update(namespace + ".updateTeamId", updateTeamIdMap);
			System.out.println(result);
		} finally {
			sqlSession.close();
		}
	}

	public static void main(String[] args) throws Exception {
		GameInfo gameInfo = new GameInfo();

		gameInfo.setId(11);
		gameInfo.setStatusCode(10);
		gameInfo.setMaxPersonNum(1);
		gameInfo.setMaxTeamNum(3);
		gameInfo.setKind(2);
		gameInfo.setDuration(4);
		gameInfo.setName("asd");

		System.out.println(createGame(gameInfo));
	}

	public static int createGame(GameInfo gameInfo) {
		return gameRoomDao.getCreateGame(gameInfo);
	}
}

package test.gamelist;

import org.junit.Test;
import org.springframework.context.support.GenericXmlApplicationContext;

import kr.co.sist.football.gamelist.model.dao.GamelistDao;
import kr.co.sist.football.gamelist.model.dto.GameInfoParam;

public class DaoTest {
	GenericXmlApplicationContext ctx = new GenericXmlApplicationContext("root-context.xml");
	GamelistDao gamelistDao = ctx.getBean(GamelistDao.class);

//	@Test
	public void testGetTeamInfo() {
		System.out.println(gamelistDao.getTeamInfo(32));
	}

//	@Test
	public void testGetGameInfoList() {
		GameInfoParam gameInfoParam = new GameInfoParam();
		gameInfoParam.setStartNum(1);
		gameInfoParam.setEndNum(2);
		System.out.println(gamelistDao.getGameInfoList(gameInfoParam));
	}
	
	@Test
	public void testGetGameLocationByGameId() {
		System.out.println(gamelistDao.getGameLocationByGameId(1));
	}
}

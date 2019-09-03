package kr.co.sist.football.gamelist.model.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import kr.co.sist.football.common.model.dto.GameInfo;
import kr.co.sist.football.gamelist.model.dao.GameRoomDao;
import kr.co.sist.football.gamelist.model.dto.GameRoom;

@Service
public class GameRoomService {
 	private GameRoomDao gameRoomDao;
	

	
	@Autowired
	private GameRoomService(GameRoomDao gameRoomDao) {
		this.gameRoomDao = gameRoomDao;
	}
	
	public GameRoom getGameRoom(GameInfo gameInfoId) {
		GameRoom gameRoom = new GameRoom();
		
		gameRoom.setKind(gameRoomDao.getCreateGame(gameInfoId));
		return gameRoom;	
	}
	}



package kr.co.sist.football.gamelist.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.sist.football.common.model.dto.GameInfo;
import kr.co.sist.football.gamelist.model.dto.GameRoom;
import kr.co.sist.football.gamelist.model.service.GameRoomService;

@Controller
@RequestMapping(value = "/createRoom", method = { RequestMethod.GET, RequestMethod.POST })
public class GameRoomController {
private GameRoomService gameRoomService;

	@Autowired
	private GameRoomController(GameRoomService gameRoomService) {
		this.gameRoomService = gameRoomService;
	}

	@GetMapping
	public String gameRoom(@RequestParam(defaultValue = "id") Model model) {
          GameInfo gameInfo = new GameInfo();
		GameInfo gameInfo = gameRoomService.getGameRoom(gameInfo);

		return "game/createRoom";
	}
}

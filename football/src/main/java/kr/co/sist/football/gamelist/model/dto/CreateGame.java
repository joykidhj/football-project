package kr.co.sist.football.gamelist.model.dto;

import java.util.Date;

public class CreateGame {
	private int id;
	private String name;
	private int statusCode;
	private int maxPersonNum;
	private int kind;
	private Date gameDate;
	private int maxTeamNum;
	private int duration;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getStatusCode() {
		return statusCode;
	}
	public void setStatusCode(int statusCode) {
		this.statusCode = statusCode;
	}
	public int getMaxPersonNum() {
		return maxPersonNum;
	}
	public void setMaxPersonNum(int maxPersonNum) {
		this.maxPersonNum = maxPersonNum;
	}
	public int getKind() {
		return kind;
	}
	public void setKind(int kind) {
		this.kind = kind;
	}
	public Date getGameDate() {
		return gameDate;
	}
	public void setGameDate(Date gameDate) {
		this.gameDate = gameDate;
	}
	public int getMaxTeamNum() {
		return maxTeamNum;
	}
	public void setMaxTeamNum(int maxTeamNum) {
		this.maxTeamNum = maxTeamNum;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	@Override
	public String toString() {
		return "CreateGame [id=" + id + ", name=" + name + ", statusCode=" + statusCode + ", maxPersonNum="
				+ maxPersonNum + ", kind=" + kind + ", gameDate=" + gameDate + ", maxTeamNum=" + maxTeamNum
				+ ", duration=" + duration + "]";
	}

	
	
	
}

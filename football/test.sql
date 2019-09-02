select * from TEAM_INFO;
select * from GAME_INFO;
select * from GAME_LOCATION;


select * from TAB;


SELECT
	id,
	status_code statusCode,
	max_person_num maxPersonNum,
	kind,
	TO_CHAR(GAME_DATE, 'MM:DD'), 
    TO_CHAR(game_date,'HH24:MI'),
	duration,
	description,
	maxnum_team maxnumTeam
	FROM
	game_info
	WHERE
	ROWNUM <=3 AND
	1 <= ROWNUM;
	
	
	
	SELECT SYSTIMESTAMP
	, EXTRACT(TIMEZONE_HOUR FROM game_date)
    FROM game_info	
	
	
	
	
	DELETE FROM GAME_INFO;
	
	INSERT INTO GAME_INFO VALUES(
		3, 0, 0, 0, SYSDATE, 0, 'ASDF', 0
	)
	
	INSERT INTO GAME_INFO VALUES(
		4, 3, 10, 2, SYSDATE, 90, 'GG', 2
	)
	
	
	
	SELECT TO_CHAR(SYSDATE, 'HH:MI:SS') FROM game_info; 
	


	
	
	
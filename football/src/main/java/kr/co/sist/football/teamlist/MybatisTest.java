package kr.co.sist.football.teamlist;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.context.support.GenericXmlApplicationContext;

import kr.co.sist.football.teamlist.model.dto.TeamInfo;
import mybatis.config.MybatisConnector;

public class MybatisTest {

	GenericXmlApplicationContext ctx = new GenericXmlApplicationContext("root-context.xml");
	private final String namespace = "mybatis.mappers.TeamListMapper";
	MybatisConnector mybatisconnector = ctx.getBean(MybatisConnector.class);

	public MybatisTest() {
	}

	public MybatisTest(MybatisConnector mybatisconnector) {
		this.mybatisconnector = mybatisconnector;
	}

	
	public int insertTeamInfo()  {
		SqlSession sqlSession = mybatisconnector.sqlSession();
		TeamInfo teamListDTO = new TeamInfo();
		
		  teamListDTO.setId(11); teamListDTO.setLocation("ac");
		  teamListDTO.setLogoPath("bc"); teamListDTO.setMaxNum(21);
		  teamListDTO.setName("cc"); teamListDTO.setPresentNum(31);
		  teamListDTO.setStrengthCode(41); teamListDTO.setUniformColorCode(51);
		  teamListDTO.setFormation("dc");
		 

		try {
			int insertTeamResult  = sqlSession.insert(namespace+".insertTeamInfo",teamListDTO);
			return insertTeamResult ; 
		} finally {
			sqlSession.close();
		}
	}
	public List<TeamInfo> selectAllTeamList()  {
		SqlSession sqlSession = mybatisconnector.sqlSession();

		try {
			List<TeamInfo> selectAllTeamList  = sqlSession.selectList(namespace+".selectAllTeaminfo");
			System.out.println(selectAllTeamList);
			return selectAllTeamList ; 
		} finally {
			sqlSession.close();
		}
	}
	//특정 팀 정보를 뽑아오는 메소드
		public List<TeamInfo> selectOneTeamList(int id)  {
			SqlSession sqlSession = mybatisconnector.sqlSession();
			TeamInfo teamListDTO = new TeamInfo();
			
			try {
				List<TeamInfo> selectOneTeamList  = sqlSession.selectList(namespace+".selectOneTeaminfo", id);
//					
				System.out.println(selectOneTeamList);
				return selectOneTeamList; 
			} finally {
				sqlSession.close();
			}
		}
		//모든 팀 count를 뽑아오는 메소드
				public List<TeamInfo> getTeamCount()  {
					SqlSession sqlSession = mybatisconnector.sqlSession();
					
					try {
						List<TeamInfo> getTeamCount = sqlSession.selectList(namespace+".getTeamCount");
						System.out.println(getTeamCount);
						return getTeamCount; 
					} finally {
						sqlSession.close();
					}
				}

	public static void main(String[] args) throws Exception {
		MybatisTest test = new MybatisTest();

		test.getTeamCount();

	}

}

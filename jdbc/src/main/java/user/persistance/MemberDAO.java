package user.persistance;

import java.sql.Connection;
import java.sql.PreparedStatement;

import lombok.AllArgsConstructor;
import user.domain.MemberDTO;

import static user.persistance.JdbcUtil.*;

@AllArgsConstructor
public class MemberDAO {
	private Connection con;
	
	//insert
	public boolean insert(MemberDTO dto) {
		boolean insertFlag=false;
		PreparedStatement pstmt=null;
		
		try {
			String sql= "insert into member (USERID,PASSWORD,NAME,GENDER,EMAIL)  values(?,?,?,?,?)";
			
			pstmt = con.prepareStatement(sql);
			pstmt .setString(1, dto.getUserid());
			pstmt .setString(2, dto.getPassword());
			pstmt .setString(3, dto.getName());
			pstmt .setString(4, dto.getGender());
			pstmt .setString(5, dto.getEmail());
			
			int result = pstmt.executeUpdate();
			if(result>0) {
				insertFlag=true;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			//connection is not close 
			//JdbcUtil.close(pstmt);
			close(pstmt);
		}
		return insertFlag;
	}
	
	
	
	
	
	

}

package ohora.persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import ohora.domain.DeptVO;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OhoraDAOImpl implements OhoraDAO{
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public OhoraDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}

	@Override
	public ArrayList<DeptVO> selectTest() throws SQLException {
		int deptno;
		String dname;
		String loc;
		
		ArrayList<DeptVO> list = null;
		String sql = "SELECT * FROM dept";
		
		DeptVO dvo = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				list = new ArrayList<DeptVO>();
				do {

					deptno = rs.getInt("deptno");
					dname = rs.getString("dname");
					loc = rs.getString("loc");

					dvo = new DeptVO().builder()
							.deptno(deptno)
							.dname(dname)
							.loc(loc)
							.build();

					list.add(dvo);

				} while (rs.next());
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return list;
	}
}

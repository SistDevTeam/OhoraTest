package ohora.persistence;

import java.sql.SQLException;
import java.util.ArrayList;

import ohora.domain.DeptVO;

public interface OhoraDAO {
	ArrayList<DeptVO> selectTest() throws SQLException;
}

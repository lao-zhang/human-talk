package md;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import md.Page;

public class MessageDBAccess {
	public void addMessage(Message m) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try {
			conn=ConnectionFactory.getConnection();
			 String sql="insert into humantalk values(?,?,?,?,?)";
		     pstmt=conn.prepareStatement(sql);
	     	pstmt.setString(1, m.getDate());
	     	pstmt.setString(2, m.getTime());
	     	pstmt.setString(3, m.getId());
	     	pstmt.setString(4,m.getType());
	      	pstmt.setString(5,m.getContent());
	     	pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			ResourceClose.close(rs, pstmt, conn);
		}
	}
 public Map findAllMessage(int curpage) {
	Message m=null;
	List list=new ArrayList();
	Connection conn=null;
	java.sql.Statement pstmt=null;
	ResultSet rs=null;
	ResultSet r=null;
	Map map=null;
	Page pa=null;
	try {
		conn=ConnectionFactory.getConnection();
		String sql="select * from humantalk order by date desc,time desc;";
		pstmt=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
		rs=pstmt.executeQuery(sql);
		pa=new Page();
		pa.setPageSize(200);
		pa.setPageCount(rs);
		pa.setCurPage(curpage);
		r=pa.setRs(rs);
		r.previous();//将ResultSet的指针向前移动一个；
		for(int i=0;i<pa.getPageSize();i++) {
	       if(r.next()) {
			m=new Message();
			m.setDate(rs.getString(1));
			m.setTime(rs.getString(2));
			m.setId(rs.getString(3));
			m.setType(rs.getString(4));
			m.setContent(rs.getString(5));
			list.add(m);
		}
	       else {
	    	   break;
	       }
		}
		map=new HashMap();
		map.put("list", list);
		map.put("pa",pa);
} catch(SQLException e) {
		e.printStackTrace();
	}finally {
		ResourceClose.close(rs,pstmt,conn);
		ResourceClose.close(r,null,null);
	}
	return map;
  }
}
 



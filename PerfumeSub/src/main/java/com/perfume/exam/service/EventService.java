package com.perfume.exam.service;

import java.sql.SQLException;
import java.util.List;

import com.perfume.exam.vo.BoardVO;
import com.perfume.exam.vo.EventVO;

public interface EventService {

	public List<EventVO> getEndList() throws ClassNotFoundException, SQLException;
	public List<EventVO> getIngList() throws ClassNotFoundException, SQLException;
	public List<BoardVO> getWinnerList() throws ClassNotFoundException, SQLException;
	public EventVO getEvent(String page) throws SQLException;

}







package com.perfume.exam.service.impl;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.perfume.exam.service.AdminService;
import com.perfume.exam.service.dao.AdminDAO;
import com.perfume.exam.vo.BoardVO;
import com.perfume.exam.vo.EventVO;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminDAO adminDao;

	@Override
	public List<BoardVO> getNoticeList() throws Exception {

		List<BoardVO> noticeList = adminDao.getNoticeList();
		return noticeList;
	}

	@Override
	public List<BoardVO> getFAQList() throws Exception {
		
		List<BoardVO> FAQList = adminDao.getFAQList();
		return FAQList;
	}

	@Override
	public List<EventVO> getEventList() throws Exception {
		
		List<EventVO> eventList = adminDao.getEventList();
		return eventList;
	}
	
	@Override
	public List<BoardVO> getWinnerList() throws Exception {

		List<BoardVO> winnerList = adminDao.getWinnerList();
		return winnerList;
	}

	@Override
	public void boardInsert(BoardVO board) throws Exception {
		
		String title = board.getTitle();
		String content = board.getContent();
		String category = "notice";
		
		if(board.getCategory().equals("NOTICE")) {
			category = "notice";	
		} else if(board.getCategory().equals("FAQ")) {
			category = "faq";
		} else if(board.getCategory().equals("WINNER")) {
			category = "winner";
		}
		
		adminDao.boardInsert(title, content, category);			
	}

	@Override
	public void boardUpdate(BoardVO board) throws Exception {

		int id = board.getId();
		String title = board.getTitle();
		String content = board.getContent();
		
		adminDao.boardUpdate(id, title, content);
	}

	@Override
	public void boardDelete(BoardVO board) throws Exception {
		
		int id = board.getId();
		
		adminDao.boardDelete(id);	
	}

	@Override
	public String getBenefit() throws Exception {

		String benefit = adminDao.getBenefit();
		return benefit;
	}

	@Override
	public void beneSubmit(String fileName) throws Exception {
		
		String path = "/img/customer/" + fileName;
		
		adminDao.beneSubmit(path);
	}

	@Override
	public void eventUpdate(EventVO event) throws Exception {
		
		int id = event.getId();
		String title = event.getTitle();
		Date enddate = event.getEnddate();
		Date startdate = event.getStartdate();
		String thumbnail = null;
		String image = null;
				
		
		//썸네일 파일만 들어오는 경우
		if(!event.getThumbnail().equals("") && event.getImage().equals("")) {
			thumbnail = "/img/event/thumbnail/" + event.getThumbnail();			
			adminDao.eventUpdateThn(id, title, thumbnail, startdate, enddate);
			
		//이미지 파일만 들어오는 경우
		} else if(event.getThumbnail().equals("") && !event.getImage().equals("")) {
			image = "/img/event/image/" + event.getImage();	
			adminDao.eventUpdateImg(id, title, image, startdate, enddate);
		
		//파일이 안 들어오는 경우
		} else if(event.getThumbnail().equals("") && event.getImage().equals("")) {
			adminDao.eventUpdateMin(id, title, startdate, enddate);
			
		//파일이 전부 들어오는 경우	
		} else {		
			thumbnail = "/img/event/thumbnail/" + event.getThumbnail();			
			image = "/img/event/image/" + event.getImage();	
			adminDao.eventUpdateMax(id, title, thumbnail, image, startdate, enddate);
		}	
	}

	@Override
	public void eventInsert(EventVO event) throws Exception {
		
		String title = event.getTitle();
		String thumbnail = "/img/event/thumbnail/" + event.getThumbnail();
		String image = "/img/event/image/" + event.getImage();
		Date startdate = event.getStartdate();
		Date enddate = event.getEnddate();
		
		adminDao.eventInsert(title, thumbnail, image, startdate, enddate);
		
	}

	@Override
	public void eventDelete(EventVO event) throws Exception {

		int id = event.getId();
		
		adminDao.eventDelete(id);
		
	}

}

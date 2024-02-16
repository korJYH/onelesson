package com.itwillbs.service;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.itwillbs.dao.LessonDAO;
import com.itwillbs.domain.LessonDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.PageDTO;

@Service
public class LessonService {
	@Inject
	private LessonDAO lessonDAO;

	public void insertLesson(LessonDTO lessonDTO) {
		System.out.println("LessonService insertLesson()");
		lessonDAO.insertLesson(lessonDTO);
		System.out.println(lessonDTO);
	}
	
	public List<LessonDTO> getLessonList(PageDTO pageDTO) {
		System.out.println("LessonService getLessonList()");
		
		int startRow = (pageDTO.getCurrentPage() - 1) * pageDTO.getPageSize() + 1;
		int EndRow = startRow + pageDTO.getPageSize() - 1;
		
		pageDTO.setStartRow(startRow -1);
		pageDTO.setEndRow(EndRow);
		
		return lessonDAO.getLessonList(pageDTO);
	}

	public int getLessonCount() {
		return lessonDAO.getLessonCount();
	}

	public List<LessonDTO> getlessonSearch(PageDTO pageDTO) {
		System.out.println("LessonService getlessonSearch()");
		
		int startRow = (pageDTO.getCurrentPage() - 1) * pageDTO.getPageSize() + 1;
		int EndRow = startRow + pageDTO.getPageSize() - 1;
		
		pageDTO.setStartRow(startRow -1);
		pageDTO.setEndRow(EndRow);
		
		return lessonDAO.getlessonSearch(pageDTO);
	}

	public List<LessonDTO> getcategorySearch(PageDTO pageDTO) {
		System.out.println("LessonService getcategorySearch()");
		
		int startRow = (pageDTO.getCurrentPage() - 1) * pageDTO.getPageSize() + 1;
		int EndRow = startRow + pageDTO.getPageSize() - 1;
		
		pageDTO.setStartRow(startRow -1);
		pageDTO.setEndRow(EndRow);
		
		return lessonDAO.getcategorySearch(pageDTO);
	}

	public LessonDTO getLesson(LessonDTO lessonDTO) {
		return lessonDAO.getLesson(lessonDTO);
	}


}

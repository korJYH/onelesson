package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.BoardDTO;
import com.itwillbs.domain.LessonDTO;
import com.itwillbs.domain.PageDTO;

@Repository
public class BoardDAO {
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.itwillbs.mappers.boardMapper";
	

	public int getMaxNoticeNum() {
		System.out.println("BoardDAO getMaxNoticeNum()");
		
		return sqlSession.selectOne(namespace + ".getMaxNoticeNum");
	}

	public List<BoardDTO> getNoticeList(PageDTO pageDTO) {
		System.out.println("BoardDAO getNoticeList()");
		System.out.println(pageDTO);
		
		return sqlSession.selectList(namespace + ".getNoticeList", pageDTO);
	}

	public int getNoticeCount() {
		System.out.println("BoardDAO getNoticeCount()");
		
		return sqlSession.selectOne(namespace + ".getNoticeCount");
	}

	public BoardDTO getNotice(BoardDTO boardDTO) {
		System.out.println("BoardDAO getNotice()");
		
		return sqlSession.selectOne(namespace + ".getNotice", boardDTO);
	}

	public void updateNoticeReadcount(BoardDTO boardDTO) {
		System.out.println("BoardDAO updateNoticeReadcount()");
		
		sqlSession.update(namespace + ".updateNoticeReadcount", boardDTO);
	}

	public List<BoardDTO> getFaqList(PageDTO pageDTO) {
		System.out.println("BoardDAO getFaqList()");
		System.out.println(pageDTO);
		
		return sqlSession.selectList(namespace + ".getFaqList", pageDTO);
	}

	public int getFaqCount() {
		System.out.println("BoardDAO getFaqCount()");
		
		return sqlSession.selectOne(namespace + ".getFaqCount");
	}

	public int getMaxFaqNum() {
		System.out.println("BoardDAO getMaxFaqNum()");
		
		return sqlSession.selectOne(namespace + ".getMaxFaqNum");
	}

	public BoardDTO getFaq(BoardDTO boardDTO) {
		System.out.println("BoardDAO getFaq()");
		
		return sqlSession.selectOne(namespace + ".getFaq", boardDTO);
	}

	public void addWish(LessonDTO lessonDTO) {
		sqlSession.insert(namespace + ".addWish", lessonDTO);
	}

	public void removeWish(LessonDTO lessonDTO) {
		sqlSession.delete(namespace + ".removeWish", lessonDTO);
	}


}

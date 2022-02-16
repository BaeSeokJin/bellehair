package com.bsj.delight.community.model.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.bsj.delight.community.model.dto.Board;

@Mapper
public interface CommunityRepository{

	@Insert
	("insert into "
		+ "board(BD_IDX, USER_CODE, TITLE, CONTENT, USER_ID)"
		+ "values(SC_DB_IDX.nextval, #{userCode}, #{title}, #{content}, #{userId})"
	)
	void reportInsertPost(Map<String, Object> commandMap);

	@Select
	("select * from board")
	List<Board> getBoardList(Board board);
	
	
}

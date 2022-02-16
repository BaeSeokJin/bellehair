package com.bsj.delight.community.model.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

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
	
	@Select
	("select * from board where BD_IDX = #{bdIdx}")
	Board hairForumDetail(String bdIdx);
	
	@Update
	("update board set cnt = cnt + 1 where BD_IDX = #{bdIdx}")
	void updateHitCount(String bdIdx);

	@Delete
	("delete from board where BD_IDX = #{bdIdx}")
	void removePosting(String bdIdx);
	
	@Update
	("update board set title = #{title}, content = #{content} where BD_IDX = #{bdIdx}")
	void modifyPostingEnd(String bdIdx, String title, String content);

	
	
	
}

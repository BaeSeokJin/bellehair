package com.bsj.delight.community.model.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.bsj.delight.community.model.dto.Board;
import com.bsj.delight.community.model.dto.Comments;

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
	void modifyPostingEnd(Board board);
	
	@Select
	("select * from comments where bd_idx = #{bdIdx} order by CM_IDX desc")
	List<Comments> geCommentsList(@Param("comments") Comments comments,@Param("bdIdx") String bdIdx);

	@Insert
	("INSERT INTO comments "
			+ "(CM_IDX, BD_IDX, COMMENTS, CREATE_AT, MODIFIED_AT, USER_ID)"
			+ "values(SC_CM_IDX.NEXTVAL, #{bdIdx}, #{contents}, SYSDATE, SYSDATE, #{userId})")
	void commentsWritePost(@Param("contents") String contents, @Param("bdIdx") String bdIdx, @Param("userId") String userId);

	
	


	
	
	
}

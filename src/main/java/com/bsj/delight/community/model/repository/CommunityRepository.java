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

	// 게시글 작성
	@Insert
	("insert into "
		+ "board(BD_IDX, USER_CODE, TITLE, CONTENT, USER_ID)"
		+ "values(SC_DB_IDX.nextval, #{userCode}, #{title}, #{content}, #{userId})"
	)
	void reportInsertPost(Map<String, Object> commandMap);

	// 게시글 목록
	//@Select
	//("select * from board order by CREATE_AT desc")
	List<Board> getBoardList(Board board);
	
	// 게시글 상세 페이지
	@Select
	("select * from board where BD_IDX = #{bdIdx}")
	Board hairForumDetail(String bdIdx);
	
	// 조회수 1 증가
	@Update
	("update board set cnt = cnt + 1 where BD_IDX = #{bdIdx}")
	void updateHitCount(String bdIdx);

	// 게시글 삭제
	@Delete
	("delete from board where BD_IDX = #{bdIdx}")
	void removePosting(String bdIdx);
	
	// 게시글 수정
	@Update
	("update board set title = #{title}, content = #{content} where BD_IDX = #{bdIdx}")
	void modifyPostingEnd(Board board);
	
	// 댓글 조회
	@Select
	("select * from comments where bd_idx = #{bdIdx} order by CREATE_AT asc")
	List<Comments> geCommentsList(@Param("comments") Comments comments,@Param("bdIdx") String bdIdx);

	// 댓글 작성
	@Insert
	("INSERT INTO comments "
			+ "(CM_IDX, BD_IDX, COMMENTS, CREATE_AT, MODIFIED_AT, USER_ID)"
			+ "values(SC_CM_IDX.NEXTVAL, #{bdIdx}, #{contents}, SYSDATE, SYSDATE, #{userId})")
	void commentsWritePost(@Param("contents") String contents, @Param("bdIdx") String bdIdx, @Param("userId") String userId);

	// 댓글 삭제
	@Delete
	("delete from comments where CM_IDX = #{cmIdx}")
	void commentsRemove(String cmIdx);

	
	List<Map<String, Object>> getListPagingforSearch(Map<String, Object> criMap);

	int getSearchTotal(Map<String, Object> criMap);

}

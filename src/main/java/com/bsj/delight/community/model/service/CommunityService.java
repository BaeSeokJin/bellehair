package com.bsj.delight.community.model.service;

import java.util.List;
import java.util.Map;

import com.bsj.delight.community.model.dto.Board;
import com.bsj.delight.community.model.dto.Comments;

public interface CommunityService {

	void reportInsertPost(Map<String, Object> commandMap);

	List<Board> getBoardList(Board board);

	Board hairForumDetail(String bdIdx);

	void removePosting(String bdIdx);

	void modifyPostingEnd(Board board);

	List<Comments> geCommentsList(Comments comments, String bdIdx);



	



	
		
}
	

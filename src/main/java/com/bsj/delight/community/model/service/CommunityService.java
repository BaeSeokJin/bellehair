package com.bsj.delight.community.model.service;

import java.util.List;
import java.util.Map;

import com.bsj.delight.community.model.dto.Board;

public interface CommunityService {

	void reportInsertPost(Map<String, Object> commandMap);

	List<Board> getBoardList(Board board);

	Board hairForumDetail(String bdIdx);

	void removePosting(String bdIdx);

	void modifyPostingEnd(String bdIdx, String title, String content);



	
		
}
	

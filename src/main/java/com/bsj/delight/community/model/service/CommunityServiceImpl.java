package com.bsj.delight.community.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.bsj.delight.community.model.dto.Board;
import com.bsj.delight.community.model.repository.CommunityRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class CommunityServiceImpl implements CommunityService{
	
	private final CommunityRepository communityRepository;
	
	@Override
	public void reportInsertPost(Map<String, Object> commandMap) {
		communityRepository.reportInsertPost(commandMap);
	}

	@Override
	public List<Board> getBoardList(Board board) {
		return communityRepository.getBoardList(board);
	}

	@Override
	public Board hairForumDetail(String bdIdx) {
		communityRepository.updateHitCount(bdIdx); // 조회수 증가
		return communityRepository.hairForumDetail(bdIdx); // 게시글 상세 조회 리턴
	}

	@Override
	public void removePosting(String bdIdx) {
		communityRepository.removePosting(bdIdx);
	}

	@Override
	public void modifyPostingEnd(Board board) {
		communityRepository.modifyPostingEnd(board);
	}





}

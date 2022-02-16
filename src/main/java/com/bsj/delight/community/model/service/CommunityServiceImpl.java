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
}

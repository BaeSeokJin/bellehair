package com.bsj.delight.community.model.repository;

import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CommunityRepository{

	@Insert
	("insert into "
		+ "board(BD_IDX, USER_CODE, TITLE, CONTENT)"
		+ "values(SC_DB_IDX.nextval, #{userCode}, #{title}, #{content})"
	)
	void reportInsertPost(Map<String, Object> commandMap);
	
	
}

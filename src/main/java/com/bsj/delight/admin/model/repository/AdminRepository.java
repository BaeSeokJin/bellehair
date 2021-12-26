package com.bsj.delight.admin.model.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.bsj.delight.member.model.dto.Member;

@Mapper
public interface AdminRepository {
	
	@Select("select * from member")
	List<Member> selectAllMembers();
	
}

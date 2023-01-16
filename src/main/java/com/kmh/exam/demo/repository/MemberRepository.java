package com.kmh.exam.demo.repository;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.kmh.exam.demo.vo.Member;

@Mapper
public interface MemberRepository {
	
	@Insert("""
			Insert INTO `member`
			SET loginId = #{loginId},
			loginPw = #{loginPw},
			`name` = #{name},
			nickname = #{nickname},
			cellphoneNum = #{cellphoneNum},
			email = #{email}
			""")
	public void doJoin(@Param("loginId") String loginId,@Param("loginPw") String loginPw, @Param("name") String name,@Param("nickname") String nickname, @Param("cellphoneNum") String cellphoneNum, @Param("email") String email);
	
	@Select("SELECT LAST_INSERT_ID()")
	public int getLastInsertId();
	
	@Select("""
			SELECT *
			FROM `member`
			WHERE id = #{id}
			""")
	public Member getMemberById(int id);

	@Select("""
			SELECT *
			FROM `member`
			WHERE loginId = #{loginId}
			""")
	public Member getMemberByLoginId(String loginId);

	
	@Select("""
			SELECT *
			FROM `member`
			WHERE name = #{name}
			AND email = #{email}
			""")
	
	public Member getMemberByNameAndEmail(String name, String email);

	
}

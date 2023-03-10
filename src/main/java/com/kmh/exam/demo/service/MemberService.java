package com.kmh.exam.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kmh.exam.demo.repository.MemberRepository;
import com.kmh.exam.demo.utill.Utility;
import com.kmh.exam.demo.vo.Member;
import com.kmh.exam.demo.vo.ResultData;

@Service
public class MemberService {
	private MemberRepository memberRepository;

	@Autowired
	public MemberService(MemberRepository memberRepository) {
		this.memberRepository = memberRepository;
	}

	public ResultData doJoin(String loginId, String loginPw, String name, String nickname, String cellphoneNum, String email) {
		// 로그인 아이디 중복체크
		Member existsMember = getMemberByLoginId(loginId);

		if (existsMember != null) {
			return ResultData.from("F-7", "이미 사용중인 아이디(%s)입니다",loginId);
		}
		//이름 + 이메일 중복체크
		existsMember = getMemberByNameAndEmail(name, email);
		
		if (existsMember != null) {
			return ResultData.from("F-8",Utility.f("이미 사용중인이름(%s)과 이메일(%s)입니다",name,email));
		}

		
		memberRepository.doJoin(loginId, loginPw, name, nickname, cellphoneNum, email);
		int id =memberRepository.getLastInsertId();
		return ResultData.from("S-1", "회원가입이 완료 되었습니다",id);
	}

	public Member getMemberById(int id) {

		return memberRepository.getMemberById(id);
	}

	public Member getMemberByLoginId(String loginId) {
		return memberRepository.getMemberByLoginId(loginId);
	}
	private Member getMemberByNameAndEmail(String name,String email) {
		return memberRepository.getMemberByNameAndEmail(name,email);
	}
}

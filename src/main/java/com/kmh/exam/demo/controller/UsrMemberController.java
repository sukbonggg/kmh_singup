package com.kmh.exam.demo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kmh.exam.demo.service.MemberService;
import com.kmh.exam.demo.utill.Utility;
import com.kmh.exam.demo.vo.Member;
import com.kmh.exam.demo.vo.ResultData;

@Controller
public class UsrMemberController {

	private MemberService memberService;

	@Autowired
	public UsrMemberController(MemberService memberService) {
		this.memberService = memberService;
	}

	@RequestMapping("/usr/member/join")
	public String showJoin() {
		return "usr/member/join";
	}

	@RequestMapping("/usr/member/login")
	public String showLogin() {
		return "usr/member/login";
	}

	@RequestMapping("/usr/member/doJoin")
	@ResponseBody
	public String  doJoin(String loginId, String loginPw, String name, String nickname, String cellphoneNum,
			String email) {
		if (Utility.empty(loginId)) {
			return Utility.jsHistoryBack("아이디를 입력해주세요");
		}
		if (Utility.empty(loginPw)) {
			return Utility.jsHistoryBack("비밀번호를 입력해주세요");
		}
		if (Utility.empty(name)) {
			return Utility.jsHistoryBack("이름을 입력해주세요");
		}
		if (Utility.empty(nickname)) {
			return Utility.jsHistoryBack("닉네임을 입력해주세요");
		}
		if (Utility.empty(cellphoneNum)) {
			return Utility.jsHistoryBack("전화번호를 입력해주세요");
		}
		if (Utility.empty(email)) {
			return  Utility.jsHistoryBack("이메일을 입력해주세요");
		}

		ResultData doJoinRd = memberService.doJoin(loginId, loginPw, name, nickname, cellphoneNum, email);

		if (doJoinRd.isFail()) {
			return  Utility.jsHistoryBack(doJoinRd.getMsg());
		}

		

		return Utility.jsReplace(doJoinRd.getMsg(), "/");

	}

	@RequestMapping("/usr/member/doLogin")
	@ResponseBody
		public ResultData doLogin(HttpSession httpSession, String loginId, String loginPw) {

			if(httpSession.getAttribute("member") != null) {
				return ResultData.from("F-1", "이미 로그인 되어있습니다");
			}
			if(Utility.empty(loginId)) {
				return ResultData.from("F-2", "아이디를 입력해주세요");
			}
			if(Utility.empty(loginPw)) {
				return ResultData.from("F-3", "비밀번호를 입력해주세요");
			}

			Member member = memberService.getMemberByLoginId(loginId);

			if(member == null) {
				return ResultData.from("F-4", "존재하지 않는 아이디입니다");
			}

			if(member.getLoginPw().equals(loginPw) == false) {
				return ResultData.from("F-5", "비밀번호가 일치하지 않습니다");
			}

			httpSession.setAttribute("member", member.getLoginId());
			
			return ResultData.from("S-1", Utility.f("%s님 환영합니다", member.getNickname()));
		}

	@RequestMapping("/usr/member/doLogOut")
	@ResponseBody
	public String doLogOut(HttpSession httpSession) {

		if (httpSession.getAttribute("loginId") != null) {
			return Utility.jsHistoryBack("이미로그아웃 상태입니다");
		}
		httpSession.removeAttribute("loginId");

		return Utility.jsReplace("로그아웃 되었습니다", "/"); 
	}

}

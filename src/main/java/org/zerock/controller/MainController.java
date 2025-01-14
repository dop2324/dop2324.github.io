package org.zerock.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.MemberDTO;
import org.zerock.domain.ObjectVO;
import org.zerock.service.MemberService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/main/*")
@Log4j
@AllArgsConstructor
public class MainController {
	
	private MemberService service;
	
	@GetMapping("/register")
	public void register() {
		
	}
	@GetMapping("/remove")
	public String remove(MemberDTO member,HttpSession session) {
		
		service.remove(member.getIdbno());
		session.invalidate();
		return "redirect:/main/home";
	}
	@PostMapping("/register")
	public String register(MemberDTO member,HttpSession session, RedirectAttributes rttr,ObjectVO object) {
		
		service.register(member);
		
		
		rttr.addFlashAttribute("result", member.getIdbno());
		return "redirect:/main/login";
	}
	
	@PostMapping("/modify")
	public String modify(MemberDTO member, RedirectAttributes rttr,HttpSession session) {
		
		service.modify(member);
		int Msuccess = 0;
		rttr.addFlashAttribute("Msuccess",Msuccess);
		session.invalidate();
		return "redirect:/main/login";
	}
	
	
	@GetMapping("/home")
	public String main() {
		return "/main";
	}
	@GetMapping("/profile")
	public String profile() {
		return "/profile/profile";
	}
	@GetMapping("/sign")
	public String sign() {
		return "/sign";
	}
	@GetMapping("/login")
	public String login() {
		return "/login";
	}
	@RequestMapping("/logout")
    public ModelAndView logout(HttpSession session) {
        session.invalidate();
        ModelAndView mv = new ModelAndView("redirect:/main/home");
        return mv;
    }

	@PostMapping("/login")
	public String loginCheck(MemberDTO member, HttpSession session,RedirectAttributes rttr) {
		
		MemberDTO dto= service.login(member);
		//memeberDTO에 있는 변수들을 세션 영역에 저장
		
		if(dto == null) {
			int result = 0;
			rttr.addFlashAttribute("result",result);
			return "redirect:/main/login";
		}
		session.setAttribute("login", dto);
		return "redirect:/main/home";
		
	}
	
	@RequestMapping(value="/idCheck",method = RequestMethod.POST)
	@ResponseBody
	public String idCheck(String id) throws Exception{
		int result = service.idCheck(id);
		
		if(result !=0) {
			return "fail";
		}else {
			return "success";
		}
	}
	
}

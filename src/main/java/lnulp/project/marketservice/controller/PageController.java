package lnulp.project.marketservice.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
	@RequestMapping("/")
	public String index(HttpServletRequest request, Model model) {
		return("index");
	}
	
	@RequestMapping("/login")
	public String signIn(HttpServletRequest request, Model model) {
		return("sign-in");
	}
	
	@RequestMapping("/registration")
	public String signUp(HttpServletRequest request, Model model) {
		return("sign-up");
	}
	
	@RequestMapping("/profile:id")
	public String userProfile(HttpServletRequest request, Model model) {
		return("profile");
	}
}

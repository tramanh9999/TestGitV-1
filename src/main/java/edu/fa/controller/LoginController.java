package edu.fa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import edu.fa.model.Fresher;
import edu.fa.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;

	@RequestMapping(value = "/login")
	public String showlogin(Model mp) {
		
		mp.addAttribute("fresher", new Fresher());
		return "login";
	}

	@RequestMapping(value = "/dashboard")
	public String dashboard(@ModelAttribute("fresher") Fresher fr, Model mp) {
		
		if (loginService.login(fr)) {
			mp.addAttribute("fresher", fr);
			return "dashboard";
		} else {
			mp.addAttribute("error", true);
			return "redirect:login";
		}
	}

}

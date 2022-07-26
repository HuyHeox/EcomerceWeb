package base.controller;

import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.If;
import org.springframework.beans.factory.ObjectFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import base.model.AccountModel;
import base.model.iservice.IAccountService;

@Controller
public class LoginController {
	@Autowired
	IAccountService iAccoutService;
	
	@Autowired
	ObjectFactory<HttpSession> httpSessionFactory;
	@GetMapping("/login")
	public String homePage() {
		return "login";
	}
	
	@GetMapping("/access")
	public String doLogin(@RequestParam("username") String username,@RequestParam("password") String password, Model model) {
		AccountModel account =iAccoutService.getAccount(username);
		if (account!=null )
			if (account.getPass().compareTo(password)==0) {
				HttpSession session = httpSessionFactory.getObject();
				session.setAttribute("acc", account);
				return "redirect:/";
			}
		model.addAttribute("message", "wrong username or password");	
		return "redirect:/login";
	}
	@GetMapping("/logout")
	public String doLogout() {
		HttpSession session = httpSessionFactory.getObject();
		session.removeAttribute("acc");
		return "redirect:/login";
	}
}
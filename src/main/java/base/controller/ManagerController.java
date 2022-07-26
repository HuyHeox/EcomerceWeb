package base.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.ObjectFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import base.model.AccountModel;
import base.model.ProductModel;
import base.model.iservice.IAccountService;
import base.model.iservice.ISellingService;
import base.repo.ISellingRepo;

@Controller
public class ManagerController {
	@Autowired
	IAccountService iAccountService;
	@Autowired
	ISellingService iSellingService;
	@Autowired
	ObjectFactory<HttpSession> httpSessionFactory;
	@GetMapping("/accountController")
	public String accountControll(Model model) {
		List<AccountModel> list =iAccountService.getAllAccount();
		model.addAttribute("listAccount", list);	
		return "accountManager";
	}
	@GetMapping("/productController")
	public String productControll(Model model) {
		HttpSession session = httpSessionFactory.getObject();
		AccountModel accountModel=(AccountModel) session.getAttribute("acc");
		List<ProductModel> list =iSellingService.getProductBySeller(accountModel.getuID());
		model.addAttribute("listProduct", list);	
		return "productManager";
	}
}

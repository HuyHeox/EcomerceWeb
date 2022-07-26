package base.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import base.model.ProductModel;
import base.model.iservice.IAccountService;
import base.model.iservice.ICategoryService;
import base.model.iservice.ISellingService;

@Controller
public class SellingController {
	@Autowired
	ISellingService iSellingService;
	@Autowired
	ICategoryService iCategoryService;
	
	@GetMapping("/")
	public String showAll(Model model) {
		List<ProductModel> list=iSellingService.getAllProduct();
		model.addAttribute("listProduct", list);
		model.addAttribute("listCate", iCategoryService.getAllCategory());
		return "index";
	}
	
	@GetMapping("/category/{cID}")
	public String viewByCategory(Model model, @PathVariable("cID") int cID) {
		List<ProductModel> list=iSellingService.getProductCate(cID);
		model.addAttribute("listCate", iCategoryService.getAllCategory());
		model.addAttribute("listProduct", list);
		model.addAttribute("cID", cID);
		return "index";
	}
	
	@GetMapping("/product/{ID}")
	public String viewSingleProduct(Model model,@PathVariable("ID")Long ID ) {
		Long id=(Long)ID;
		ProductModel product=iSellingService.getProductByID(id);
		model.addAttribute("product", product);
		model.addAttribute("listCate", iCategoryService.getAllCategory());
		model.addAttribute("category", iCategoryService.getCategoryByID((long) product.getcID()));
		return "product";
	}
	
	@GetMapping("/search")
	public String searchByName(@RequestParam("search") String str, Model model) {
		List<ProductModel> list = iSellingService.searchProduct(str);
		model.addAttribute("listProduct", list);
		model.addAttribute("listCate", iCategoryService.getAllCategory());
		return "index";}
	
}

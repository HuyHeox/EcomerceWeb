package base.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import base.model.ProductModel;
import base.model.iservice.ISellingService;
import base.repo.ISellingRepo;
@Service
public class SellingService implements ISellingService{
	@Autowired
	private ISellingRepo iSellingRepo;

	@Override
	public List<ProductModel> getAllProduct() {
		return iSellingRepo.findAll();
	}
	@Override
	public List<ProductModel> getProductCate(int cID) {
		return iSellingRepo.findCategory(cID);
	}
	@Override
	public ProductModel getProductByID(Long ID) {
//		Long idLong=(long)ID;
		return iSellingRepo.getById(ID);
	}
	@Override
	public List<ProductModel> searchProduct(String str){
		return iSellingRepo.searchProduct(str);
	}
	
	public List<ProductModel> getProductBySeller(int id){
		return iSellingRepo.getProductBySeller(id);
	}
}

package base.model.iservice;

import java.util.List;


import base.model.ProductModel;

public interface ISellingService {
	List<ProductModel> getAllProduct();
	List<ProductModel> getProductCate(int cID);
//	ProductModel getProductByID(long ID);
	ProductModel getProductByID(Long ID);
	List<ProductModel> searchProduct(String str);
	List<ProductModel> getProductBySeller(int id);
}

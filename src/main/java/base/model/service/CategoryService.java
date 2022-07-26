package base.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import base.model.CategoryModel;
import base.model.ProductModel;
import base.model.iservice.ICategoryService;
import base.repo.ICategoryRepo;


@Service
public class CategoryService implements ICategoryService{
	@Autowired
	private ICategoryRepo iCategoryRepo;
	
	@Override
	public List<CategoryModel> getAllCategory(){
		return iCategoryRepo.findAll();
	}

	@Override
	public CategoryModel getCategoryByID(Long ID) {
//		Long idLong=(long)ID;
		return iCategoryRepo.getById(ID);
	}
}

package base.model.iservice;

import java.util.List;


import base.model.CategoryModel;

public interface ICategoryService {
	List<CategoryModel> getAllCategory();
	CategoryModel getCategoryByID(Long ID);
}

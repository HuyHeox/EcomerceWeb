package base.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import base.model.CategoryModel;

@Repository
public interface ICategoryRepo extends JpaRepository<CategoryModel,Long>{

}

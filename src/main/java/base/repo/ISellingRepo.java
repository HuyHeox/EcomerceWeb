package base.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import base.model.ProductModel;

@Repository
public interface ISellingRepo extends JpaRepository<ProductModel, Long> {
	@Query(value = "select * from product where cID=?1 ", nativeQuery = true)
	List<ProductModel> findCategory(int cID);
	@Query(value = "select * from product where name like concat('%',?1,'%') ", nativeQuery = true)
	List<ProductModel> searchProduct(String str);
	@Query(value = "select * from product where sellID=?1 ", nativeQuery = true)
	List<ProductModel>getProductBySeller(int id);
}

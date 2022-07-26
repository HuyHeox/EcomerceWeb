package base.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import base.model.AccountModel;

public interface IAccountRepo extends JpaRepository<AccountModel,Long>{
	@Query(value = "select * from account where user=?1 ", nativeQuery = true)
	AccountModel getAccount(String str);
}


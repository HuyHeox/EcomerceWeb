package base.model.iservice;

import java.util.List;

import base.model.AccountModel;

public interface IAccountService {
	AccountModel getAccount(String str);
	List<AccountModel> getAllAccount();
}

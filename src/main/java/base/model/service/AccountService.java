package base.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import base.model.AccountModel;
import base.model.iservice.IAccountService;
import base.repo.IAccountRepo;

@Service
public class AccountService implements IAccountService{
	@Autowired
	private IAccountRepo iAccountRepo;
	
	public AccountModel getAccount(String str) {
		return iAccountRepo.getAccount(str);
	}
	public List<AccountModel> getAllAccount(){
		return iAccountRepo.findAll();
	}
}

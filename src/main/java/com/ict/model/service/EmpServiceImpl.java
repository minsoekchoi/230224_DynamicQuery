package com.ict.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ict.model.dao.EmpDAO;
import com.ict.model.vo.EmpVO;

@Service
public class EmpServiceImpl implements EmpService {
	@Autowired
	private EmpDAO empDAO;
	
	public void setEmpDAO(EmpDAO empDAO) {
		this.empDAO = empDAO;
	}

	@Override
	public List<EmpVO> getList() throws Exception {
		return empDAO.getList();
	}

	@Override
	public List<EmpVO> search(String employee_id) throws Exception {
		return empDAO.search(employee_id);
	}

	@Override
	public List<EmpVO> search(String searchType, String searchValue) throws Exception {
		return empDAO.search(searchType, searchValue);
	}
}

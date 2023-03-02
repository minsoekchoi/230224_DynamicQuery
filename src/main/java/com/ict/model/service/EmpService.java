package com.ict.model.service;

import java.util.List;

import com.ict.model.vo.EmpVO;

public interface EmpService {
	List<EmpVO> getList() throws Exception;
	List<EmpVO> search(String employee_id) throws Exception;
	
	// 이 아이가 동적 쿼리
	List<EmpVO> search(String searchType, String searchValue) throws Exception;
	
	
}

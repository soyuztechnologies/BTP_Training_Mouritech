package com.example.demo.services;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.entities.Vendor;

public interface IVendorPersistence extends JpaRepository<Vendor, String> {
	List<Vendor> findByCompanyName(String companyName);
	
	@Query(nativeQuery=true,
			value="SELECT * FROM public.vendor WHERE lower(email) like %?1% ")
	List<Vendor> lookupVendorByGST(String emailId);
}

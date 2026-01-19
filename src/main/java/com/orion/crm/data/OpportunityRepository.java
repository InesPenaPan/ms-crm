package com.orion.crm.data;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.orion.crm.model.Opportunity;

@Repository
public interface OpportunityRepository extends JpaRepository<Opportunity, Long> {

    List<Opportunity> findByClient_CompanyNameContainingIgnoreCase(String name);

    List<Opportunity> findByUser_UserId(Long userId);

    List<Opportunity> findByClient_ClientId(Long clientId);
}
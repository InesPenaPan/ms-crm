package com.orion.crm.service;

import java.util.List;

import com.orion.crm.model.Opportunity;

public interface OpportunityService {

    List<Opportunity> getAllOpportunities();
    
    List<Opportunity> getOpportunitiesByUserId(Long userId);

    List<Opportunity> getOpportunitiesByClientId(Long clientId);
}
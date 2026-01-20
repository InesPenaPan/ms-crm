package com.orion.crm.service;

import java.util.List;
import java.util.Map;

import com.orion.crm.model.Opportunity;

public interface OpportunityService {

    List<Opportunity> getAllOpportunities();
    
    Map<String, Object> getOpportunitiesByUserId(Long userId);

    List<Opportunity> getOpportunitiesByClientId(Long clientId);
}
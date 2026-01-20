package com.orion.crm.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map; 

import org.springframework.stereotype.Service;

import com.orion.crm.data.OpportunityRepository;
import com.orion.crm.model.Opportunity;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class OpportunityServiceImpl implements OpportunityService {

    private final OpportunityRepository repository;

    @Override
    public List<Opportunity> getAllOpportunities() {
        return repository.findAll();
    }

    @Override
    public Map<String, Object> getOpportunitiesByUserId(Long userId) {
        Map<String, Object> stats = new HashMap<>();
        
        stats.put("opportunities", repository.findByUser_UserId(userId));
        stats.put("wonThisYear", repository.countWonThisYear(userId));
        stats.put("pending", repository.countPending(userId));
        stats.put("lost", repository.countLost(userId));
        
        return stats;
    }

    @Override
    public List<Opportunity> getOpportunitiesByClientId(Long clientId) {
        return repository.findByClient_ClientId(clientId);
    }   
}
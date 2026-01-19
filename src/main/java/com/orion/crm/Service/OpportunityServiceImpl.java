package com.orion.crm.service;

import java.util.List;

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
    public List<Opportunity> getOpportunitiesByUserId(Long userId) {
        return repository.findByUser_UserId(userId);
    }

    @Override
    public List<Opportunity> getOpportunitiesByClientId(Long clientId) {
        return repository.findByClient_ClientId(clientId);
    }   
}
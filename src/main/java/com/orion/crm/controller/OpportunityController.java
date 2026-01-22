package com.orion.crm.controller;

import java.util.List;
import java.util.Map;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.orion.crm.model.Opportunity;
import com.orion.crm.service.OpportunityService;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/opportunities")
@RequiredArgsConstructor
public class OpportunityController {

    private final OpportunityService service;

    /**
     * Fetch all available opportunities.
     */
    @GetMapping
    public ResponseEntity<List<Opportunity>> getOpportunities() {
        List<Opportunity> opportunities = service.getAllOpportunities();
        return ResponseEntity.ok(opportunities);
    }

    /**
     * Get metrics and opportunities assigned to a specific user.
     */
    @GetMapping("/user/{userId}")
    public ResponseEntity<Map<String, Object>> getByUserId(@PathVariable Long userId) {
        return ResponseEntity.ok(service.getOpportunitiesByUserId(userId));
    }

    /**
     * Retrieve all opportunities associated with a specific client.
     */
    @GetMapping("/client/{clientId}")
    public ResponseEntity<List<Opportunity>> getByClientId(@PathVariable Long clientId) {
        List<Opportunity> results = service.getOpportunitiesByClientId(clientId);
        return ResponseEntity.ok(results);
    }
}
package com.orion.crm.controller;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.orion.crm.model.Client;
import com.orion.crm.service.ClientService;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/clients")
@RequiredArgsConstructor
public class ClientController {

    private final ClientService service;

    /**
     * Fetch all clients
     */
    @GetMapping
    public ResponseEntity<List<Client>> getGlients() {
        List<Client> opportunities = service.getAllClients();
        return ResponseEntity.ok(opportunities);
    }
}
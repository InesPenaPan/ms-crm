package com.orion.crm.controller;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.orion.crm.service.ClientService;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/clients")
@RequiredArgsConstructor
public class ClientController {

    private final ClientService service;

    /**
     * Get all unique clients (including ticker/stock code) related to a specific user.
     */
    @GetMapping("/{userId}")
    public ResponseEntity<List<Object[]>> getClientsByUser(@PathVariable Long userId) {
        return ResponseEntity.ok(service.getClientsByUserId(userId));
    }
}
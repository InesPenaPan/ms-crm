package com.orion.crm.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.orion.crm.data.ClientRepository;
import com.orion.crm.model.Client;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ClientServiceImpl implements ClientService {

    private final ClientRepository repository;

    @Override
    public List<Client> getAllClients() {
        return repository.findAll();
    }
}
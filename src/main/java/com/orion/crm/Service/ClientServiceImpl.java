package com.orion.crm.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.orion.crm.data.ClientRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ClientServiceImpl implements ClientService {

    private final ClientRepository repository;
    
    @Override
    public List<Object[]> getClientsByUserId(Long userId) {
        return repository.findClientsByUserId(userId);
    }

}
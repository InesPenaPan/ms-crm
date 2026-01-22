package com.orion.crm.service;

import java.util.List;

public interface ClientService {

    List<Object[]> getClientsByUserId(Long userId);
}
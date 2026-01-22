package com.orion.crm.data;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.orion.crm.model.Client;

@Repository
public interface ClientRepository extends JpaRepository<Client, Long> {

}
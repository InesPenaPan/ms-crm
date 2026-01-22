package com.orion.crm.data;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.orion.crm.model.Opportunity;

@Repository
public interface ClientRepository extends JpaRepository<Opportunity, Long> {

    List<Object[]> findClientsByUserId(@Param("userId") Long userId);
}
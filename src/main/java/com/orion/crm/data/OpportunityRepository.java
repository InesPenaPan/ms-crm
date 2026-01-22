package com.orion.crm.data;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.orion.crm.model.Opportunity;

@Repository
public interface OpportunityRepository extends JpaRepository<Opportunity, Long> {

    List<Opportunity> findByClient_CompanyNameContainingIgnoreCase(String name);

    List<Opportunity> findByUser_UserId(Long userId);

    List<Opportunity> findByClient_ClientId(Long clientId);

    @Query("SELECT SUM(o.amountValue) FROM Opportunity o WHERE o.user.userId = :userId AND o.stage = 'Closed'")
    long countWon(@Param("userId") Long userId);

    @Query("SELECT SUM(o.amountValue) FROM Opportunity o WHERE o.user.userId = :userId AND o.stage NOT IN ('Closed', 'Lost')")
    long countPending(@Param("userId") Long userId);

    @Query("SELECT SUM(o.amountValue) FROM Opportunity o WHERE o.user.userId = :userId AND o.stage = 'Lost'")
    long countLost(@Param("userId") Long userId);

    @Query("SELECT DISTINCT o.client FROM Opportunity o WHERE o.user.userId = :userId")
    List<Object[]> findClientsByUserId(@Param("userId") Long userId);
}
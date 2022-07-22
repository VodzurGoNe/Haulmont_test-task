package org.gruzdov.solution.test_solution.repository;

import org.gruzdov.solution.test_solution.entity.CreditOffer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

/**
 * @author Vladislav Gruzdov
 */
@Repository
public interface CreditOfferRepository extends JpaRepository<CreditOffer, UUID> {

    List<CreditOffer> findByClientId(UUID clientId);
}

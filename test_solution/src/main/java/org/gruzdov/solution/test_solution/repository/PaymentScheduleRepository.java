package org.gruzdov.solution.test_solution.repository;

import org.gruzdov.solution.test_solution.entity.PaymentSchedule;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

/**
 * @author Vladislav Gruzdov
 */
@Repository
public interface PaymentScheduleRepository extends JpaRepository<PaymentSchedule, UUID> {

    List<PaymentSchedule> findByCreditOfferId(UUID creditOfferId);

    void deleteAllByCreditOfferId(UUID id);
}
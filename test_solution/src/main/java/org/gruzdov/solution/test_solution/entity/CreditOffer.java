package org.gruzdov.solution.test_solution.entity;

import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.math.BigDecimal;
import java.util.List;
import java.util.UUID;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Builder
@Entity
@Table(name = "CREDIT_OFFER")
public class CreditOffer {
    private static final long serialVersionUID = -4750857881422152651L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "CREDIT_OFFER_ID")
    private UUID id;

    @NotBlank(message = "Named is required field")
    @Size(min = 2, message = "Named must be min 2 symbols")
    @Column(name = "CREDIT_OFFER_NAMED")
    private String named;

    @NotNull(message = "Amount is required field")
    @Min(value = 1, message = "Must be greater than 1")
    @Max(value = 200030001, message = "Must be less than 200030001")
    @Column(name = "CREDIT_OFFER_AMOUNT")
    private BigDecimal amount;

    @NotNull(message = "Period In Months is required field")
    @Min(value = 2, message = "Must be greater than 2")
    @Max(value = 480, message = "Must be less than 480")
    @Column(name = "CREDIT_OFFER_PERIOD_IN_MONTHS")
    private Integer periodInMonths;

    @Max(value = 200030001, message = "Must be less than 200030001")
    @Column(name = "CREDIT_OFFER_FIRST_PAY")
    private BigDecimal firstPay;

    @Column(name = "CREDIT_OFFER_PERCENT_SUM")
    private BigDecimal percentSum;

    @ToString.Exclude
    @ManyToOne(cascade = CascadeType.MERGE)
    @JoinColumn(name = "BANK_ID")
    private Bank bank;

    @ToString.Exclude
    @ManyToOne(cascade = CascadeType.MERGE)
    @JoinColumn(name = "CREDIT_ID")
    private Credit credit;

    @ToString.Exclude
    @ManyToOne(cascade = CascadeType.MERGE)
    @JoinColumn(name = "CLIENT_ID")
    private Client client;

    @ToString.Exclude
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "creditOffer")
    private List<PaymentSchedule> paymentSchedules;
}

INSERT INTO BANK (BANK_ID, BANK_TITLE)

values ('11a80fb6-1ca4-435c-8fb3-2215d145db41', 'PRIME'),
       ('21a80fb6-1ca4-435c-8fb3-2215d145db41', 'Second'),
       ('31a80fb6-1ca4-435c-8fb3-2215d145db41', 'JBC'),
       ('41a80fb6-1ca4-435c-8fb3-2215d145db41', ';)');

INSERT INTO CREDIT (CREDIT_ID, CREDIT_TITLE, CREDIT_LIMIT, CREDIT_PERCENT, BANK_ID)

values ('51a80fb6-1ca4-435c-8fb3-2215d145db41', 'Mortgage', 15000000, 8,'11a80fb6-1ca4-435c-8fb3-2215d145db41'),
       ('61a80fb6-1ca4-435c-8fb3-2215d145db41', 'Сonsumer', 700000, 30, '21a80fb6-1ca4-435c-8fb3-2215d145db41'),
       ('71a80fb6-1ca4-435c-8fb3-2215d145db41', 'Auto credit', 10000000, 15, '31a80fb6-1ca4-435c-8fb3-2215d145db41'),
       ('81a80fb6-1ca4-435c-8fb3-2215d145db41', '"installment plan"', 150000, 6, '41a80fb6-1ca4-435c-8fb3-2215d145db41');

INSERT INTO CLIENT (CLIENT_ID, CLIENT_FIO, CLIENT_PHONE_NUMBER, CLIENT_EMAIL, CLIENT_PASSPORT_NUMBER, BANK_ID)

values ('91a80fb6-1ca4-435c-8fb3-2215d145db41', 'Gruzdov Vladislav Grigorevich', '907-964-39-63', 'tomcat@random.com', '31-11-502830', '11a80fb6-1ca4-435c-8fb3-2215d145db41'),
       ('62a80fb6-1ca4-435c-8fb3-2215d145db41', 'Gruzdov Vladimir Grigorevich', '907-964-39-63', 'tomcat@random.com', '31-11-502830', '21a80fb6-1ca4-435c-8fb3-2215d145db41'),
       ('73a80fb6-1ca4-435c-8fb3-2215d145db41', 'Gruzdov Valeriy Grigorevich', '907-964-39-63', 'tomcat@random.com', '31-11-502830', '31a80fb6-1ca4-435c-8fb3-2215d145db41'),
       ('84a80fb6-1ca4-435c-8fb3-2215d145db41', 'Gruzdov Miroslav Grigorevich', '907-964-39-63', 'tomcat@random.com', '31-11-502830', '41a80fb6-1ca4-435c-8fb3-2215d145db41');

INSERT INTO CREDIT_OFFER (CREDIT_OFFER_ID, CREDIT_OFFER_NAMED, CREDIT_OFFER_AMOUNT, CREDIT_OFFER_PERIOD_IN_MONTHS, CREDIT_OFFER_FIRST_PAY, CREDIT_OFFER_PERCENT_SUM, BANK_ID, CREDIT_ID, CLIENT_ID)

values ('91a80fb6-1ca4-435c-8fb3-2216d145db41', 'Spring', 100000, 2, 10, 8, '11a80fb6-1ca4-435c-8fb3-2215d145db41', '51a80fb6-1ca4-435c-8fb3-2215d145db41', '91a80fb6-1ca4-435c-8fb3-2215d145db41'),
       ('62a80fb6-1ca4-435c-8fb3-2217d145db41', 'Joy', 150000, 2, 10, 30, '21a80fb6-1ca4-435c-8fb3-2215d145db41', '61a80fb6-1ca4-435c-8fb3-2215d145db41', '62a80fb6-1ca4-435c-8fb3-2215d145db41'),
       ('73a80fb6-1ca4-435c-8fb3-2218d145db41', 'Pull', 150800, 2, 10, 15, '31a80fb6-1ca4-435c-8fb3-2215d145db41', '71a80fb6-1ca4-435c-8fb3-2215d145db41', '73a80fb6-1ca4-435c-8fb3-2215d145db41'),
       ('84a80fb6-1ca4-435c-8fb3-2219d145db41', 'Optimal', 180000, 2, 10, 6, '41a80fb6-1ca4-435c-8fb3-2215d145db41', '81a80fb6-1ca4-435c-8fb3-2215d145db41', '84a80fb6-1ca4-435c-8fb3-2215d145db41');


INSERT INTO PAYMENT_SCHEDULE (PAYMENT_SCHEDULE_ID, PAYMENT_SCHEDULE_AMOUNT_OF_THE_BODY, PAYMENT_SCHEDULE_AMOUNT_OF_THE_PERCENT, PAYMENT_SCHEDULE_PAYMENT_AMOUNT, PAYMENT_SCHEDULE_PAYMENT_DATE, PAYMENT_SCHEDULE_REMAINS, CREDIT_OFFER_ID)

values ('91a70fb6-1ca4-435c-8fb3-2216d145db41', 10000, 5000, 15000, DATE '2021-09-01', 10, '91a80fb6-1ca4-435c-8fb3-2216d145db41'),
       ('91a70fb6-1ca4-435c-8fb3-2216d115db42', 10000, 5000, 15000, DATE '2021-09-02', 10, '91a80fb6-1ca4-435c-8fb3-2216d145db41'),
       ('62a70fb6-1ca4-435c-8fb3-2217d195db41', 10000, 5000, 15000, DATE '2021-09-01', 10, '62a80fb6-1ca4-435c-8fb3-2217d145db41'),
       ('62a70fb6-1ca4-435c-8fb3-2217d175db44', 10000, 5000, 15000, DATE '2021-09-02', 10, '62a80fb6-1ca4-435c-8fb3-2217d145db41'),
       ('73a70fb6-1ca4-435c-8fb3-2218d145db41', 10000, 5000, 15000, DATE '2021-09-01', 10, '73a80fb6-1ca4-435c-8fb3-2218d145db41'),
       ('73a70fb6-1ca4-435c-8fb3-2218d155db49', 10000, 5000, 15000, DATE '2021-09-02', 10, '73a80fb6-1ca4-435c-8fb3-2218d145db41'),
       ('84a30fb6-1ca4-435c-8fb3-2219d135db41', 10000, 5000, 15000, DATE '2021-09-01', 10, '84a80fb6-1ca4-435c-8fb3-2219d145db41'),
       ('84a30fb6-1ca4-435c-8fb3-2219d145db44', 10000, 5000, 15000, DATE '2021-09-02', 10, '84a80fb6-1ca4-435c-8fb3-2219d145db41');

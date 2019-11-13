--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

-- Data for Name: billings; Type: TABLE DATA; Schema: public; Owner: :user
--

\COPY public.billings (id, patient_id, ccnum, cctype, ccexpmonth, ccexpyear, address1, address2, city, state, zip, created_at, updated_at) FROM '/tmp/dafsetup/billings.csv'DELIMITER ',' CSV HEADER;

--
-- Data for Name: patients; Type: TABLE DATA; Schema: public; Owner: :user
--

\COPY public.patients (id, firstname, middlename, lastname, ssn, dob, address1, address2, city, state, zip, created_at, updated_at) FROM '/tmp/dafsetup/patients.csv'DELIMITER ',' CSV HEADER;


--
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: :user
--

\COPY public.payments (id, patient_id, amount, authcode, currency, captured, type, created_at, updated_at) FROM '/tmp/dafsetup/payments.csv'DELIMITER ',' CSV HEADER;

--
-- Data for Name: records; Type: TABLE DATA; Schema: public; Owner: :user
--

\COPY public.records (id, patient_id, type, created_at, updated_at) FROM '/tmp/dafsetup/records.csv'DELIMITER ',' CSV HEADER;;


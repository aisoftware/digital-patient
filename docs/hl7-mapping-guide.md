# HL7 Mapping Guide

## Overview

This guide describes how HL7 messages are mapped to the digital patient data model.

## Supported Message Types

- ADT (Admission, Discharge, Transfer)
- ORM (Order Messages)
- ORU (Observation Results)
- SIU (Scheduling Information)

## Field Mappings

### Patient Demographics (PID Segment)

| HL7 Field | Description | Database Mapping |
|-----------|-------------|------------------|
| PID-3 | Patient ID | patients.patient_id |
| PID-5 | Patient Name | patients.first_name, patients.last_name |
| PID-7 | Date of Birth | patients.date_of_birth |
| PID-8 | Gender | patients.gender |
| PID-13 | Phone | patients.phone |

[Additional mappings to be documented]

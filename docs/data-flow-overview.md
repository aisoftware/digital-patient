# Data Flow Overview

This document describes the data flow within the digital patient system.

## Overview

The digital patient platform processes healthcare data through multiple components:

1. **Data Ingestion**: HL7 and EDI messages received through the WebAPI
2. **Queue Processing**: Messages are queued and processed asynchronously
3. **Database Storage**: Patient, provider, and encounter data stored in PostgreSQL
4. **API Access**: Provider portal and mobile app access data through REST API

## Flow Diagram

[To be added]

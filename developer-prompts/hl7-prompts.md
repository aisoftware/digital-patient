# HL7 Integration Prompts

## Message Processing

### Supported Message Types
- ADT (Admission, Discharge, Transfer)
- ORM (Order Messages)
- ORU (Observation Results)
- SIU (Scheduling Information)

### Message Parsing
- Validate HL7 message structure before processing
- Handle different HL7 versions (v2.3, v2.4, v2.5)
- Extract segments, fields, and components correctly
- Handle repeating fields and segments

### Data Mapping
- Map HL7 fields to database schema
- Handle missing or optional fields gracefully
- Validate data types and formats
- Implement field-level transformations

## Error Handling
- Log all parsing errors with message details
- Send ACK/NACK responses appropriately
- Queue failed messages for manual review
- Implement retry logic for transient failures

## Best Practices
- Use established HL7 parsing libraries
- Validate against HL7 specifications
- Maintain audit trail of all messages
- Implement idempotency for message processing

# EDI Integration Prompts

## EDI Transaction Sets

### Common Transaction Types
- 270/271 - Eligibility Inquiry/Response
- 276/277 - Claim Status Inquiry/Response
- 837 - Healthcare Claim
- 835 - Payment/Remittance Advice
- 999 - Implementation Acknowledgment

## Message Processing

### Parsing
- Parse EDI segments, elements, and sub-elements
- Handle different EDI versions (4010, 5010)
- Validate ISA/GS/ST envelope structure
- Extract transaction-specific data

### Validation
- Validate against X12 specifications
- Check required vs optional segments
- Verify segment order and hierarchy
- Validate data element formats

### Transformation
- Map EDI data to internal data models
- Handle code set translations
- Format dates and numbers correctly
- Process composite elements

## Error Handling
- Generate functional acknowledgments (997/999)
- Log parsing and validation errors
- Queue invalid transactions for review
- Track transaction status throughout lifecycle

## Best Practices
- Use certified EDI parser libraries
- Maintain compliance with HIPAA requirements
- Implement comprehensive logging
- Test with real-world EDI samples

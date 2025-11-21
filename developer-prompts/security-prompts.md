# Security Development Prompts

## Authentication

### Implementation
- Use industry-standard authentication protocols (OAuth 2.0, OpenID Connect)
- Implement secure password hashing (bcrypt, Argon2)
- Enforce strong password policies
- Support multi-factor authentication (MFA)
- Implement account lockout after failed attempts
- Use secure session management

### Token Management
- Use short-lived access tokens
- Implement refresh token rotation
- Store tokens securely (HttpOnly cookies, secure storage)
- Invalidate tokens on logout
- Implement token revocation

## Authorization

### Access Control
- Implement role-based access control (RBAC)
- Follow principle of least privilege
- Validate permissions on every request
- Implement attribute-based access control where needed
- Log all authorization decisions

### Data Access
- Implement row-level security
- Filter data based on user context
- Validate data ownership
- Prevent horizontal privilege escalation
- Prevent vertical privilege escalation

## Data Protection

### Encryption
- Encrypt data at rest (database encryption)
- Encrypt data in transit (TLS 1.2+)
- Use strong encryption algorithms (AES-256)
- Manage encryption keys securely (Key Management Service)
- Implement field-level encryption for PHI

### HIPAA Compliance
- Implement audit logging for all PHI access
- Encrypt all ePHI
- Implement access controls
- Conduct regular security risk assessments
- Maintain Business Associate Agreements (BAAs)
- Implement breach notification procedures

## Input Validation

### Validation Rules
- Validate all user inputs
- Sanitize data before processing
- Use parameterized queries (prevent SQL injection)
- Validate file uploads (type, size, content)
- Implement rate limiting
- Validate data types and formats

### Output Encoding
- Encode output to prevent XSS
- Use Content Security Policy (CSP)
- Sanitize HTML content
- Validate URLs and redirects

## API Security

### Best Practices
- Use HTTPS exclusively
- Implement API authentication (API keys, JWT)
- Rate limit API requests
- Validate content types
- Implement CORS properly
- Version APIs appropriately
- Document security requirements

### Monitoring
- Log all API requests
- Monitor for suspicious activity
- Implement intrusion detection
- Alert on security events
- Track API usage patterns

## Secrets Management

### Handling Secrets
- Never commit secrets to source control
- Use environment variables
- Use secret management services (Vault, AWS Secrets Manager)
- Rotate secrets regularly
- Encrypt secrets at rest
- Limit secret access to necessary services

## Security Testing

### Testing Requirements
- Perform regular penetration testing
- Conduct security code reviews
- Scan for vulnerabilities (SAST, DAST)
- Test authentication and authorization
- Test for common vulnerabilities (OWASP Top 10)
- Implement security regression tests

## Incident Response

### Procedures
- Maintain incident response plan
- Log security events comprehensively
- Implement alerting for security incidents
- Document breach notification procedures
- Conduct post-incident reviews
- Maintain audit trails

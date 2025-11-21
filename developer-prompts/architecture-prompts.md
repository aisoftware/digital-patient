# Architecture Development Prompts

## System Architecture

### Microservices Design
- Separate concerns into distinct services
- Define clear service boundaries
- Implement service discovery
- Use API gateway for routing
- Design for scalability and fault tolerance

### Communication Patterns
- Use asynchronous messaging for decoupling
- Implement event-driven architecture
- Use message queues (RabbitMQ, Kafka, SQS)
- Define clear API contracts
- Implement circuit breakers for resilience

## Data Architecture

### Database Strategy
- Choose appropriate database types (SQL, NoSQL)
- Design for data consistency
- Implement database per service pattern
- Plan for data migration and versioning
- Consider read/write separation

### Data Flow
- Define clear data pipelines
- Implement ETL processes where needed
- Design for data integrity
- Plan for data archival and retention
- Ensure HIPAA compliance in data handling

## Integration Architecture

### External Systems
- Design for third-party integrations
- Implement adapter patterns
- Handle different data formats (HL7, EDI, FHIR)
- Design for system unavailability
- Implement retry and fallback mechanisms

### API Design
- Follow REST or GraphQL best practices
- Version APIs appropriately
- Design for backward compatibility
- Implement proper error handling
- Document all endpoints

## Scalability

### Horizontal Scaling
- Design stateless services
- Use load balancing
- Implement caching strategies (Redis, Memcached)
- Design for distributed systems
- Plan for auto-scaling

### Performance
- Implement CDN for static assets
- Use database connection pooling
- Optimize database queries
- Implement lazy loading
- Use asynchronous processing for heavy tasks

## Reliability

### High Availability
- Design for redundancy
- Implement health checks
- Use multiple availability zones
- Plan for disaster recovery
- Implement backup strategies

### Monitoring
- Implement comprehensive logging
- Use distributed tracing
- Monitor system metrics
- Set up alerting
- Implement APM (Application Performance Monitoring)

## Security Architecture

### Defense in Depth
- Implement multiple layers of security
- Use network segmentation
- Implement WAF (Web Application Firewall)
- Use VPCs and security groups
- Implement DDoS protection

### Compliance
- Design for HIPAA compliance
- Implement audit logging
- Ensure data encryption
- Plan for compliance audits
- Maintain security documentation

## DevOps & Deployment

### CI/CD Pipeline
- Automate build and deployment
- Implement automated testing
- Use infrastructure as code
- Implement blue-green deployments
- Use canary releases for risk mitigation

### Container Strategy
- Use Docker for containerization
- Implement container orchestration (Kubernetes, ECS)
- Design for container security
- Optimize container images
- Implement container monitoring

## Documentation

### Architecture Documentation
- Maintain architecture decision records (ADRs)
- Create system diagrams
- Document data flows
- Document integration points
- Keep documentation up to date

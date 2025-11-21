# Database Development Prompts

## Schema Design

### Tables
- Use appropriate data types for each column
- Implement proper primary and foreign keys
- Add indexes for frequently queried columns
- Include audit fields (created_at, updated_at)

### Normalization
- Follow third normal form (3NF) where appropriate
- Avoid redundant data storage
- Design for data integrity and consistency

### Migrations
- Create versioned migration scripts
- Always provide rollback scripts
- Test migrations in development before production
- Document schema changes

## Query Optimization
- Use EXPLAIN to analyze query performance
- Create appropriate indexes
- Avoid N+1 query problems
- Use prepared statements for security

## Security
- Never store plain text passwords
- Implement row-level security where needed
- Use parameterized queries to prevent SQL injection
- Encrypt sensitive data at rest

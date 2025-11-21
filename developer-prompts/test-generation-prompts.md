# Test Generation Prompts

## Unit Testing

### Backend Tests
- Test all service methods with multiple scenarios
- Mock database calls and external dependencies
- Test error handling and edge cases
- Verify input validation
- Test business logic thoroughly
- Aim for 80%+ code coverage

### Frontend Tests
- Test component rendering
- Test user interactions (click, input, etc.)
- Test conditional rendering
- Mock API calls
- Test state management
- Test hooks and custom logic

## Integration Testing

### API Testing
- Test complete API endpoints
- Verify request/response formats
- Test authentication and authorization
- Test rate limiting and throttling
- Verify error responses
- Test with real database (test environment)

### Component Integration
- Test component interactions
- Test data flow between components
- Test routing and navigation
- Test form submissions end-to-end

## End-to-End Testing

### User Workflows
- Test complete user journeys
- Test authentication flows
- Test critical business processes
- Test error recovery scenarios
- Test across different browsers/devices

### Data Integrity
- Verify data persistence
- Test data synchronization
- Test transaction rollbacks
- Verify audit trail creation

## Test Data

### Test Data Management
- Create realistic test data
- Use factories or fixtures
- Clean up test data after tests
- Isolate tests from each other
- Use separate test database

### HIPAA Compliance
- Never use real patient data in tests
- Generate synthetic PHI for testing
- Secure test environments
- Document test data handling procedures

## Best Practices

### Code Quality
- Follow AAA pattern (Arrange, Act, Assert)
- Write descriptive test names
- Keep tests independent and isolated
- Make tests deterministic (no random failures)
- Test one thing per test
- Keep tests simple and readable

### CI/CD Integration
- Run tests automatically on commits
- Block merges if tests fail
- Generate test coverage reports
- Run tests in parallel for speed
- Maintain fast test execution times

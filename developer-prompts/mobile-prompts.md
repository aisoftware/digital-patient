# Mobile App Development Prompts

## React Native Development

### Project Setup
- Use latest stable React Native version
- Configure for both iOS and Android
- Set up navigation (React Navigation)
- Configure state management (Redux/Context)

### UI/UX Guidelines
- Follow platform-specific design guidelines (iOS HIG, Material Design)
- Implement responsive layouts
- Support different screen sizes and orientations
- Ensure accessibility compliance (WCAG 2.1)

### Features
- Patient authentication and authorization
- Secure data storage (encrypted)
- Offline capability with data sync
- Push notifications
- Biometric authentication
- Health data integration (HealthKit, Google Fit)

## Performance

### Optimization
- Implement lazy loading for screens
- Optimize image loading and caching
- Use FlatList for long lists
- Minimize re-renders with memoization
- Profile performance regularly

### Memory Management
- Clean up event listeners
- Cancel pending requests on unmount
- Optimize bundle size
- Use proper key props in lists

## Security

### Data Protection
- Encrypt sensitive data at rest
- Use secure storage (Keychain/Keystore)
- Implement certificate pinning for API calls
- Never log sensitive information
- Comply with HIPAA requirements

## Testing
- Write unit tests for business logic
- Implement integration tests
- Perform end-to-end testing
- Test on multiple devices and OS versions

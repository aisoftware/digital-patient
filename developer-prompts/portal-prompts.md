# Provider Portal Development Prompts

## Next.js Development

### Project Configuration
- Use Next.js App Router (or Pages Router)
- Configure TypeScript for type safety
- Set up ESLint and Prettier
- Configure environment variables

### Features
- Provider authentication (SSO support)
- Patient search and management
- Encounter documentation
- Order entry and results review
- Scheduling and appointments
- Secure messaging
- Reporting and analytics dashboards

### UI Components
- Build reusable component library
- Implement responsive design
- Follow accessibility standards (WCAG 2.1)
- Use modern UI framework (Material-UI, Chakra UI, etc.)
- Implement dark mode support

## Performance

### Optimization
- Implement server-side rendering (SSR) where appropriate
- Use static generation for static content
- Optimize images with Next.js Image component
- Implement code splitting
- Use React.memo and useMemo for expensive operations
- Lazy load components and routes

### Caching
- Implement client-side caching
- Use SWR or React Query for data fetching
- Configure HTTP caching headers
- Implement service worker for offline support

## Security

### Authentication & Authorization
- Implement secure session management
- Use JWT or session tokens
- Implement role-based access control (RBAC)
- Support multi-factor authentication
- Auto-logout on inactivity

### Data Security
- Sanitize all user inputs
- Implement CSRF protection
- Use Content Security Policy (CSP)
- Encrypt data in transit (HTTPS only)
- Comply with HIPAA requirements

## Testing
- Write unit tests for components
- Implement integration tests
- End-to-end testing with Playwright or Cypress
- Accessibility testing

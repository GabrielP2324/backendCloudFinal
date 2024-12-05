# Authentication Backend

A Node.js backend service with Prisma and PostgreSQL for authentication.

## Setup

1. Clone the repository:
```bash
git clone [your-repo-url]
cd backend
```

2. Install dependencies:
```bash
npm install
```

3. Set up environment variables:
```bash
cp .env.example .env
# Edit .env with your configuration
```

4. Run with Docker:
```bash
docker-compose up -d
```

## Environment Variables

- `DATABASE_URL`: PostgreSQL connection string
- `JWT_SECRET`: Secret key for JWT tokens
- `CORS_ORIGIN`: Frontend URL for CORS
- `NODE_ENV`: Environment (development/production)

## Development

```bash
npm run dev
```

## Production

```bash
docker-compose up -d
```

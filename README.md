# n8n LitigaUAE Marketing Automation

This repository contains the n8n setup for LitigaUAE's marketing automation workflows.

## Workflows Included

### Lead Nurture - Credit Calculator Signups
Automated email sequence for VAT Credit Expiry Calculator leads:
- **Day 0**: Welcome email sent immediately
- **Day 2**: Educational email - "3 Costly VAT Credit Mistakes"
- **Day 5**: Regulatory update - "2026 VAT Changes"
- **Day 9**: Conversion email - "Free Trial CTA"

## Deploy to Railway

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/template/n8n)

### Manual Deployment

1. Fork this repository
2. Create a new project on [Railway](https://railway.app)
3. Connect your GitHub repository
4. Add a PostgreSQL database from Railway's dashboard
5. Set the following environment variables:

```
N8N_HOST=your-app.up.railway.app
N8N_PROTOCOL=https
WEBHOOK_URL=https://your-app.up.railway.app
NODE_OPTIONS=--dns-result-order=ipv4first
N8N_ENCRYPTION_KEY=your-random-encryption-key
DB_TYPE=postgresdb
DB_POSTGRESDB_HOST=${PGHOST}
DB_POSTGRESDB_PORT=${PGPORT}
DB_POSTGRESDB_DATABASE=${PGDATABASE}
DB_POSTGRESDB_USER=${PGUSER}
DB_POSTGRESDB_PASSWORD=${PGPASSWORD}
```

6. Deploy!

## After Deployment

1. Access your n8n instance at your Railway URL
2. Create an admin account
3. Import the workflow JSON from `/workflows/lead-nurture.json`
4. Configure credentials:
   - Google Sheets OAuth2
   - Gmail OAuth2
5. Update the webhook URL in your Credit Calculator form

## Webhook Endpoint

```
POST https://your-app.up.railway.app/webhook/litigauae-lead

Body:
{
  "name": "Lead Name",
  "email": "lead@example.com",
  "company": "Company Name",
  "source": "Credit Calculator"
}
```

## Local Development

```bash
# Install dependencies
npm install

# Start n8n
NODE_OPTIONS="--dns-result-order=ipv4first" n8n start
```

## License

MIT

FROM n8nio/n8n:latest

# Set environment variables
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV NODE_OPTIONS="--dns-result-order=ipv4first"
ENV GENERIC_TIMEZONE="Asia/Dubai"
ENV TZ="Asia/Dubai"

# Expose port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]

FROM n8nio/n8n:latest

# Environment variables
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=strongpassword
ENV EXECUTIONS_PROCESS=main
ENV DB_TYPE=sqlite
ENV DB_SQLITE_FILE=/data/database.sqlite
ENV WEBHOOK_TUNNEL_URL=https://n8n-free-08cy.onrender.com/
ENV PORT=10000  # Optional, will map in Render below

# Expose the port
EXPOSE 10000

# Start n8n
CMD ["n8n", "start", "--tunnel", "--port", "10000"]

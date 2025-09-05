FROM n8nio/n8n:latest

# Environment variables
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=strongpassword
ENV DB_TYPE=sqlite
ENV DB_SQLITE_FILE=/data/database.sqlite
ENV WEBHOOK_TUNNEL_URL=https://n8n-free-08cy.onrender.com/
ENV N8N_FRONTEND_URL=https://n8n-free-08cy.onrender.com/
ENV EXECUTIONS_PROCESS=main
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=false

# Set n8n to use Render's dynamic port
ENV PORT=$PORT

# Expose default port (optional)
EXPOSE $PORT

# Start n8n using the dynamic port
CMD ["n8n", "start", "--tunnel", "--port", "${PORT}", "--frontend-url", "https://n8n-free-08cy.onrender.com/"]

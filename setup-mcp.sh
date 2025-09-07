#!/bin/bash

# Script pour ajouter tous les serveurs MCP à Claude Code

echo "🔧 Configuration des serveurs MCP pour Claude Code..."

# Context7
echo "📦 Ajout de Context7..."
claude mcp add Context7 npx -- -y @upstash/context7-mcp

# basic-memory
echo "📦 Ajout de basic-memory..."
claude mcp add basic-memory uvx -- basic-memory mcp

# brave-search (avec API key)
echo "📦 Ajout de brave-search..."
BRAVE_API_KEY="BSA3Te0x-E9oD9CWTFCY4E8cQXjoERX" claude mcp add brave-search npx -- -y @modelcontextprotocol/server-brave-search

# firecrawl (avec API key)
echo "📦 Ajout de firecrawl..."
FIRECRAWL_API_KEY="fc-7232f8019e3948e18ed4719a2faed8b1" claude mcp add firecrawl npx -- -y firecrawl-mcp

# magic
echo "📦 Ajout de magic..."
claude mcp add magic npx -- @21st-dev/magic@latest

# playwright
echo "📦 Ajout de playwright..."
claude mcp add playwright npx -- @playwright/mcp@latest

# semgrep
echo "📦 Ajout de semgrep..."
claude mcp add semgrep uvx -- semgrep-mcp

# sequential-thinking
echo "📦 Ajout de sequential-thinking..."
claude mcp add sequential-thinking npx -- @modelcontextprotocol/server-sequential-thinking

# shadcn-ui
echo "📦 Ajout de shadcn-ui..."
claude mcp add shadcn-ui npx -- -y @jpisnice/shadcn-ui-mcp-server

echo "✅ Configuration MCP terminée!"
echo ""
echo "Pour vérifier les serveurs installés:"
echo "  claude mcp list"
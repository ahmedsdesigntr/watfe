#!/bin/bash
# macOS/Linux: her sabah 07:00 -> crontab -e ile ekle:
# 0 7 * * * ~/seyyah-sosyal/ozet.sh
cd "$(dirname "$0")"
claude -p "Sabah özetini yaz: bilgi/rapor/sabah-ozeti-sablonu.md" \
  --allowedTools "Read,Write,Glob,Grep,mcp__zernio__search_tools,mcp__zernio__analytics_get_instagram_account_insights,mcp__zernio__comments_get_inbox_post_comments,mcp__zernio__messages_list_inbox_conversations" \
  > "ozetler/son-ozet.md"

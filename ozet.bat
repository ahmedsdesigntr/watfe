@echo off
REM Windows: bir kez calistir -> schtasks /create /tn SeyyahSabahOzeti /sc daily /st 07:00 /tr "%~dp0ozet.bat"
cd /d %~dp0
claude -p "Sabah ozetini yaz: bilgi/rapor/sabah-ozeti-sablonu.md" --allowedTools "Read,Write,Glob,Grep,mcp__zernio__search_tools,mcp__zernio__analytics_get_instagram_account_insights,mcp__zernio__comments_get_inbox_post_comments,mcp__zernio__messages_list_inbox_conversations" > ozetler\son-ozet.md

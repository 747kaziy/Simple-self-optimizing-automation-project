# 框架目录结构设置脚本

# 创建目录结构
Write-Host "创建目录结构..."
New-Item -ItemType Directory -Force -Path ".vibe\rules", ".vibe\memory", ".vibe\mcp_factory\blueprints", ".vibe\mcp_factory\template", "docs\PRD", "sandbox\test_environment"

# 创建核心文件
Write-Host "创建核心文件..."

# 长记忆文件
@"# 长记忆 (Long-term Memory)

用于存储项目的核心知识和长期记忆。"@ | Out-File -FilePath ".vibe\memory\MEMORY_CORE.md" -Force

# 动态计划文件
@"# 动态计划 (Dynamic TODO)

用于跟踪项目的动态任务和计划。"@ | Out-File -FilePath ".vibe\memory\TODO.md" -Force

# 短记忆文件
@"# 短记忆 (Short-term Progress)

用于记录项目的短期进展和当前状态。"@ | Out-File -FilePath ".vibe\memory\PROGRESS.md" -Force

# 演化日志文件
@"# Evolution Log

/evolve 注入的强制规则日志"@ | Out-File -FilePath ".vibe\mcp_factory\evolution.log" -Force

# 系统核心文件
@"# System Core

底层系统基石：强制前置规划、工作流指令定义"@ | Out-File -FilePath ".vibe\system_core.mdc" -Force

Write-Host "框架结构设置完成！"

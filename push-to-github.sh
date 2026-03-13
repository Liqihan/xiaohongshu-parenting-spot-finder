#!/bin/bash
# 推送到 GitHub 脚本
# 用法：./push-to-github.sh <github-username> <repo-name>

set -e

USERNAME="${1:-a123}"
REPO="${2:-openclaw-skills}"
REMOTE_URL="https://github.com/${USERNAME}/${REPO}.git"

echo "🚀 推送到 GitHub..."
echo "仓库：${REMOTE_URL}"

# 检查是否有远程仓库
if ! git remote | grep -q origin; then
    git remote add origin $REMOTE_URL
    echo "✅ 添加远程仓库：origin"
else
    git remote set-url origin $REMOTE_URL
    echo "✅ 更新远程仓库：origin"
fi

# 推送
git push -u origin main

echo ""
echo "✅ 推送完成！"
echo "查看地址：https://github.com/${USERNAME}/${REPO}/tree/main/skills/xiaohongshu-spot-finder"

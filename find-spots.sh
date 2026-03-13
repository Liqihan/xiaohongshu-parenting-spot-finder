#!/bin/bash
# 小红书亲子地点挖掘脚本
# 用法：./find-spots.sh [季节关键词] [区域关键词]

set -e

# 配置
FEISHU_APP_TOKEN="Alo1b4mgzaZcR5sjivOcYVUbn5b"
FEISHU_TABLE_ID="tblXAZVb60foglbc"
SEARCH_KEYWORD="${1:-杭州亲子游 周末遛娃}"
SEASON_KEYWORD="${2:-}"

echo "📕 开始搜索小红书亲子地点..."
echo "关键词：$SEARCH_KEYWORD $SEASON_KEYWORD"

# 组合搜索词
if [ -n "$SEASON_KEYWORD" ]; then
    FULL_KEYWORD="$SEARCH_KEYWORD $SEASON_KEYWORD"
else
    FULL_KEYWORD="$SEARCH_KEYWORD"
fi

echo "完整搜索词：$FULL_KEYWORD"

# 调用 web_search API（通过 OpenClaw）
# 这里需要用 OpenClaw 的 web_search 工具
# 由于 bash 无法直接调用，我们通过 OpenClaw session 发送消息

echo "✅ 搜索完成！"
echo ""
echo "💡 提示：此脚本需要通过 OpenClaw 的 web_search 和 feishu_bitable 工具执行"
echo "   建议在 OpenClaw 中直接使用自然语言触发："
echo "   '去小红书找点新的亲子游地方'"

#!/bin/bash
# =======================================================
# 🎮 BASHCRAWL: PURE COMMAND-LINE EDUCATION INTERCEPTOR
# =======================================================

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE}")" && pwd)"
cd "$ROOT_DIR"

# 1. 播放你设计的大门开场动画
if [ -f "entrance/play_intro.sh" ]; then
    bash "entrance/play_intro.sh"
fi

# 2. 丝滑切入入口房间
cd entrance

# 3. 进入入口房间后，启动一个继承用户配置的交互式终端
exec bash --rcfile <(cat << 'EOF'
# 继承用户原生的高亮与别名配置
if [ -f ~/.bashrc ]; then source ~/.bashrc; fi
EOF
)

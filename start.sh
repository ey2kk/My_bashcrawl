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

# 3. 启动原生交互式终端，并仅注入唯一的 cat 智能教学雷达
exec bash --rcfile <(cat << 'EOF'
# 继承用户原生的全部高亮配置
if [ -f ~/.bashrc ]; then source ~/.bashrc; fi

# 💡 THE ONLY INTERCEPTOR: Smart English Guide for 'cat'
# It intercepts 'cat' ONLY when the target file contains an executable header.
cat() {
    # If no argument or file doesn't exist, pass to native cat
    if [ -z "$1" ] || [ ! -f "$1" ]; then
        command cat "$@"
        return
    fi
    
    # Check if the file starts with #!/bin/bash
    if head -n 1 "$1" 2>/dev/null | grep -q "#!/bin/bash"; then
        clear
        # 🌟 Flash the authoritative pure English warning panel to protect the source code
        echo -e "\033[1;31m======================================================================\033[0m"
        echo -e " 🚨 \033[1;33m[ DEFIANCE OF MAGICAL LAWS / CODE LEAK PREVENTED ]\033[0m"
        echo -e "----------------------------------------------------------------------"
        echo -e " Warning: You cannot use \033[1;36m'cat'\033[0m to peek inside an active magical script!"
        echo -e " Doing so will ruin the immersion and corrupt the chronicle's code."
        echo ""
        echo -e " 💡 \033[1;32mTHE CORRECT COMMAND LINE CASTING:\033[0m"
        echo -e "    Please type \033[1;32m./$1\033[0m to correctly trigger or interact with it!"
        echo -e "\033[1;31m======================================================================\033[0m"
        echo ""
    else
        # If it's a completely static plain-text file (like your beautiful scrap), display it normally
        command cat "$1"
    fi
}
export -f cat
EOF
)

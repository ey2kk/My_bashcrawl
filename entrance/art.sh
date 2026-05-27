#!/bin/bash
# 自动获取当前 art.sh 所在的绝对路径（即游戏主目录）
ART_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# 颜色资产
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export NC='\033[0m'

draw_door() {
    echo "  ______  "
    echo " |  __  | "
    echo " | |  | | "
    echo " | |  | | "
    echo " |______| "
}

draw_goblin() {
    echo "   (o_o)   "
    echo "  < ( ) >  "
    echo "   /   \   "
}

draw_treasure() {
    echo -e "${YELLOW}   __________   "
    echo "  /\____/\____\ "
    echo " / /  _ \ \____\\"
    echo " \/_/__\_ \/____/"
    echo "  ||_____\_|_  | "
    echo -e "  \/_________\_/${NC}"
}
# 劫持系统的 cat 命令
cat() {
    # 如果玩家没有传文件名，或者文件不存在，调用系统真正的 cat
    if [ -z "$1" ] || [ ! -f "$1" ]; then
        command cat "$@"
        return
    fi

    # 检查玩家要查看的文件第一行是不是 #!/bin/bash
    if head -n 1 "$1" | grep -q "#!/bin/bash"; then
        # 如果是动画脚本，直接执行它，从而展现完美的交互动画！
        bash "$1"
    else
        # 如果是普通文本，调用系统真正的 cat 打印
        command cat "$1"
    fi
}
# 导出该函数，使其在子 shell 中也生效
export -f cat

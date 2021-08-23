#!/usr/bin/env bash

scr1="anyung533_jojo_jd_sendBeans.js"                               ##送豆得豆
scr2="anyung533_jojo_gua_xmGame.js"                                        ##小米-星空大冒险

## 组队任务
team_task(){
    local p=$1                       ## 组队总账号数
    local q=$2                       ## 每个账号发起组队的最大队伍数量
    local scr=$3                     ## 活动脚本完整文件名
    export jd_zdjr_activityId=$4     ## 活动 activityId；需手动抓包
    export jd_zdjr_activityUrl=$5    ## 活动 activityUrl；需手动抓包
    . /ql/config/env.sh
    local envs=$(eval echo "\$JD_COOKIE")
    local array=($(echo $envs | sed 's/&/ /g'))
    local user_sum=${#array[*]}
    local a b i j t sum
    [[ $q -ge $(($user_sum/p)) ]] && q=$(($user_sum/p))
    if [[ -f /ql/scripts/$scr ]]; then
        for ((m = 0; m < $user_sum; m++)); do
            j=$((m + 1))
            x=$((m/q))
            y=$(((p - 1)*m + 1))
            COOKIES_HEAD="${array[x]}"
            COOKIES=""
            if [[ $j -le $q ]]; then
                for ((n = 1; n < $p; n++)); do
                    COOKIES="$COOKIES&${array[y]}"
                    let y++
                done
            elif [[ $j -eq $((q + 1)) ]]; then
                for ((n = 1; n < $((p-1)); n++)); do
                    COOKIES_HEAD="${array[x]}&${array[0]}"
                    COOKIES="$COOKIES&${array[y]}"
                    let y++
                done
            elif [[ $j -gt $((q + 1)) ]]; then
                [[ $((y+1)) -le $user_sum ]] && y=$(((p - 1)*m)) || break
                for ((n = $m; n < $((m + p -1)); n++)); do
                    COOKIES="$COOKIES&${array[y]}"
                    let y++
                    [[ $y = $x ]] && y=$((y+1))
                    [[ $((y+1)) -gt $user_sum ]] && break
                done
            fi
            result=$(echo -e "$COOKIES_HEAD$COOKIES")
            if [[ $result ]]; then
                export JD_COOKIE=$result
                case $scr in
                    *.js)
                        node /ql/scripts/$scr
                        ;;
                    *.sh)
                        bash /ql/scripts/$scr
                        ;;
                esac
            fi
#           echo $JD_COOKIE
        done
    else
        echo "未找到 $scr ，请确认后重试！"
    fi
}

task_name=(
  jd_sddd
  gua_xmGame
)

case $@ in
    jd_sddd)
        team_task 6 1 $scr1                                                                                                          ##送豆得豆
        ;;
    gua_xmGame)
        team_task 11 1 $scr2                                                                                                         ##小米-星空大冒险
        ;;
    *)
        for ((i = 0; i < ${#task_name[*]}; i++)); do
            bash /ql/config/team.sh ${task_name[i]}
        done
        ;;
esac

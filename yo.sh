blue='\e[0;34'
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'

banner(){
echo -e $cyan" __  __                ____           _     _"
echo -e $cyan"|  \/  | __ _ ___ ___ / ___|_ __ __ _| |__ | |__   ___ _ __"
echo -e $cyan"| |\/| |/ _- / __/ __| |  _| -__/ _- | -_ \| -_ \ / _ \ -__|"
echo -e $cyan"| |  | | (_| \__ \__ \ |_| | | | (_| | |_) | |_) |  __/ |"
echo -e $cyan"  |_|  |_|\__,_|___/___/\____|_|  \__,_|_.__/|_.__/ \___|_|"
echo -e $cyan"[ Author By Dhen Bhocil ] [ Priv B0ot Gank ]"
echo -e $cyan"Update Fixed Page Dump\n\n"

read -p "Chose Page => " hal1;
read -p "Chose To Page => " hal2
}
banner
for((i=$hal1;i<=$hal2;i++))
do
curr=$(curl -s "http://tobira.sakura.ne.jp/doukyo/iplist.php?p=$i" | grep -oP '<a href="/doukyo/(.*?)">(.*?)</a>' | grep -F "." | cut -d "<" -f2 | cut -d ">" -f2 )
c=$(echo "$curr" | wc -l)
b=$(cat Grab.txt | wc -l 2>/dev/null)
if [[ $curr =~ '.' ]]; then
echo "$curr" >> Grab.txt

echo -e "\033[42;1m -- \033[0m ${okegreen}Found => Page $i => Total $c | $b Sites";
else
echo -e "\033[41;1m -- \033[0m ${red} [-]Error"
fi
done

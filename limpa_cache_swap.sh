# SCRIPT limpa cache e swap disco
# EXECUTAR SCRIPT COMO ROOT
# Edit by Oscar 10/09/2018
#
echo "---- SCRIPT LIMPA SWAP E CACHE ----"
sync; echo 3 > /proc/sys/vm/drop_caches
sysctl -w vm.drop_caches=3
swapoff -a && swapon -a
echo "Executado script Limpa cache e swap disco:" $(date +"%x %r") > ./log_scriptCleanCache
echo "---- SCRIPT EXECUTADO COM SUCESSO ----"
# FIM script

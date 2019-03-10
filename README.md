# clearSwapmemory
Shell script to clean cash memory and swap

Esse script é ideal para VM's e hosts que possui alto trafego de memoria ram e uso de SWAP com aplicações docker e java.

O script deve ser criado e agendado no cron para ser executado na frequencia de sua necessidade.

Criar o arquivo com o comando abaixo e adicionar o conteúdo do arquivo:

`$ sudo vi /etc/limpa_cache_swap.sh`

Dar permissão de execução para o script:

`$ chmod + X limpa_cache_swap.sh`

Executar o script:

`$ sudo ./limpa_cache_swap.sh`

Com isso, caso execute com sucesso, o script irá gravar um arquivo de log em: */var/log/log_script_clear_cash_swap.txt*

A partir disso, com o script funcional, você pode adicionar um cron no crontab para esse script ser executado diariamente ou semanalmente:

`$ sudo vi /etc/crontab`

Adicionar a seguinte linha, com isso o script será iniciado todo dia as 03hrs de segunda a sexta-feira:

`00 03 * * 0-6 root /etc/limpa_cache_swap.sh`

Após isso, reiniciar o cron para efetivar a alteração:

`$ sudo systemctl start crond.service`

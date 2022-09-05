**INPUT="/root/scripts/file.txt"**
**Здесь указывается файл в котором указываем сервера в виде **
user@IP-PORT


**Крон задачу в /etc/cron.d/**
**Запускаем каждый час**

echo -e "#/bin/bash\n*/60 * * * * root /to/path/scripts.sh" > /etc/cron.d/copy

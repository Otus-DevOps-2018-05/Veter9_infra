# Veter9_infra
Veter9 Infra repository

Первые 6 домашек без какого-либо описания, потому что тупанул. 
Сейчас уже не буду добавлять ибо лень. 


## Выполнение самостоятельного домашнего задания 7.

Домашнее задание Terraform-2

- Сделал импорт существующей инфраструктуры
- Разбил на модули terraform
- Добавил переменные глобальные модулей
- Добавил значение атрибутов с других ресурсов
- Проверена работа  зависимостей
- Новый модуль vpс добавил
- Добавил директории stage и prod и туда перенес все конфиги
- Почистил корень проекта терраформ, разнес все по директориям
- Параметризированы необходимые переменные
- Конфигурационные файлы имеют форматирование согласно terraform fmt

## Выполнение ДЗ 8 ansible-1
- Создал новый бранч ansible
- Добавил новую директорию и файлом requirements.txt
- установил python-pip пакет
- установил ansible через pip
- вернулся в директорию stage и поднял виртуалку на gcp
- создал новый файл inventory в ansible
- пинганул созданный хост через модуль ансибл
- пинганул вторй сервер db, не забыв добавить его параметры второй строчкой в инвентор
- создал файла конфига ансибла ansible.cfg и заполнил его
- убрал лишнее из инвентори
- разделил хосты по группам
- поигрался с модулями(вне дз)
- сделал первый коммит
- поигрался с модулями в рамках слайдов практики
- удивился и обрадовался как это здорово, что есть готовые модули,уркал пару идей для своей работы
- создал файл clone.yml и залил конфиг для плейбука
- По заданию на слайде 29: я так понял копирование с клона было, а перезаливка в директорию не было.
- по ошибке все пульнул в бранч ансибл-2
- переделал и пульнул все в ансибл-1

## Выполнение ДЗ 9 ansible-2
- чекаутнулся на бранч ansible-2 (он уже был создан по ошибке в предыжущем дз)
- создал папку templates, в ней создал файл конфигурации mongod.conf.j2 (l;byl;f&)
- создал плейбук reddit_app.yml
- обновил гитигнор
- добавил модуль template в ямл файл и указал тэг
- добавил директорию templates, куда закинул новый файл шаблона джинджи
- прочекал плейбук в консоли
- предыдущий шаг был с ошибкой. добавил переменные mongo_bind_ip в плейбук
- прочекал ещё раз - всё отлично
- в плейбук добавляем хэндлер для рестарта монги
- снова всё чекаем(хорошая практика)
- первый коммит (слайд 24)
- создал директорию files 
- добавил внутрь новый файл puma.service
- добавил новое задание в reddit_app.yml для копирование файла на хост 
- добавил ещё один хэндлер
- добавил новый шаблон db_config.j2 в папку templates
- добавил новый таск для копирования нового шаблона
- объявил переменную. IP internal на слайде совпал с моим internal IP GCP
- запустил первый чек -всё ок
- применил таски на реальной машине gcp 
- переходим к деплою (заметка для себя)
- сделал второй коммит (слайд 35)




после выполнения дз ирерахия директорий выглядит так:
```
├── requirements.txt
├── run.py 
└── templates



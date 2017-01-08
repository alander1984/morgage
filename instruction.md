# Инструкция пользователя #
Разработанный макет предоставляет возможность:

 - Ведение справочников
 - Регистрации и просмотра заявок
 - Формирование кредитного досье и выдачи кредита
 

Все функции доступны без авторизации, так как макет демонстрирует содержательную базовую часть операций, выполняемых при работе с заявкой/досье.

## Ведение справочников ##

В рамках макета реализовано заполнение справочников

 - Страховое обеспечение
 - Продукты
 - Опции продуктов

Для продуктов и опций предусмотрена единая форма управления содержимым
сюда вставить картинку
Для добавления продуктов и опций необходимо нажать соответствующие кнопки вверху формы

При выставлении признака "Архивный" для продукта или опции в общем реестре в справочник продуктов и опций он будет попадать в раздел "Архив", который разворачивается при нажатии на заголовок раздела.

Архивные продукты и опции недоступны для выбора в основных процессах макета, таких как выдача кредита.

Указанные справочники заполнены по умолчанию элементами с сайта дом.рф из раздела http://дом.рф/partners/general_conditions/products/

### Страховое обеспечение ###
Справочник страхового обеспечения представляет собой классический справочник и применяется для проверки корректности выбранных опций страхования кредитного досье выбранному в рамках него кредитному продукту. 

Переход в справочник страхового обеспечения осуществляется из главного меню Справочники->Виды Страхования.

Так как в рамках макета историчность, актуальность не требуется, то актуальными и действующими видами страхования в рамках системы считаются все присутствующие в системе виды страхования.
Удаление видов страхования не допускается, если присутствуют зарегистрированные кредитные досье, использующие данные элементы.

### Добавление/редактирование продукта ###

Все поля продукта кроме "Совместимость с ипотечными опциями" и "Страховое обеспечение" являются простыми полями и разработаны в соответствии с формой карточкой продукта сайта дом.рф

Для добавления совместимых опций доступны опции без признака "Архивная". После их добавления в доступные, они удаляются из списка доступных для добавление, и наоборот, при удалении из совместимых - они возвращаются в доступные для добавления.

Продукту можно сопоставить несколько необходимых видов страхования. Для выбора доступны все элементы, находящиеся в справочнике "Виды страхования". Если для продукта уже определен выбранный в выпадающем списке вид страхования, то он не будет добавляться повторно.

### Добавление/редактирование опции ###

Опции могут быть совместимы не только с продуктами, но и с опциями, поэтому наравне с выбором совместимых с опцией продуктов для заполнения доступен выбор совместимых опций. В списке доступных опций отображаются только не архивные элементы

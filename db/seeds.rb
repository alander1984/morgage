# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

mGos = Product.create(
		#Наименование
		name: "Ипотека с государственной поддержкой",
		#Утвержден
		NPA: "приказом от 25.07.2016 № 219-од",
		#Дата начала действия
		startdate: "26.07.2016",
		#Аудитория
		audience: "Физические лица, кроме участников накопительно-ипотечной системы жилищного обеспечения военнослужащих",
		#Цель кредита
    target: "1. Приобретение у юридического лица (первого собственника жилого помещения, зарегистрировавшего право собственности на квартиру после ввода объекта недвижимости в эксплуатацию, за исключением случаев, когда таким юридическим лицом является управляющая компания инвестиционного фонда) квартиры в многоквартирном доме (в том числе доме блокированной застройки) путем заключения договора купли продажи.\n2. Приобретение у юридического лица (застройщика, инвестора и т.п., за исключением случаев, когда таким юридическим лицом является управляющая компания инвестиционного фонда) квартиры в многоквартирном доме (в том числе жилом доме блокированной застройки) путем заключения договора участия в долевом строительстве (договора уступки прав требований по договору участия в долевом строительстве) в соответствии с Федеральным законом от 30 декабря 2004 г. № 214-ФЗ «Об участии в долевом строительстве многоквартирных домов и иных объектов недвижимости и о внесении изменений в некоторые законодательные акты Российской Федерации»",
    #Срок кредита
    months: "От 36 до 360 месяцев",
    #Сумма кредита
    sAmount: "1. Минимальная: 300 000 руб.\n2. Максимальная:\n8,00 млн руб. — для Москвы, Московской области, Санкт-Петербурга, Ленинградской области;\n3,00 млн руб. — для остальных регионов",
    #Залоговое обеспечение
    pledge: "Залог приобретаемой на этапе строительства квартиры:\nНа этапе строительства — залог прав требований участника долевого строительства (с оформлением закладной). Приобретаемая квартира должна находиться в объекте, включенном в один из перечней аккредитованных объектов строительства, размещенных на сайте АО «АИЖК» на дату предложения закладной выкупу;\nПо факту оформления права собственности на приобретаемую квартиру — залог квартиры (с оформлением закладной)",
    #Страхование
    insurance: "",
    #Коэффициент К/З
    cpCoeff: "Первоначальный взнос должен составлять не менее 20% стоимости приобретаемой квартиры по договору приобретения (без применения округления).\nНе более 80%, за исключением случаев, описанных в пп. 3-4.\nНе более 60% — если предмет ипотеки расположен в населенном пункте, отнесенном к 5 группе населенных пунктов*.\nНе более 50% — если при определении платежеспособности учитывается доход только от предпринимательской деятельности и/или доход заемщика-собственника бизнеса (полученный от этого бизнеса).\nВ случае применения совместно с продуктом опции, не допускается превышение максимального значения коэффициента К/З, установленного продуктом.",
    #Порядок предоставления кредита
    rule: "Ипотечный кредит (заем) предоставляется единовременно",
    #Процентная ставка и порядок погашения кредита
    percent: "Значение процентной ставки, вычетов и надбавок, утвержденные АО «АИЖК».\nПогашение аннуитетными ежемесячными платежами.",
    isArchive: false
  )

mReady = Product.create(
    #Наименование
    name: "Приобретение готового жилья",
    #Утвержден
    NPA: "приказом от 26.08.2016 № 235-од",
    #Дата начала действия
    startdate: "01.09.2016",
    #Аудитория
    audience: "Физические лица, кроме участников накопительно-ипотечной системы жилищного обеспечения военнослужащих",
    #Цель кредита
    target: "Приобретение квартиры в многоквартирном доме (в том числе жилом доме блокированной застройки) путем заключения договора купли-продажи.\nПриобретение объекта недвижимости, находящегося в собственности АО «АИЖК»",
    #Срок кредита
    months: "От 36 до 360 месяцев",
    #Сумма кредита
    sAmount: "Редакция, действующая с 01.09.2016:\nМинимальная: 300 000 руб.\nМаксимальная сумма в зависимости от местонахождения предмета ипотеки не может превышать:\n20,00 млн руб. – для г. Москвы, Московской области и г. Санкт-Петербурга;\n10,00 млн руб. – для иных субъектов Российской Федерации.",
    #Залоговое обеспечение
    pledge: "Залог приобретаемого объекта недвижимости (с оформлением закладной) — по факту оформления права собственности на приобретаемое жилье",
    #Страхование
    insurance: "Личное страхование (оформляется по желанию заемщика).",
    #Коэффициент К/З
    cpCoeff: "Не более 80%, за исключением случаев, описанных в пп. 2-3. Не более 60% — если предмет ипотеки расположен в населенном пункте, отнесенном к 5 группе населенных пунктов.\nНе более 50% — если при определении платежеспособности учитывается доход только от предпринимательской деятельности и/или доход заемщика-собственника бизнеса (полученный от этого бизнеса).\nВ случае применения совместно с продуктом опции, максимальное значение коэффициента К/З устанавливается условиями опции.",
    #Порядок предоставления кредита
    rule: "Ипотечный кредит (заем) предоставляется единовременно",
    #Процентная ставка и порядок погашения кредита
    percent: "Значения процентной ставки, вычетов и надбавок, утвержденные АО «АИЖК».\nПогашение аннуитетными ежемесячными платежами.\nДля опции «Переменная ставка» применяются процентная ставка и порядок погашения, установленные условиями опции.",
    isArchive: false
  )

mBuilding = Product.create(
    #Наименование
    name: "Приобретение квартиры на этапе строительства",
    #Утвержден
    NPA: "приказом от 26.08.2016 № 235-од",
    #Дата начала действия
    startdate: "01.09.2016",
    #Аудитория
    audience: "Физические лица, кроме участников накопительно-ипотечной системы жилищного обеспечения военнослужащих",
    #Цель кредита
    target: "Приобретение квартиры в многоквартирном доме (в том числе в жилом доме блокированной застройки) путем заключения договора участия в долевом строительстве (договора уступки прав требований по договору участия в долевом строительстве) в соответствии с Федеральным законом от 30 декабря 2004 г. № 214-ФЗ «Об участии в долевом строительстве многоквартирных домов и иных объектов недвижимости и о внесении изменений в некоторые законодательные акты Российской Федерации»",
    #Срок кредита
    months: "От 36 до 360 месяцев",
    #Сумма кредита
    sAmount: "Редакция, действующая с 01.09.2016:\nМинимальная: 300 000 руб.\nМаксимальная сумма в зависимости от местонахождения предмета ипотеки не может превышать:\n20,00 млн руб. — для г. Москвы, Московской области и г. Санкт-Петербурга;\n10,00 млн руб. — для иных субъектов Российской Федерации.",
    #Залоговое обеспечение
    pledge: "Залог приобретаемой на этапе строительства квартиры:\nна этапе строительства — залог прав требования участника долевого строительства (с оформлением закладной). Приобретаемая квартира должна находиться в объекте, включенном в один из перечней аккредитованных объектов строительства, размещенных на сайте АО «АИЖК» на дату предложения закладной выкупу;\nпо факту оформления права собственности на приобретаемую квартиру — залог квартиры (с оформлением закладной).",
    #Страхование
    insurance: "Личное страхование оформляется по желанию заемщика.",
    #Коэффициент К/З
    cpCoeff: "Не более 80%, за исключением случаев, описанных в пп. 2-3. \nНе более 60% — если предмет ипотеки расположен в населенном пункте, отнесенном к 5 группе населенных пунктов.\n Не более 50% — если при определении платежеспособности учитывается доход только от предпринимательской деятельности и/или доход заемщика-собственника бизнеса (полученный от этого бизнеса).\nВ случае применения совместно с продуктом опции, максимальное значение коэффициента К/З устанавливается условиями опции.",
    #Порядок предоставления кредита
    rule: "Ипотечный кредит (заем) предоставляется единовременно",
    #Процентная ставка и порядок погашения кредита
    percent: "Значения процентной ставки, вычетов и надбавок, утвержденные АО «АИЖК».\nПогашение аннуитетными ежемесячными платежами.\nДля опции «Переменная ставка» применяются процентная ставка и порядок погашения, установленные условиями опции.",
    isArchive: false
  )

mPerecredit = Product.create(
    #Наименование
    name: "Перекредитование",
    #Утвержден
    NPA: "приказом от 26.08.2016 № 235-од",
    #Дата начала действия
    startdate: "01.09.2016",
    #Аудитория
    audience: "Физические лица, кроме участников накопительно-ипотечной системы жилищного обеспечения военнослужащих",
    #Цель кредита
    target: "Полное погашение задолженности по действующему ипотечному кредиту (займу), ранее выданному (предшествующий ипотечный кредит (заем) заемщику кредитором (займодавцем) (предшествующий кредитор) на следующие цели:\nПриобретение квартиры по договору купли-продажи.\nПриобретение квартиры на этапе строительства путем заключения договора участия в долевом строительстве (договора уступки прав требований по договору участия в долевом строительстве).",
    #Срок кредита
    months: "От 36 до 360 месяцев",
    #Сумма кредита
    sAmount: "Редакция, действующая с 01.09.2016:\nМинимальная: 300 000 руб\nМаксимальная сумма не может превышать наименьшую из сумм:\n20,00 млн руб. – для г. Москвы, Московской области и г. Санкт-Петербурга;
10,00 млн руб. – для иных субъектов Российской Федерации.\nсумму всех обязательств заемщика перед предшествующим кредитором по предшествующему ипотечному кредиту (займу).\nВ случае недостаточности максимальной суммы ипотечного кредита (займа) для погашения всех обязательств заемщика перед предшествующим кредитором, ипотечный кредит (заем) выдается только при условии, что недостающую сумму заемщик вносит за счет собственных средств.\nВ случае если валюта предшествующего кредита (займа) отличается от валюты ипотечного кредита (займа), сумма ипотечного кредита (займа) рассчитывается в рублях РФ по индивидуальному курсу, установленному предшествующим кредитором для погашения предшествующего кредита (займа), но не превышающему курс Центрального банка Российской Федерации, установленный на дату фактического предоставления ипотечного кредита (займа).",
    #Залоговое обеспечение
    pledge: "Залог квартиры, на приобретение которой был предоставлен предшествующий кредит (заем):\nна этапе строительства — залог прав требования участника долевого строительства (с оформлением закладной). Приобретаемая на этапе строительства квартира должна находиться в объекте, включенном в один из перечней аккредитованных объектов строительства, размещенных на сайте АО «АИЖК» на дату предложения закладной выкупу;\nпосле государственной регистрации права собственности на приобретаемую квартиру — залог квартиры
(с оформлением закладной).\nДо даты прекращения предшествующей ипотеки кредитор самостоятельно определяет вид обеспечения (при наличии согласия предшествующего кредитора на последующий залог — последующий залог имущества, которое является обеспечением по предшествующему ипотечному кредиту (займу), поручительство физических лиц, залог иного имущества заемщика и пр.) либо не требует оформления дополнительного обеспечения.",
    #Страхование
    insurance: "Личное страхование (оформляется по желанию заемщика).",
    #Коэффициент К/З
    cpCoeff: "Не более 80%, за исключением случаев, описанных в пп. 2-3. \nНе более 60% — если предмет ипотеки расположен в населенном пункте, отнесенном к 5 группе населенных пунктов.\n Не более 50% — если при определении платежеспособности учитывается доход только от предпринимательской деятельности и/или доход заемщика-собственника бизнеса (полученный от этого бизнеса).\nВ случае применения совместно с продуктом опции, максимальное значение коэффициента К/З устанавливается условиями опции.",
    #Порядок предоставления кредита
    rule: "Ипотечный кредит (заем) предоставляется единовременно",
    #Процентная ставка и порядок погашения кредита
    percent: "Значения процентной ставки, вычетов и надбавок, утвержденные АО «АИЖК». До момента подтверждения регистрации ипотеки в пользу кредитора и отсутствия иных обременений (в том числе в пользу предшествующего кредитора) кредитор может самостоятельно установить повышенное значение процентной ставки.\nПогашение аннуитетными ежемесячными платежами.\nДля опции «Переменная ставка» применяются процентная ставка и порядок погашения, установленные условиями опции.",
    dopinfo: "1. Предшествующий кредитор является юридическим лицом\n2 В отношении состава заемщиков/залогодателей дополнительно предъявляются следующие требования:\n2.1 Состав заемщиков по предшествующему кредиту (займу) может изменяться\n2.2 Состав залогодателей по ипотечному кредиту (займу) по сравнению с составом залогодателей по предшествующему кредиту может изменяться только в случаях, когда:\nизменение состава залогодателей обусловлено изменением состава собственников предмета ипотеки;\n
необходимость изменения состава залогодателей продиктована требованиями законодательства РФ;\n
необходимость изменения состава залогодателей продиктована требованиями Стандартов и/или иных регламентирующих документов АО «АИЖК».\n2.3 Один из заемщиков-залогодателей по предшествующему кредиту (займу) должен являться заемщиком-залогодателем по ипотечному кредиту (займу)\n3. На дату заключения кредитного договора (договора займа)
в отношении заемщиков и/или залогодателей по предшествующему кредиту (займу) должны отсутствовать основания для предъявления предшествующим кредитором требований о полном досрочном погашении предшествующего кредита (займа)\n4. В качестве ипотечных кредитов (займов), предоставленных на цели погашения предшествующего ипотечного кредита (займа), рассматриваются ипотечные кредиты (займы), отвечающие следующим условиям (по состоянию на дату предоставления)\n4.1 По предшествующему ипотечному кредиту (займу) произведены ежемесячные платежи не менее чем за 6 (шесть) процентных периодов.\n4.2 По предшествующему ипотечному кредиту (займу) отсутствуют:\nтекущая просроченная задолженность;
 просроченные платежи сроком более 30 дней в течение последних 6 месяцев;\nпросроченные платежи сроком более 60 дней за последние 3 года.\n4.3 Отсутствуют непогашенные просроченные платежи по уплате страховых взносов по договору имущественного страхования.",
    isArchive: false
  )

mZalog = Product.create(
    #Наименование
    name: "Целевой кредит под залог имеющейся квартиры",
    #Утвержден
    NPA: "приказом от 26.08.2016 № 235-од",
    #Дата начала действия
    startdate: "01.09.2016",
    #Аудитория
    audience: "Физические лица, кроме участников накопительно-ипотечной системы жилищного обеспечения военнослужащих",
    #Цель кредита
    target: "1. Приобретение заемщиком (заемщиком и иными лицами) жилья на первичном рынке недвижимости в многоквартирном доме (в том числе жилом доме блокированной застройки):\nпутем заключения договора участия в долевом строительстве (договора уступки прав требования по договору участия в долевом строительстве) в соответствии с Федеральным законом от 30 декабря 2004 года № 214-ФЗ «Об участии в долевом строительстве многоквартирных домов и иных объектов недвижимости и о внесении изменений в некоторые законодательные акты Российской Федерации»;\nпутем оплаты паевого взноса в ЖСК;\nиные установленные законодательством формы приобретения жилого помещения.\n2. Приобретение заемщиком (заемщиком и иными лицами) жилья на вторичном рынке путем заключения договора купли-продажи.",
    #Срок кредита
    months: "От 36 до 360 месяцев.",
    #Сумма кредита
    sAmount: "Редакция, действующая с 01.09.2016:\nМинимальная: 300 000 руб.\nМаксимальная сумма в зависимости от местонахождения предмета ипотеки:\n20,00 млн руб. — для г. Москвы, Московской области и г. Санкт-Петербурга;
10,00 млн руб. — для иных субъектов Российской Федерации.\nСумма кредита (займа) не может превышать стоимость приобретаемого жилья согласно договору приобретения.",
    #Залоговое обеспечение
    pledge: "1. Залог имеющейся в собственности заемщика (заемщика и иных лиц) квартиры (с оформлением закладной).\n2. В случае, если приобретаемая недвижимость соответствует требованиям АО «АИЖК» к залоговому обеспечению (вид — квартира, значение коэффициента К/З соответствует требованиям продукта) — после оформления права собственности на заемщика (заемщика и иных лиц) возможна замена залогового обеспечения.",
    #Страхование
    insurance: "Личное страхование оформляется по желанию заемщика.",
    #Коэффициент К/З
    cpCoeff: "1. Не более 60%, за исключением случаев, описанных в п. 2.\n2. Не более 50% — если при определении платежеспособности учитывается доход только от предпринимательской деятельности и/или доход заемщика-собственника бизнеса (полученный от этого бизнеса).",
    #Порядок предоставления кредита
    rule: "Ипотечный кредит (заем) предоставляется единовременно.",
    #Процентная ставка и порядок погашения кредита
    percent: "1. Процентная ставка устанавливается в размере, соответствующем продукту «Приобретение готового жилья».\n2. До момента подтверждения целевого использования ипотечного кредита (займа) процентная ставка увеличивается на 1,25 п.п. Подтверждающими документами являются заключенный договор приобретения (если договор/сделка подлежат государственной регистрации, то договор должен быть зарегистрирован), платежные документы, подтверждающие оплату по договору.\n3. Погашение аннуитетными ежемесячными платежами.",
    dopinfo: "В составе собственников имеющейся квартиры, передаваемой в залог, не должно быть несовершеннолетних детей или недееспособных (ограниченно дееспособных) лиц.",
    isArchive: false
  )

mMilitary = Product.create(
    #Наименование
    name: "Военная ипотека",
    #Утвержден
    NPA: "приказом № 369-од от 27.12.2016",
    #Дата начала действия
    startdate: "01.01.2017",
    #Аудитория
    audience: "Военнослужащие – участники накопительно-ипотечной системы жилищного обеспечения военнослужащих (участники НИС).",
    #Цель кредита
    target: "1. Приобретение квартиры в многоквартирном доме (в том числе доме блокированной застройки) путем заключения договора купли-продажи.\n2. Приобретение квартиры в многоквартирном доме (в том числе в доме блокированной застройки) путем заключения договора участия в долевом строительстве в соответствии с Федеральным законом от 30.12.2004 № 214-ФЗ «Об участии в долевом строительстве многоквартирных домов и иных объектов недвижимости и о внесении изменений в некоторые законодательные акты Российской Федерации».\nПриобретаемая на этапе строительства квартира должна находиться в объекте, включенном в перечень объектов, аккредитованных для Участников НИС, размещенный на сайте АО «АИЖК» и ФГКУ «Росвоенипотека» на дату подписания договора целевого жилищного займа и предложения закладной выкупу.",
    #Срок кредита
    months: "Срок кредита (займа) равен сроку целевого жилищного займа (ЦЖЗ) согласно свидетельству о праве участника НИС на получение средств ЦЖЗ, но не менее 36 месяцев.",
    #Сумма кредита
    sAmount: "1. Минимальная: 300 000 (триста тысяч) рублей.\n2. Максимальная: 2 100 000 (два миллиона сто тысяч) рублей, при этом может быть увеличена на условиях п. 4.\n3. Сумма кредита (займа) для каждого заемщика определяется расчетным способом в зависимости от процентной ставки, срока кредита (займа), размера накопительного взноса участника НИС, утвержденного в соответствии с федеральным законом о федеральном бюджете в год выдачи ипотечного кредита (займа) и с учетом прогнозных значений ежегодных индексаций накопительного взноса участника НИС.\n4. В сумму кредита (займа), по решению участника НИС, может быть включена сумма средств ЦЖЗ, оставшихся после оплаты первоначального взноса (1,4 млн рублей), в размере не более 600 000 рублей.",
    #Залоговое обеспечение
    pledge: "Залог приобретаемого имущества (имущественных прав):\n— на этапе строительства – залог прав требования участника долевого строительства (с оформлением закладной);\n— по факту оформления права собственности на приобретаемую квартиру – залог квартиры (с оформлением закладной).",
    #Страхование
    insurance: "",
    #Коэффициент К/З
    cpCoeff: "1. Не более 80%, за исключением случаев, описанных в п. 2.\n2. Не более 60% – если предмет ипотеки расположен в населенном пункте, отнесенном к 5-й группе населенных пунктов*.\n3. Первоначальный взнос по ипотечному кредиту (займу) может состоять из собственных средств заемщика и/или средств ЦЖЗ, предоставляемого Участнику НИС. Сумма ЦЖЗ, перечисляемая в счет оплаты первоначального взноса:\n‒ не ограничена – в случае открытия участником НИС счета для перечисления средств ЦЖЗ в ПАО АКБ «Связь-Банк», ПАО Банк ЗЕНИТ, ВТБ24 (ПАО), ПАО Сбербанк или в Банк ГПБ (АО);\n‒ не может превышать 1,4 млн рублей – в иных случаях.",
    #Порядок предоставления кредита
    rule: "Ипотечный кредит (заем) предоставляется единовременно.",
    #Процентная ставка и порядок погашения кредита
    percent: "1. Значение процентной ставки, утвержденное АО «АИЖК».\n2. Погашение кредита (займа) осуществляется ежемесячными платежами, размер которых на дату предоставления кредита (займа) не может превышать 1/12 (одну двенадцатую) размера накопительного взноса участника НИС.\n3. Ежегодно размер ежемесячного платежа пересчитывается в соответствии с федеральным законом о федеральном бюджете на очередной финансовый год.\n4. В случае если в течение последних 12 месяцев (в том числе если 12 месяцев не являются одним календарным годом) размер расчетного ежемесячного платежа превышает 1/12 (одну двенадцатую) накопительного взноса участника НИС, то возникающую разницу заемщик погашает за счет собственных средств.\nОстаток средств ЦЖЗ за вычетом средств ЦЖЗ, перечисляемых в счет оплаты первоначального взноса, включается в состав платежа за третий процентный период в соответствии с условиями договора . Предоставление заемщиком заявлений (в адрес кредитора или ФГКУ «Росвоенипотека») на частичное досрочное погашение за счет остатка средств ЦЖЗ не требуется.",
    dopinfo: "1. При закрытии именного накопительного счета участника НИС в случаях, предусмотренных статьей 13 Федерального закона от 20.08.2004 № 117-ФЗ «О накопительно-ипотечной системе жилищного обеспечения военнослужащих» (далее – Закон № 117-ФЗ), заемщик или члены его семьи в случаях, определенных статьей 12 Закона № 117-ФЗ, обязаны исполнять условия заключенного кредитного договора (договора займа) за счет собственных средств. При этом график платежей и процентная ставка за пользование кредитом (займом) изменяются в порядке и с периодичностью, определенными кредитным договором (договором займа).\n2. В случае если участник НИС состоит в зарегистрированном браке, предоставление брачного договора, устанавливающего режим раздельной собственности в отношении приобретаемого недвижимого имущества, не требуется.\n3. Расчет суммы кредита (займа) для каждого заемщика производится с помощью калькулятора АО «АИЖК» по расчету максимальной суммы кредита (займа) по продукту «Военная ипотека»).\n4. В случае включения по решению участника НИС в состав суммы кредита (займа) остатка средств ЦЖЗ (за вычетом средств ЦЖЗ, перечисляемых в счет оплаты первоначального взноса), в платеж за третий процентный период включается сумма, определенная с помощью калькулятора АО «АИЖК» по расчету максимальной суммы кредита (займа) по продукту «Военная ипотека».\n5. Первоначальный график платежей формируется с помощью калькулятора АО «АИЖК» по расчету графика платежей по продукту «Военная ипотека».",
    isArchive: false
  )

oPeremenstavka = Option.create(
  name: "Опция «Переменная ставка»",
  NPA: "приказом от 26.12.2016 № 365-од",
  startdate: "01.01.2017",
  target: "Переменная ставка, погашение кредита (займа) производится фиксированными на протяжении всего срока платежами",
  months: "1. От 36 до 360 месяцев.\n2. Если на дату истечения срока кредитования задолженность по ипотечному кредиту (займу) не погашена в полном объеме при условии отсутствия на указанную дату просроченных платежей и неустойки срок кредитования по заявлению заемщика и на основании заключенного сторонами дополнительного соглашения к кредитному договору (договору займа) может быть продлен однократно на срок, аналогичный сроку кредитования, установленному кредитным договором (договором займа).",
  borrower: "",
  mortgagor: "",
  sAmount: "",
  cpCoeff: "1. Не более 70%, за исключением случаев, описанных в пп. 2-3.\n2. Не более 60% — если предмет ипотеки расположен в населенном пункте, отнесенном к 5 группе населенных пунктов*.\n3. Не более 50% — если при определении платежеспособности учитывается доход только от предпринимательской деятельности и/или доход заемщика-собственника бизнеса (полученный от этого бизнеса).",
  percent: "Процентная ставка (r) — переменная величина, агрегирующая в себе значения двух частей — индексируемой части (INDEX) и маржи (m):\nr = INDEX + m,\nгде\n1. индексируемая часть INDEX зависит от значения индекса потребительских цен на товары и услуги по Российской Федерации и подлежит ежеквартальному плановому пересчету.\nЧасть INDEX определяется на каждый расчетный календарный квартал 15-го числа месяца, предшествующего расчетному календарному кварталу, т.е. 15 декабря, 15 марта, 15 июня, 15 сентября.\nЗначение части INDEX рассчитывается по формуле \nгде\n(i) — месяц предшествующий расчетному календарному кварталу;\nИПЦ(i-1) — индекс потребительских цен на товары и услуги первого месяца, предшествующего месяцу (i), в процентах к предыдущему месяцу;\nИПЦ(i-2) — индекс потребительских цен на товары и услуги второго месяца, предшествующего месяцу (i), в процентах к предыдущему месяцу;\nИПЦ(i-3) — индекс потребительских цен на товары и услуги третьего месяца, предшествующего месяцу (i), в процентах  к предыдущему месяцу\n Показатели ИПЦ(i-1), ИПЦ(i-2), ИПЦ(i-3) публикуются на официальном сайте Росстата.\nПолученное значение части INDEX округляется до двух знаков после запятой по математическим правилам, промежуточное округление не допускается;\n2. маржа m — значение, установленное АО «АИЖК» (m = 5,9 процентного пункта) и подлежащее применению с даты заключения кредитного договора/договора займа до полного погашения ипотечного кредита с учетом следующих условий:\nпри выборе заемщиком на дату заключения кредитного договора (договора займа) условий кредитования без обеспечения в виде личного страхования, часть (m) увеличивается на значение страховой маржи (0,7 процентного пункта);\nпри ненадлежащем исполнении заемщиком принятых обязательств по осуществлению личного страхования (когда заемщик принял на себя обязательство осуществлять личное страхование в течение всего срока действия кредитного договора (договора займа), но не исполняет его) часть (m) увеличивается на значение страховой маржи (0,7 процентного пункта);\nпри применении опции «Справка о доходах по форме Кредитора» часть (m) увеличивается на 0,5 процентного пункта;\nвычеты к части (m) не применяются.\n 1. В случае планового пересчета процентной ставки новое значение процентной ставки начинает действовать с первого календарного дня календарного квартала (соответственно, с 1 января, 1 апреля, 1 июля, 1 октября) по последний календарный день календарного квартала (т.е. по 31.03, 30.06, 30.09, 31.12).\n 2. В случае внепланового пересчета процентной ставки (пересчета части (m) вследствие ненадлежащего исполнения заемщиком принятых обязательств по осуществлению личного страхования) новое значение процентной ставки начинает действовать с первого календарного дня второго календарного месяца, следующего за месяцем, в котором заемщик был уведомлен о пересчете части (m) и дате, с которой действует повышенная процентная ставка.\n3. При проведении планового пересчета процентной ставки график платежей пересчитывается, при этом размер платежа остается неизменным, а срок ипотечного кредита (займа) корректируется (в пределах срока пользования ипотечным кредитом (займом)). При проведении внепланового пересчета процентной ставки график платежей пересчитывается, при этом корректируется срок ипотечного кредита (займа) (в пределах срока пользования ипотечным кредитом (займом)) и размер платежа. Корректировка размера платежа происходит в соответствии с п. 4 Порядка погашения кредита (займа).\n 4. При проведении планового или внепланового пересчета процентной ставки новая процентная ставка начинает действовать без заключения дополнительных соглашений к кредитному договору(договору займа) и без внесения изменений в закладную.\n 5. Процентная ставка не может принимать значения ниже 5 (пяти)% годовых (минимальное значение). Если в результате планового пересчета величина годовой процентной ставки окажется ниже указанного значения, то на расчетный квартал ставка устанавливается в размере минимального значения",
  rule: "1. Погашение осуществляется равными на протяжении всего срока ипотечного кредита (займа) аннуитетными платежами.\n2. Изменение размера аннуитетного платежа осуществляется только при внеплановом пересчете процентной ставки при ненадлежащем исполнении заемщиком обязательств по личному страхованию.\n3. Размер платежа определяется на дату заключения кредитного договора/договора займа по формуле\nК — понижающий коэффициент, устанавливается в размере 95 %;\nСК — сумма кредита (займа);\nБПС — базовая процентная ставка, равная 1/12 от фиксированной процентной ставки, установленной АО «АИЖК» на дату расчета размера платежа по продукту, с которым применяется опция, для аналогичного значения К/З с применением вычетов и надбавок (при наличии оснований);\nПП — количество процентных периодов срока кредитования в месяцах минус 1 (один) месяц. Определенное по формуле значение округляется до целого числа в большую сторону.\n4. При внеплановом пересчете процентной ставки (вследствие ненадлежащего исполнения заемщиком принятых обязательств по осуществлению личного страхования) размер платежа, определенного по формуле, указанной в п. 3 Порядка погашения кредита (займа), увеличивается на 5 %.\n5. График платежей рассчитывается с учетом следующего:\nс даты заключения кредитного договора (договора займа) (с даты планового или внепланового пересчета процентной ставки) по конец данного календарного года расчет производится исходя из процентной ставки, определенной на дату заключения кредитного договора (договора займа) (дату планового или внепланового пересчета процентной ставки);\nна оставшийся период расчет осуществляется в соответствии с прогнозными значениями индекса потребительских цен на товары и услуги в соответствии с Денежно-кредитной политикой, опубликованной на сайте Банка России. При этом при отсутствии прогнозного показателя на определенный год используется опубликованный прогнозный показатель, максимально приближенный к данному году"
)

oMatKap = Option.create(
  name: "Опция «Материнский капитал»",
  NPA: "приказом от 26.08.2016 № 235-од",
  startdate: "01.09.2016",
  #Назначение
  target: "Возможность использования средств материнского (семейного) капитала (МСК) для увеличения суммы ипотечного кредита (займа) и сокращения размера первоначального взноса.",
  months: "",
  borrower: "1. Хотя бы одним из заемщиков должен выступать распорядитель средствами МСК.\n2. В число заемщиков могут быть включены иные лица.",
  mortgagor: "1. Залогодателем (собственником приобретаемого недвижимого имущества/ ранее приобретенного недвижимого имущества по предшествующему кредиту (займу) в рамках продукта «Перекредитование») должен выступать распорядитель средствами МСК.\n2. В число залогодателей дополнительно могут быть включены:\nсупруг распорядителя средствами МСК, при условии, что супруг является солидарным заемщиком по ипотечному кредиту (займу);\nнесовершеннолетние дети распорядителя средств МСК.\n3. Иные лица не могут быть включены в число залогодателей.",
  sAmount: "Сумма кредита (займа) может быть увеличена частично или полностью на сумму средств МСК (сумма с учетом средств МСК) при выполнении следующих условий:\n1. заемщик удовлетворяет требованиям по платежеспособности на сумму кредита (займа) без учета средств МСК;\n2. соблюдены требования к размеру коэффициента К/З, установленные настоящим паспортом;\n3. соблюдены требования к максимальной сумме кредита (займа), установленные паспортом ипотечного продукта, с которым применяется опция.",
  cpCoeff: "1. С учетом средств МСК коэффициент К/З составляет:\n1.1 не более 90% — для всех продуктов и опций (за исключением случаев, описанных в пп. 1.2—1.4);\n1.2 не более 80% — для продукта «Ипотека с государственной поддержкой» (при этом должны выполняться требования продукта к размеру первоначального взноса) (за исключением случаев, описанных в п. 1.3—1.4);\n1.3 не более 60% — если предмет ипотеки расположен в населенном пункте, отнесенном к 5 группе населенных пунктов*;\n1.4 не более 50% — если при определении платежеспособности учитывается доход только от предпринимательской деятельности и/или доход заемщика-собственника бизнеса (полученный от этого бизнеса).\n2. Без учета средств МСК — коэффициент К/З не может превышать значений, установленных паспортом продукта.",
  percent: "В соответствии с паспортом основного продукта. Для расчета размера процентной ставки и возможности применения вычетов используется размер коэффициента К/З для суммы кредита (займа) с учетом средств МСК. При отсутствии значения процентной ставки для соответствующего диапазона К/З, применяются значения процентной ставки и вычеты для максимального диапазона значений К/З.",
  rule: "1. Аннуитетные платежи.\n2. Средства МСК направляются на досрочное погашение кредита (займа). При частичном досрочном погашении кредита (займа) за счет средств МСК происходит уменьшение размера аннуитетного платежа, сокращение срока кредита (займа) не допускается."
)


oApart = Option.create(
  name: "Опция «Апартаменты»",
  NPA: "приказом от 26.08.2016 № 235-од",
  startdate: "01.09.2016",
  #Назначение
  target: "Приобретение нежилых помещений (апартаментов).",
  credittarget: "Приобретение нежилых помещений (апартаментов) путем заключения:\n1. договора купли-продажи.\n2.договора участия в долевом строительстве (договора уступки прав требований по договору участия в долевом строительстве) в соответствии с Федеральным законом от 30 декабря 2004 г. № 214-ФЗ«Об участии в долевом строительстве многоквартирных домов и иных объектов недвижимости и о внесении изменений в некоторые законодательные акты Российской Федерации».",
  months: "",
  borrower: "",
  mortgagor: "",
  sAmount: "Редакция, действующая с 01.09.2016:\n1. Минимальная: 300 000 руб.\n2. Максимальная сумма в зависимости от местонахождения предмета ипотеки не может превышать:\n20,00 млн руб. — для г. Москвы, Московской области и г. Санкт-Петербурга;\n10,00 млн руб. — для иных субъектов Российской Федерации.",
  mort: "Залог приобретаемого нежилого помещения (апартаментов):\n1. на этапе строительства — залог прав требования участника долевого строительства (с оформлением закладной). Приобретаемое нежилое помещение (апартаменты) должно находиться в объекте, включенном в один из перечней аккредитованных объектов строительства, размещенных на сайте АО «АИЖК» на дату предложения закладной к выкупу;\n2. по факту оформления права собственности на приобретаемое нежилое помещение (апартаменты) — залог нежилого помещения (апартаментов) (с оформлением закладной)",
  cpCoeff: "1. Не более 80% — в случае приобретения апартаментов на этапе строительства путем заключения договора участия в долевом строительстве (договора уступки прав требований по договору участия в долевом строительстве), за исключением случаев, описанных в пп.3-4.\n2. Не более 70% — в случае приобретения апартаментов путем заключения договора купли-продажи, за исключением случаев, описанных в пп. 3-4.\n3. Не более 60% — если предмет ипотеки расположен в населенном пункте, отнесенном к 5 группе населенных пунктов.\n4. Не более 50% — если при определении платежеспособности учитывается доход только от предпринимательской деятельности и/или доход заемщика-собственника бизнеса (полученный от этого бизнеса).",
  percent: "1. Процентная ставка устанавливается в соответствии с паспортом основного продукта. Вычеты к процентной ставке не применяются.\n2. Погашение аннуитетными ежемесячными платежами.",
  dopinfo: "Не допускается перевод нежилого помещения (апартаментов) в жилой фонд до полного исполнения обязательств по ипотечному кредиту (займу) и погашения регистрационной записи об ипотеке.",
  rule: ""
)

oSpravka = Option.create(
  name: "Опция «Справка о доходах по форме кредитора»",
  NPA: "приказом от 25.07.2016 № 219-од",
  startdate: "26.07.2016",
  #Назначение
  target: "Подтверждение доходов хотя бы одного из заемщиков справкой по форме, установленной АО «АИЖК».",
  credittarget: "",
  months: "",
  borrower: "",
  mortgagor: "",
  sAmount: "Соответствует требованиям ипотечного продукта",
  mort: "",
  cpCoeff: "Соответствует требованиям ипотечного продукта",
  percent: "Процентная ставка по ипотечному продукту/опции, увеличенная на 0,5 п.п. (за исключением продукта «Ипотека с государственной поддержкой»)",
  dopinfo: "",
  rule: "",
  acceptIncome: "1. Принимаемые к учету доходы заемщика подтверждаются справкой по форме, установленной АО «АИЖК».\n2. Справкой могут подтверждаться доходы заемщиков категории 1* только от работы по найму на основании трудового договора (основному месту работы, совместительству, совмещению). Иные доходы (от предпринимательской деятельности, пенсии и т.д.) подтверждаются согласно Методике оценки кредитоспособности и платежеспособности заемщика АО «АИЖК».\n3. Опция не применяется в отношении заемщиков, трудоустроенных в государственных или муниципальных органах и учреждениях, за исключением органов и учреждений, внутренними распорядительными документами которых установлены ограничения на предоставление своим работникам справок по форме 2-НДФЛ.\n4. Член семьи заемщика или взаимозависимое лицо заемщика (супруг, дети, родители, братья и сестры, в том числе неполнородные) не должны выступать:"
)



mGos.options << oMatKap
mGos.options << oSpravka

mReady.options << oMatKap
mReady.options << oSpravka
mReady.options << oPeremenstavka
mReady.options << oApart

mBuilding.options << oMatKap
mBuilding.options << oSpravka
mBuilding.options << oPeremenstavka
mBuilding.options << oApart

mPerecredit.options << oMatKap
mPerecredit.options << oSpravka
mPerecredit.options << oPeremenstavka

mZalog.options << oSpravka

oPeremenstavka.linkedoptions << oSpravka

oMatKap.linkedoptions << oSpravka

oApart.linkedoptions << oSpravka

oSpravka.linkedoptions << oPeremenstavka
oSpravka.linkedoptions << oMatKap
oSpravka.linkedoptions << oApart

ins_Things = Insurance.create(
    name: 'Имущественное страхование (по факту оформления права собственности заемщика (залогодателя) на приобретаемую квартиру)'
)
ins_Flat = Insurance.create(
    name: "Имущественное страхование закладываемой квартиры"
)

mGos.insurances << ins_Things
mReady.insurances << ins_Things
mBuilding.insurances << ins_Things
mPerecredit.insurances << ins_Things
mZalog.insurances << ins_Flat
mMilitary.insurances << ins_Things
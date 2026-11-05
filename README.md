# SQL Analysis: Revenue, Accounts and Sessions by Continent

## Project Overview
This project analyzes revenue, account activity, and sessions across continents using Google BigQuery. It compares revenue generated from mobile and desktop devices and examines the distribution of verified accounts.

## Objectives
- Analyze revenue distribution across continents.
- Compare mobile and desktop revenue.
- Calculate each continent's share of total revenue.
- Compare account and session counts.
- Identify the number of verified accounts.

## Dataset
The analysis uses the following Google BigQuery tables:
- `DA.product`
- `DA.order`
- `DA.session_params`
- `DA.account_session`
- `DA.account`

## Tools & Technologies
- SQL
- Google BigQuery

## Analysis Process
1. Calculated total revenue by continent.
2. Segmented revenue by device type.
3. Calculated each continent's percentage of total revenue.
4. Counted unique accounts and sessions.
5. Identified verified accounts.
6. Combined all metrics into one result table.

## Key Findings
- **Americas** generated the highest revenue: 17.67M (55.25% of total).
- **Asia** ranked second with 7.60M (23.78%), followed by **Europe** with 5.93M (18.56%).
- **Africa** and **Oceania** contributed 1.04% and 1.14% of total revenue, respectively.
- Desktop revenue exceeded mobile revenue across all continents.
- The analysis included 27,945 accounts, of which 20,036 were verified.
- The `(not set)` category accounted for 0.23% of total revenue.

## Conclusions
Revenue was concentrated in the Americas, while Asia and Europe also made substantial contributions. Desktop devices generated more revenue than mobile devices across all continents. These findings provide an overview of geographical revenue distribution and account activity.

## Project Files
- `query.sql` — SQL query used for the analysis.
- `README.md` — Project overview and key findings.



# SQL-Аналіз: Дохід, Облікові Записи та Сесії за Континентами

## Огляд проєкту
Проєкт аналізує дохід, активність облікових записів і сесії за континентами за допомогою Google BigQuery. Він порівнює дохід із мобільних пристроїв і комп'ютерів, а також досліджує розподіл верифікованих облікових записів.

## Мета проєкту
- Проаналізувати розподіл доходу за континентами.
- Порівняти дохід із мобільних пристроїв і комп'ютерів.
- Розрахувати частку кожного континенту в загальному доході.
- Порівняти кількість облікових записів і сесій.
- Визначити кількість верифікованих облікових записів.

## Дані
Для аналізу використано такі таблиці Google BigQuery:
- `DA.product`
- `DA.order`
- `DA.session_params`
- `DA.account_session`
- `DA.account`

## Інструменти та технології
- SQL
- Google BigQuery

## Етапи аналізу
1. Розрахунок загального доходу за континентами.
2. Розподіл доходу за типами пристроїв.
3. Розрахунок частки кожного континенту в загальному доході.
4. Підрахунок унікальних облікових записів і сесій.
5. Визначення кількості верифікованих облікових записів.
6. Об'єднання всіх показників в одну таблицю.

## Основні результати
- **Americas** отримав найбільший дохід — 17,67 млн (55,25% від загального доходу).
- **Asia** посіла друге місце з доходом 7,60 млн (23,78%), за нею йде **Europe** з 5,93 млн (18,56%).
- **Africa** та **Oceania** забезпечили відповідно 1,04% і 1,14% загального доходу.
- Дохід із комп'ютерів перевищував дохід із мобільних пристроїв на всіх континентах.
- Аналіз охопив 27 945 облікових записів, з яких 20 036 були верифікованими.
- Категорія `(not set)` становила 0,23% загального доходу.

## Висновки
Основна частина доходу припадає на Americas, тоді як Asia та Europe також забезпечують значну частку надходжень. На всіх континентах комп'ютери генерували більше доходу, ніж мобільні пристрої. Отримані результати дають змогу оцінити географічний розподіл доходу та активність облікових записів.

## Файли проєкту
- `query.sql` — SQL-запит, використаний для аналізу.
- `README.md` — опис проєкту та основні результати.

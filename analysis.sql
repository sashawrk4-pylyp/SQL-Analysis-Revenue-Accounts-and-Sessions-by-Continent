
WITH PROD_PAR AS (
   SELECT                                  -- Розрахунок доходу
     par.continent AS continent,
     SUM(prod.price) AS revenue,
     SUM(CASE WHEN par.device = 'mobile' THEN prod.price ELSE 0 END) AS revenue_from_mobile,
     SUM(CASE WHEN par.device = 'desktop' THEN prod.price ELSE 0 END) AS revenue_from_desktop,
     SUM(prod.price) / SUM(SUM(prod.price)) OVER() * 100 AS percent_revenue_from_total
   FROM `DA.product` AS prod
   JOIN `DA.order` AS ord ON prod.item_id = ord.item_id
   JOIN `DA.session_params` AS par ON ord.ga_session_id = par.ga_session_id
   GROUP BY par.continent
),


ACCSES_PAR AS (
   SELECT                                  -- Підрахунок облікових записів і сесій
     par.continent AS continent,
     COUNT(DISTINCT accses.account_id) AS account_count,
     COUNT(accses.ga_session_id) AS session_count
   FROM `DA.account_session` AS accses
   JOIN `DA.session_params` AS par ON accses.ga_session_id = par.ga_session_id
   GROUP BY par.continent
),


ACC AS (
   SELECT                                  -- Підрахунок верифікованих облікових записів
     par.continent AS continent,
     COUNT(DISTINCT CASE WHEN acc.is_verified = 1 THEN acc.id END) AS verified_account
   FROM `DA.account` AS acc
   JOIN `DA.account_session` AS accses ON acc.id = accses.account_id
   JOIN `DA.session_params` AS par ON accses.ga_session_id = par.ga_session_id
   GROUP BY par.continent
)


     SELECT                                -- фінальний запит :)
       p.continent,
       p.revenue,
       p.revenue_from_mobile,
       p.revenue_from_desktop,
       p.percent_revenue_from_total,
       ap.account_count,
       a.verified_account,
       ap.session_count
     FROM PROD_PAR AS p
     JOIN ACCSES_PAR AS ap ON p.Continent = ap.Continent
     LEFT JOIN ACC AS a ON p.Continent = a.Continent;

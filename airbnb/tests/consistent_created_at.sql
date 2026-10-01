select f.listing_id
from {{ ref('fct_reviews') }} f
inner join {{ ref('dim_listings_cleansed') }} d
on f.listing_id = d.listing_id
where f.review_date <= d.created_at
LIMIT 10
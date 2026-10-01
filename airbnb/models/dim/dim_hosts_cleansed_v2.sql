WITH src_listings as (
    SELECT * FROM {{ ref('src_hosts') }}
)
SELECT  
    host_id,
    nvl(host_name, 'N/A') as host_name,
    is_superhost,
    created_at,
    updated_at
FROM    
    src_listings
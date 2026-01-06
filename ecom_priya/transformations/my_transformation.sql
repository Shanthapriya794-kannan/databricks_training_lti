create streaming table shanthapriya_bronze.sales as 
select *, current_timestamp() as ingestion_date from stream read_files("abfss://raw@adlsnaval123.dfs.core.windows.net/ecom/sales");

create streaming table shanthapriya_bronze.products as 
select *, current_timestamp() as ingestion_date from stream read_files("abfss://raw@adlsnaval123.dfs.core.windows.net/ecom/products");

create streaming table shanthapriya_bronze.customers as 
select *, current_timestamp() as ingestion_date from stream read_files("abfss://raw@adlsnaval123.dfs.core.windows.net/ecom/customers");
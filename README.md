# Azure-Data-Engineering

An end-to-end data engineering project using Azure.

## Business Goal

Trust Marketplace aims to determine whether there is a significant difference in purchasing behaviours between male and female customers, to improve targeted advertising and marketing strategies.

## Project Overview



![Project diagram](./Images/TrustData-D.drawio.png)

- Load the data from local SQL Server to Azure using Azure Data Factory.
- Use Azure Data Factory to orchestrate the data pipeline.
- Use Azure Databricks to perform data cleaning and transformation, separated into three stages:
    - Bronze: Raw data
    - Silver: Cleaned data (date standardisation)
    - Gold: Clean data (column names standardisation)
- Use Azure Synapse Analytics to get data schemas.
- Use Power BI to create a dashboard for data visualisation.

## Tools and Technologies
- Azure Data Factory
- Azure Data Lake
- Azure Databricks
- Azure Synapse Analytics
- Power BI
- SQL Server


## Directory Structure
```bash
└── igorsuvalov-azure-data-engineering/
    ├── README.md
    ├── Azure-Synapse/
    │   ├── publish_config.json
    │   ├── credential/
    │   │   └── WorkspaceSystemIdentity.json
    │   ├── dataset/
    │   │   └── Binary1.json
    │   ├── integrationRuntime/
    │   │   └── AutoResolveIntegrationRuntime.json
    │   ├── linkedService/
    │   │   ├── AzureSqlDatabase_Gold.json
    │   │   ├── SynapseServed_Gold.json
    │   │   ├── trust-synapse-WorkspaceDefaultSqlServer.json
    │   │   └── trust-synapse-WorkspaceDefaultStorage.json
    │   ├── pipeline/
    │   │   └── ViewName.json
    │   └── sqlscript/
    │       ├── sp_CreateSQLServerlessView_gold.json
    │       └── SQL script 1.json
    ├── Data-Factory/
    │   ├── publish_config.json
    │   ├── dataset/
    │   │   ├── Parquetsink.json
    │   │   └── SqlServerLocal1.json
    │   ├── factory/
    │   │   └── trust-project-df.json
    │   ├── integrationRuntime/
    │   │   └── SHIR.json
    │   ├── linkedService/
    │   │   ├── AzureDatabricksLinkedService.json
    │   │   ├── AzureDataLakeStorageLinkedService.json
    │   │   ├── AzureKeyVault2.json
    │   │   └── SqlServerLinkedServc1.json
    │   ├── pipeline/
    │   │   └── copy_all_tables.json
    │   └── trigger/
    │       ├── daily-trigger11.json
    │       └── daily_trigger.json
    ├── Notebooks/
    │   ├── bronze to silver.ipynb
    │   ├── silver to gold.ipynb
    │   └── storagemount.ipynb
    ├── PowerBI/
    │   └── TrustPowerBi.pbip
    └── SQL/
        └── queries/
            ├── add-product.sql
            ├── create-login-password.sql
            ├── get-schema.sql
            ├── grant.sql
            └── sp_CreateSQLServerlessView_gold.sql

```

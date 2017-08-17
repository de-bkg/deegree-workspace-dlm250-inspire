# deegree-workspace-dlm250-inspire
Workspace configuration for deegree implementing INSPIRE services for the Digital Landscape Model 1:250.000 (DLM250).

This workspace configuration uses extended INSPIRE-schemas from the European Location Framework (ELF) project.

The following INSPIRE themes are implemented:
* Transport Network
* Hydrography
* Administrative Units
* Protected Sites

## Database

The _sql folder contains scripts for creating the required database structures. 
The scripts are optimized for PostgreSQL/PostGIS.

Each INSPIRE theme has its own database schema. Per default the user inspire is owner of all schemas and tables.

## Adjustments

The database connection parameters must be adjusted in jdbc/dlm250.xml.

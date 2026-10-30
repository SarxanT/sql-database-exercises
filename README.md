# SQL Database Exercises

SQL learning exercises organized around table design, filtering, joins, grouping, and `UNION`. The scripts primarily use **Microsoft SQL Server / T-SQL** syntax.

> **Please read before running:** These are classroom exercises and some depend on pre-existing practice databases. **SQL execution has not been verified against SQL Server.** Do not run the scripts against important or production databases.

## Contents

| Script | Main topic | Database assumptions |
| --- | --- | --- |
| `01_academy_tables.sql` | Create tables and constraints | Creates/uses `Academy`; drops existing sample tables of the same names |
| `02_academy_select_practice.sql` | `SELECT` / filters | `Academy` with additional exercise tables; example answers are commented out |
| `03_employee_aggregation.sql` | `GROUP BY`, counts, filters | Pre-existing `Employees` database and compatible table |
| `04_academy_relationships.sql` | Foreign keys and relationships | Creates/uses `AcademyHW5`; table names must not already exist |
| `05_library_joins.sql` | Inner joins and aggregates | Pre-existing `Library` database and compatible sample schema |
| `06_library_join_and_union.sql` | `UNION`, joins and subqueries | Pre-existing `Library` database/schema; selects may require correction to match your schema |

## How to explore

1. Install or access SQL Server (Developer/Express) and SQL Server Management Studio or Azure Data Studio.
2. Create **disposable practice databases**; do not use an employer's or university's shared production databases.
3. Open a script, review all statements, and run one exercise at a time.
4. Only run a statement if the referenced tables/columns exist in your chosen sample schema.
5. Compare the results with the original task requirements.

## Notes on refurbishment

- English headers and more descriptive names were added without rewriting every task from scratch.
- One missing comma in the first table definition was corrected during Week 1 preparation.
- Some queries remain tied to external schemas and cannot be tested without those databases.
- These are learning materials, **not** deployable schema migrations.

## License

No open-source license has been selected yet.

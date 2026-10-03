# Campus Space Project
A project the summarizes the observed use of the synthetic study spaces around the campus. It shows how busy/occupied a certain study space is.

## Data
The records are synthetic teaching data and the tracked sample path is: `data/sample/campus_spaces.csv`.

## Repository Structure
- `scripts/` includes the script for summarizing the observed use of synthetic study spaces
- `data/sample/` includes the sample used or the observed synthetic study spaces
- `docs/` supporting document for the synthetic study currently empy
- `outputs/` local location for generated results is ignored by Git so contents are not tracked

## Requirements
- R version 4.4.1 (2024-06-14) -- "Race for Your Life"
- No additional packages are required

## How to run
Open repository root:
	cd campus-space-project
From repository root:
	Rscript scripts/summarize_spaces.R data/sample/campus_space.csv

## Expected result
- Rows: 12
- Occupancy rate: 77.0%
- Busiest observed space: S103

## Outpus
The script prints its summary in the terminal and does not create a result file


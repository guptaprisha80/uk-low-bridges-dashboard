# UK Low Bridges & Vehicle Restrictions Dashboard

## Project Summary

An interactive Power BI dashboard that helps logistics and

fleet-planning users explore UK road restrictions by type,

structure, severity, and location.

## Business Problem

Large vehicles can face safety risks, delays, and route

disruption when drivers encounter low bridges or restricted

roads. This dashboard turns a large restriction dataset into

an accessible planning and analysis tool.

## Dashboard Preview

![Dashboard overview](assets/screenshots/dashboard-overview.png)

## Key Features

- Geographic map of restrictions using latitude and longitude

- KPI cards that respond to slicers

- Restriction-type and structure breakdowns

- Searchable detail table

- Height-severity bands

- Cross-filtering between map, charts, and table

## Dataset

- 11,931 records

- 27 source columns

- Key fields: coordinates, restriction type, measure, unit,

structure, direction, traffic sign

- Raw data availability: [state whether included, excluded,

or available on request]

## Tools Used

- Power BI Desktop

- Power Query

- DAX

- GitHub (web-based workflow)

- Power BI Service

## Repository Structure

-'/docs' : strore data dictionarycleaning log, Dax measures
'/scripts' : production script copies

## Data Preparation

Summarise renamed fields, removed empty columns, corrected types,and created severity bands 

## DAX Measures 

docs/dax-measures.md

## Key Insights

-out of 11931 total vehicle restrictions maximum height make up abt 75 % of the data set 

-bridges over roads are the single largest hazard infrastructure category on the network accounting for 6318 distinct locations 

-maximum height clearance across routes sits at an average of 3.5 m ,route planners must account for high severity hazards, as the single tightest overhead restriction drops down to an absolute minimum clearance of 1.3 m 

## How to view this project 

1. review te screen shots
2. open the pbix file in power bi deskstop
3. open the power bi service report using the approved link ,
   if available.

## Project status 

completed as a four week power bi internship project 

## Author 

Prisha Gupta ,student 

## Acknowledgement 

Prepared during an internship with TNM SOFTWARE SOLUTIONS PRIVATE LIMITED 


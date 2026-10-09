 Data Cleaning & Transformation Log 
 This document logs the data transformation workflow executed inside the Power Query Editor to structure, clean, and validate the `low-bridges_1 2.csv` raw source dataset 
 | Step | Power Query Operation | Reason | Validation | 
|   1   | Promoted first row to headers | Use dataset field names | Confirmed 27 unique,  column headers. |
|   2   | Renamed coordinate fields X and Y to Longitude and Latitude | improve map field clarity|longitude/latitude types checkd  | 
|   3   | Removed empty/sparse columns |reduce model clutter|row count unchanged| 
|   4   | Created conditional column `severity_band` | height parameters to supply clear datafor the Height Range dropdown slicer. | Checked that maximum height limits fell into targeted groups, non-height targets returned "N/A". |
5 -new coloumn added -region which was attaed to the region slicer 

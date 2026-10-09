 Dataset Reference Data Dictionary 
 This data dictionary outlines the key working columns utilized from the source `low-bridges_1 2.csv`- file consisting of 11,931 road restriction records across the United Kingdom. 
 | Column | Description | Source Type | Power BI Type | Keep/Drop | Notes | 
 |   X    | Longitude coordinate| Decimal | Decimal Number | Keep | Renamed to `Longitude` for  map visual clarity. | 
 |   Y    | Latitude coordinate | Decimal | Decimal Number | Keep | Renamed to `Latitude` for  map visual clarity. | 
 |  toid  | Unique feature identifier| Text | Text | Keep | Used as the unique key in the detail table view. |
 |restriction_type | Category of restriction| Text | Text |Keep | Primary field for the bar chart and slicer. | 
 | measure | The actual numeric restriction threshold value | Decimal | Decimal| Keep|average and minimum calculation cards. | | uom | Unit of Measure | Text | Text | Keep | Used to filter distinct calculations between metric fields. |
 | structure | Physical structure type | Text | Text |Keep | Feeds the donut chart structural distribution view. |
 |applicable direction| Direction of road traffic the rule applies to | Text | Text |Keep| granular bottom data table. |
 |traffic_sign| Text of the physical road sign marking the hazard | Text | Text |Keep| Added to the detail table to support driver route routing. | 
 | severity_band| Custom grouped classification for height thresholds | N/A | Text |Keep | 
 |link_reference| Internal road network reference links | Text | Text |Drop | Dropped due to empty values in this data subset. | 
 |valid_from| Activation date of the traffic restriction order | Date | Date |Drop | Dropped due to empty entries across the subset records. |


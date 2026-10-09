 Source = Csv.Document(File.Contents("D:\USERS\Desktop\prisha\power bi\low-bridges 1 2.csv"),[Delimiter=",", Columns=27, Encoding=1252, QuoteStyle=QuoteStyle.None]),
    #"Promoted Headers" = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    #"Changed Type" = Table.TransformColumnTypes(#"Promoted Headers",{{"X", type number}, {"Y", type number}, {"fid", Int64.Type}, {"toid", type text}, {"identifier", type text}, {"local_id", Int64.Type}, {"begin_lifespan_version", type date}, {"element", type text}, {"applicable_direction", type text}, {"at_position", type number}, {"link_reference", type text}, {"valid_from", type text}, {"measure", type number}, {"uom", type text}, {"restriction_type", type text}, {"source_of_measure", type text}, {"measure2", Int64.Type}, {"uom2", type text}, {"inclusion_load", type text}, {"inclusion_use", type text}, {"inclusion_vehicle", type text}, {"exemption_load", type text}, {"exemption_use", type text}, {"exemption_vehicle", type text}, {"structure", type text}, {"traffic_sign", type text}, {"reason_for_change", type text}}),
    #"Removed Columns" = Table.RemoveColumns(#"Changed Type",{"link_reference", "valid_from", "inclusion_load", "inclusion_use", "inclusion_vehicle", "exemption_load", "exemption_vehicle", "exemption_use"}),
    #"Renamed Columns" = Table.RenameColumns(#"Removed Columns",{{"X", "longitude"}, {"Y", "latitude"}}),
    #"Added Conditional Column" = Table.AddColumn(#"Renamed Columns", "severity_Band", each if [restriction_type] <> "maximum height" then "NA-not height " else if [measure] < 2 then "under 2m" else if [measure] <= 2.5 then "2-2.5m" else if [measure] <= 3.5 then "2.5-3.5m" else "over 3.5m"),
    #"Added Custom" = Table.AddColumn(#"Added Conditional Column", "Region", each if [latitude] >= 55.8 then "Scotland"
else if [latitude] < 55.8 and [latitude] >= 55.0 and [longitude] < -2.5 then 
"Scotland"
else if [longitude] < -3.0 and [latitude] < 53.0 and [latitude] >= 51.3 then "Wales"
else if [latitude] < 55.3 and [longitude] < -5.3 then "Northern Ireland"
else if [latitude] >= 54.5 then "North East England"
else if [latitude] >= 53.4 and [latitude] < 54.5 and [longitude] >= -3.5 then "North West England"
else if [latitude] >= 53.0 and [Latitude] < 54.5 and [longitude] < -1.0 then "Yorkshire and the Humber"
else if [latitude] >= 52.3 and [latitude] < 53.4 then "East Midlands"
else if [latitude] >= 52.0 and [latitude] < 53.0 and [longitude] < -1.6 then "West Midlands"
else if [latitude] >= 52.0 and [latitude] < 53.2 then "East of England"
else if [latitude] >= 51.2 and [latitude] < 52.0 and [longitude] < -2.0 then "South West England"
else if [latitude] < 51.7 then "South East England"
else "London"),
    #"Changed Type1" = Table.TransformColumnTypes(#"Added Custom",{{"Region", type text}}),
    #"Removed Errors" = Table.RemoveRowsWithErrors(#"Changed Type1", {"latitude"}),
    #"Removed Errors1" = Table.RemoveRowsWithErrors(#"Removed Errors", {"longitude"})
in
    #"Removed Errors1"

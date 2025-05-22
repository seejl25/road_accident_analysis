-- Looking at all the data
SELECT * FROM roadaccident;

-- Primary KPI: Total number of casualties
SELECT SUM(number_of_casualties) AS total_casualties
FROM roadaccident;

-- Primary KPI: Total number of casualties by accident severity
SELECT accident_severity, SUM(number_of_casualties) AS total_casualties
FROM roadaccident
GROUP BY accident_severity;

-- Primary KPI: Percentage of casualties by severity
SELECT accident_severity, 
ROUND(SUM(number_of_casualties)*100.0 / (SELECT SUM(number_of_casualties) FROM roadaccident), 1) AS percentage_of_casualties
FROM roadaccident
GROUP BY accident_severity;

-- Secondary KPI: Total number of casualties with respect to vehicle type 
-- **(similar types of vehicles are grouped together)**
SELECT 
CASE WHEN vehicle_type ILIKE '%Car%' THEN 'Cars'
     WHEN vehicle_type ILIKE '%bus%' THEN 'Bus'
	 WHEN vehicle_type ILIKE '%Goods%' THEN 'Van'
	 WHEN vehicle_type ILIKE '%Motorcycle%' THEN 'Bikes'
	 WHEN vehicle_type ILIKE 'Agricultural%' THEN 'Agricultural vehicle'
	 ELSE 'Others'
END AS vehicle_type, SUM(number_of_casualties) AS total_casualties
FROM roadaccident
GROUP BY 
CASE WHEN vehicle_type ILIKE '%Car%' THEN 'Cars'
     WHEN vehicle_type ILIKE '%bus%' THEN 'Bus'
	 WHEN vehicle_type ILIKE '%Goods%' THEN 'Van'
	 WHEN vehicle_type ILIKE '%Motorcycle%' THEN 'Bikes'
	 WHEN vehicle_type ILIKE 'Agricultural%' THEN 'Agricultural vehicle'
	 ELSE 'Others'
END;

-- Secondary KPI: Comparison of casualties among the years
SELECT year, SUM(number_of_casualties) AS total_casualties
FROM roadaccident
GROUP BY year;

-- Secondary KPI: Number of casualties by road type
SELECT road_type, SUM(number_of_casualties) AS total_casualties
FROM roadaccident
GROUP BY road_type;

-- Secondary KPI: Distribution of casualties by road surface
SELECT 
CASE WHEN road_surface_conditions ILIKE 'Dry' THEN 'Dry'
	 WHEN road_surface_conditions ILIKE 'flood%' OR road_surface_conditions ILIKE 'wet%' THEN 'Wet'
	 WHEN road_surface_conditions ILIKE 'frost%' OR road_surface_conditions ILIKE 'snow%' THEN 'Snow/Ice'
	 ELSE 'Others'
END AS road_surface_conditions, SUM(number_of_casualties) AS total_casualties
FROM roadaccident
GROUP BY 
CASE WHEN road_surface_conditions ILIKE 'Dry' THEN 'Dry'
	 WHEN road_surface_conditions ILIKE 'flood%' OR road_surface_conditions ILIKE 'wet%' THEN 'Wet'
	 WHEN road_surface_conditions ILIKE 'frost%' OR road_surface_conditions ILIKE 'snow%' THEN 'Snow/Ice'
	 ELSE 'Others'
END;

-- Secondary KPI: Relation between casualties by Area/Location
SELECT urban_or_rural_area, SUM(number_of_casualties) AS total_casualties
FROM roadaccident
GROUP BY urban_or_rural_area;

-- Secondary KPI: Relation between casualties by Day/Night
SELECT 
CASE WHEN light_conditions ILIKE 'darkness%' THEN 'Dark'
	 ELSE 'Daylight'
END AS light_conditions, SUM(number_of_casualties) AS total_casualties
FROM roadaccident
GROUP BY 
CASE WHEN light_conditions ILIKE 'darkness%' THEN 'Dark'
	 ELSE 'Daylight'
END;

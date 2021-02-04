namespace csmdemo.db;

using cuid from '@sap/cds/common';

entity ENERGY_PRODUCTION_PLAN_VALUES:cuid{
    DAY: Integer;
    MONTH:Integer;
    YEAR: Integer;
    WEEKDAY:Integer;
    WEEKNUM:Integer;
    WEEKEND_YN:String;
    HOUR:Integer;
    MINUTE:Integer;
    BIOMASS_PROD_PLANNED:Double;
    HYDROPOWER_PROD_PLANNED:Double;
    WIND_OFFSHORE_PROD_PLANNED:Double;
    WIND_ONSHORE_PROD_PLANNED:Double;
    PHOTOVOLTAICS_PROD_PLANNED:Double;
    OTHER_RENEWABLE_PROD_PLANNED:Double;
    NUCLEAR_PROD_PLANNED:Double;
    BROWN_COAL_PROD_PLANNED:Double;
    BLACK_COAL_PROD_PLANNED:Double;
    NAT_GAS_PROD_PLANNED:Double;
    PUMP_STORAGE_PROD_PLANNED:Double;
    OTHER_CONVENTIONAL_PROD_PLANNED:Double;
    EN_PROD_PLANNED:Double;
}
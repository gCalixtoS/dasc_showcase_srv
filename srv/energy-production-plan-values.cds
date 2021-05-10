using csmdemo.db as db from '../db/database';

service ProductionPlanValuesService @(requires: 'viewer'){
    entity Values as projection on db.ENERGY_PRODUCTION_PLAN_VALUES;
}   

annotate ProductionPlanValuesService.Values with @(
    UI: {
        HeaderInfo: {
            TypeName: 'Value',
            TypeNamePlural: 'Values',
            Title: { Value: MONTH },
            Description: { Value: DAY }
        },
        SelectionFields: [ MONTH, DAY, HOUR, MINUTE ],
        LineItem: [
            { Value: YEAR },
            { Value: MONTH },
            { Value: DAY },
            { Value: HOUR },
            { Value: MINUTE },
            { Value: EN_PROD_PLANNED },
        ],
        Facets: [
            {
                $Type: 'UI.CollectionFacet',
                Label: 'Value Info',
                Facets: [
                    {$Type: 'UI.ReferenceFacet', Target: '@UI.FieldGroup#Main', Label: 'Main Facet'}
                ]
            }
        ],        
        FieldGroup#Main: {
            Data: [
                { Value: YEAR },
                { Value: MONTH },
                { Value: WEEKDAY },
                { Value: WEEKNUM },
                { Value: WEEKEND_YN },
                { Value: DAY },
                { Value: HOUR },
                { Value: MINUTE },
                { Value: EN_PROD_PLANNED },               
            ]
        }
    }
);
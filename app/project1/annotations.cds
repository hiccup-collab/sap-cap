using CoursesService as service from '../../srv/service';
annotate service.CoursesAPI with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'courseName',
                Value : courseName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'trainerName',
                Value : trainerName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'duration',
                Value : duration,
            },
            {
                $Type : 'UI.DataField',
                Label : 'status',
                Value : status,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'courseName',
            Value : courseName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'trainerName',
            Value : trainerName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'duration',
            Value : duration,
        },
        {
            $Type : 'UI.DataField',
            Label : 'status',
            Value : status,
        },
    ],
);


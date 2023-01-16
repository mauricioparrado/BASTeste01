using TesteService as service from '../../srv/service';

annotate service.Atributos with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'nome',
            Value : nome,
        },
        {
            $Type : 'UI.DataField',
            Label : 'ncm',
            Value : ncm,
        },
        {
            $Type : 'UI.DataField',
            Label : 'codigo',
            Value : codigo,
        },
        {
            $Type : 'UI.DataField',
            Label : 'orgao',
            Value : orgao,
        },
        {
            $Type : 'UI.DataField',
            Label : 'inicioVigencia',
            Value : inicioVigencia,
        },
    ]
);
annotate service.Atributos with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'nome',
                Value : nome,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ncm',
                Value : ncm,
            },
            {
                $Type : 'UI.DataField',
                Label : 'codigo',
                Value : codigo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'orgao',
                Value : orgao,
            },
            {
                $Type : 'UI.DataField',
                Label : 'inicioVigencia',
                Value : inicioVigencia,
            },
            {
                $Type : 'UI.DataField',
                Label : 'fimVigencia',
                Value : fimVigencia,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);

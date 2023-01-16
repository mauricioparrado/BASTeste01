using TesteService as service from '../../srv/service';

annotate service.IntegracaoSAP with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'tipo',
            Value : tipo,
        },
        {
            $Type : 'UI.DataField',
            Label : 'codigo',
            Value : codigo,
        },
        {
            $Type : 'UI.DataField',
            Label : 'status',
            Value : status,
            Criticality : status,
            CriticalityRepresentation : #WithIcon,
        },
        {
            $Type : 'UI.DataField',
            Label : 'dataIntegracao',
            Value : dataIntegracao,
        },
        {
            $Type : 'UI.DataField',
            Label : 'mensagem',
            Value : mensagem,
        },
    ]
);
annotate service.IntegracaoSAP with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'tipo',
                Value : tipo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'codigo',
                Value : codigo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'status',
                Value : status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'dataIntegracao',
                Value : dataIntegracao,
            },
            {
                $Type : 'UI.DataField',
                Label : 'mensagem',
                Value : mensagem,
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

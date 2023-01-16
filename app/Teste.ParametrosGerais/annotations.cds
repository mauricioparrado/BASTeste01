using TesteService as service from '../../srv/service';

annotate service.Parametros with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'codigoTIN',
            Value : codigoTIN,
        },
        {
            $Type : 'UI.DataField',
            Label : 'PUComexAgendamento',
            Value : PUComexAgendamento,
        },
        {
            $Type : 'UI.DataField',
            Label : 'PUComexHora',
            Value : PUComexHora,
        },
        {
            $Type : 'UI.DataField',
            Label : 'PUComexRecorrente',
            Value : PUComexRecorrente,
        },
        {
            $Type : 'UI.DataField',
            Label : 'PUComexReACada',
            Value : PUComexReACada,
        },
    ]
);
annotate service.Parametros with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Codigo TIN',
                Value : codigoTIN,
            }
        ]
    },
    UI.FieldGroup #GeneratedGroup2 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Agendamento',
                Value : PUComexAgendamento,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Hora Execução',
                Value : PUComexHora,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Recorrente',
                Value : PUComexRecorrente,
            },
            {
                $Type : 'UI.DataField',
                Label : 'A Cada (Minutos)',
                Value : PUComexReACada,
            }
        ]
    },
    UI.FieldGroup #GeneratedGroup3 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Automação',
                Value : AtributosAutomacao,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Hora Execução',
                Value : AtributosHora,
            },
            {
                $Type : 'UI.DataField',
                Label : 'A Cada (Minutos)',
                Value : AtributosACada,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'Integração SAP',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet2',
            Label : 'Integração PUComex',
            Target : '@UI.FieldGroup#GeneratedGroup2',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet3',
            Label : 'Carga de Atributos',
            Target : '@UI.FieldGroup#GeneratedGroup3',
        }
    ]
);

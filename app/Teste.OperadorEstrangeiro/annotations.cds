using TesteService as service from '../../srv/service';

annotate service.OperadorEstrangeiro with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Codigo',
            Value : seq,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Versão',
            Value : versao,
        },
        {
            $Type : 'UI.DataField',
            Label : 'CPF-CNPJ',
            Value : cpfCnpjRaiz,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Nome',
            Value : nome,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Codigo TIN',
            Value : tin,
        },
    ]
);

annotate service.OperadorEstrangeiro with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : seq,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Versão',
                Value : versao,
            }
        ]
    },
    UI.FieldGroup #GeneratedGroup2 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'CPF - CNPJ Raiz',
                Value : cpfCnpjRaiz,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Codigo TIN',
                Value : tin,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Razão Social',
                Value : nome,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Logradouro',
                Value : logradouro,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Cidade',
                Value : nomeCidade,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Estado',
                Value : codigoSubdivisaoPais,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Pais',
                Value : codigoPais,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CEP',
                Value : cep,
            },
            {
                $Type : 'UI.DataField',
                Label : 'e-mail',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Data Referencia',
                Value : dataReferencia,
            },
            {
                $Type : 'UI.DataField',
                Label : 'situacao_ID',
                Value : situacao_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'situacaoTransmissao_ID',
                Value : situacaoTransmissao_ID,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'Informação Geral',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
         {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet2',
            Label : 'Detalhes',
            Target : '@UI.FieldGroup#GeneratedGroup2',
        },
         {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet3',
            Label : 'Codigos SAP',
            Target : 'operadorCodigos/@UI.LineItem',
        }
    ]
);
annotate service.OperadorCodigos with @(
	UI: {
		LineItem: [
			{Value: codigo, Label:'Codigo'}
		],
		Facets: [
			{$Type: 'UI.ReferenceFacet', Label: '{i18n>Codigos}', Target: '@UI.LineItem'},
		],
	},
);
annotate service.OperadorEstrangeiro with {
    situacao @Common.Text : situacao.descricao
};
annotate service.SituacaoTransmissao with {
    ID @Common.Text : descricao
};
annotate service.OperadorEstrangeiro with {
    situacaoTransmissao @Common.Text : {
            $value : situacaoTransmissao.descricao,
            ![@UI.TextArrangement] : #TextOnly,
        }
};
annotate service.OperadorEstrangeiro with {
    seq @Common.FieldControl : #ReadOnly
};
annotate service.OperadorEstrangeiro with {
    situacaoTransmissao @UI.MultiLineText : false
};
annotate service.OperadorEstrangeiro with {
    situacaoTransmissao @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'SituacaoTransmissao',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : situacaoTransmissao_ID,
                    ValueListProperty : 'ID',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.OperadorEstrangeiro with {
    situacao @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'OperadorSituacao',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : situacao_ID,
                    ValueListProperty : 'ID',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.OperadorSituacao with {
    ID @Common.Text : descricao
};
annotate service.OperadorEstrangeiro with {
    versao @Common.FieldControl : #ReadOnly
};
annotate service.OperadorEstrangeiro with @(
    UI.SelectionFields : [
        cpfCnpjRaiz,
        nome,
        situacao_ID,
    ]
);
annotate service.OperadorEstrangeiro with {
    cpfCnpjRaiz @Common.Label : 'CPF-CNPJ'
};
annotate service.OperadorEstrangeiro with {
    nome @Common.Label : 'Nome'
};
annotate service.OperadorEstrangeiro with {
    situacao @Common.Label : 'Situação'
};

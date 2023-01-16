using TesteService as service from '../../srv/service';

annotate service.Produto with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Codigo',
            Value : codigo,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Descrição',
            Value : descricao,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Denominação',
            Value : denominacao,
        },
        {
            $Type : 'UI.DataField',
            Label : 'NCM',
            Value : ncm,
        },
    ]
);
annotate service.Produto with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Codigo',
                Value : codigo,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Versão',
                Value : versao,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Descrição',
                Value : descricao,
            }

        ]
    },
    UI.FieldGroup #GeneratedGroup2 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Denominação',
                Value : denominacao,
            },
            {
                $Type : 'UI.DataField',
                Label : 'NCM',
                Value : ncm,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Situação',
                Value : situacao_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Situação Transmissão',
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
            Target : 'produtoCodigos/@UI.LineItem',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet4',
            Label : 'Atributos',
            Target : 'produtoAtributo/@UI.LineItem',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet5',
            Label : 'Operadores',
            Target : 'produtoOperador/@UI.LineItem',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet6',
            Label : 'Regimes Especiais',
            Target : 'produtoRegimesEsp/@UI.LineItem',
        }
    ]
);
annotate service.Produto with {
    situacaoTransmissao @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'SituacaoTransmissao',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : situacaoTransmissao_ID,
                    ValueListProperty : 'descricao',
                },
            ],
        },
        Common.ValueListWithFixedValues : true
)};
annotate service.Produto with {
    situacao @(Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'ProdutoSituacao',
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
annotate service.ProdutoAtributo with @(
	UI: {
		LineItem: [
		    {Value: atributo.codigo, Label:'Atributo'},
            {Value: atributo.nome, Label:'Descrição'},
            {Value: valor, Label:'valor'},
		],
		Facets: [
			{$Type: 'UI.ReferenceFacet', Label: '{i18n>atributos}', Target: '@UI.LineItem'},
		],
	},
);
annotate service.ProdutoOperador with @(
	UI: {
		LineItem: [
		    {Value: Pais, Label:'Pais'},
            {Value: operadorEstrangeiro.seq, Label:'Codigo'},
            {Value: operadorEstrangeiro.nome, Label:'Nome'},            
		],
		Facets: [
			{$Type: 'UI.ReferenceFacet', Label: '{i18n>Operador}', Target: '@UI.LineItem'},
		],
	},
);
annotate service.ProdutoRegimesEsp with @(
	UI: {
		LineItem: [
		    {Value: ato, Label:'Número do Ato'},
            {Value: item, Label:'Número Item'},
         		],
		Facets: [
			{$Type: 'UI.ReferenceFacet', Label: '{i18n>Regimes}', Target: '@UI.LineItem'},
		],
	},
);

annotate service.Produto with @(
    UI.SelectionFields : [
        codigo,
        descricao,
        ncm,
    ]
);
annotate service.Produto with {
    codigo @Common.Label : 'Codigo'
};
annotate service.Produto with {
    descricao @Common.Label : 'Descrição'
};
annotate service.Produto with {
    ncm @Common.Label : 'NCM'
};

annotate service.SituacaoTransmissao with {
    descricao @Common.Text : {
        $value : ID,
        ![@UI.TextArrangement] : #TextOnly,
    }
};
annotate service.Produto with {
    situacaoTransmissao @Common.Text : situacaoTransmissao_ID
};

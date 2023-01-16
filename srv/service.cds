using { ZGWDEMO } from './external/ZGWDEMO.cds';

using { Teste as my } from '../db/schema';

using Teste from '../db/schema';

service Produto
{
}

@path : 'service/Teste'
service TesteService
{
    @odata.draft.enabled
    entity OperadorEstrangeiro as
        projection on my.OperadorEstrangeiro
        {
            *
        };

    @odata.draft.enabled
    entity Produto as
        projection on my.Produto
        {
            *
        };

    @readonly
    entity IntegracaoSAP as
        projection on my.Integracao
        {
            *
        };

    @odata.draft.enabled
    entity Parametros as
        projection on my.ParametrosGerais
        {
            *
        };

    @readonly
    entity PUComex as
        projection on my.PUComex
        {
            *
        };

    entity OperadorSituacao as
        projection on my.OperadorSituacao
        {
            *
        };

    entity SituacaoTransmissao as
        projection on my.SituacaoTransmissao
        {
            *
        };

    entity OperadorCodigos as
        projection on my.OperadorCodigos
        {
            *
        };

    entity BusinessPartner as
        projection on ZGWDEMO.BusinessPartnerCollection
        {
            *
        };

    entity Atributos as
        projection on my.Atributos
        {
            *
        };

    entity ProdutoAtributo as
        projection on my.ProdutoAtributo
        {
            *
        };

    entity ProdutoSituacao as
        projection on my.ProdutoSituacao
        {
            *
        };

    @odata.draft.enabled
    entity ProdutoCodigos as
        projection on my.ProdutoCodigos
        {
            *
        };

    entity Material as
        projection on ZGWDEMO.ProductCollection
        {
            *
        };

    @odata.draft.enabled
    entity ProdutoOperador as
        projection on my.ProdutoOperador
        {
            *
        };

    @odata.draft.enabled
    entity ProdutoRegimesEsp as
        projection on my.ProdutoRegimesEsp
        {
            *
        };
}

annotate TesteService with @requires :
[
    'authenticated-user'
];

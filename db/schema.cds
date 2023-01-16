namespace Teste;

using { ZGWDEMO } from '../srv/external/ZGWDEMO.cds';

using
{
    Country,
    Currency,
    Language,
    User,
    cuid,
    extensible,
    managed,
    temporal
}
from '@sap/cds/common';

entity OperadorEstrangeiro
{
    key ID : UUID
        @Core.Computed;
    seq : String;
    cpfCnpjRaiz : String(11);
    tin : String(35);
    versao : String(8);
    nome : String(70);
    logradouro : String(70);
    nomeCidade : String(35);
    codigoSubdivisaoPais : String(6);
    codigoPais : String(2);
    cep : String(9);
    email : String(70);
    dataReferencia : Date;
    situacao : Association to one OperadorSituacao;
    situacaoTransmissao : Association to one SituacaoTransmissao;
    operadorCodigos : Association to many OperadorCodigos on operadorCodigos.operadorEstrangeiro = $self;
}

entity Produto
{
    key ID : UUID
        @Core.Computed;
    codigo : String(10);
    descricao : String(3700);
    denominacao : String(100);
    cpfCnpjRaiz : String(11);
    ncm : String(12);
    versao : String(8);
    produtoCodigos : Association to many ProdutoCodigos on produtoCodigos.produto = $self;
    situacao : Association to one ProdutoSituacao;
    situacaoTransmissao : Association to one SituacaoTransmissao;
    produtoAtributo : Association to many ProdutoAtributo on produtoAtributo.produto = $self;
    produtoOperador : Association to many ProdutoOperador on produtoOperador.produto = $self;
    produtoRegimesEsp : Association to many ProdutoRegimesEsp on produtoRegimesEsp.produto = $self;
}

entity ProdutoCodigos
{
    key ID : UUID
        @Core.Computed;
    codigo : String(100);
    produto : Association to one Produto;
    material : Association to one ZGWDEMO.ProductCollection;
}

entity Integracao
{
    key ID : UUID
        @Core.Computed;
    tipo : String(100);
    codigo : String(100);
    status : Integer;
    dataIntegracao : DateTime;
    mensagem : String(1000);
}

entity ParametrosGerais
{
    key ID : UUID
        @Core.Computed;
    codigoTIN : String(100);
    PUComexAgendamento : Boolean default false;
    PUComexHora : Time;
    PUComexRecorrente : Boolean default false;
    PUComexReACada : Integer;
    AtributosAutomacao : Boolean;
    AtributosHora : Time;
    AtributosACada : Integer;
}

entity PUComex
{
    key ID : UUID
        @Core.Computed;
    tipo : String(100);
    codigo : String;
    status : Integer;
    datatransmissao : DateTime;
    dataretorno : DateTime;
    mensagem : String(100);
}

entity OperadorSituacao
{
    key ID : String;
    descricao : String(100);
}

entity SituacaoTransmissao
{
    key ID : String;
    descricao : String(100);
}

entity OperadorCodigos
{
    key ID : UUID
        @Core.Computed;
    codigo : String(100);
    operadorEstrangeiro : Association to one OperadorEstrangeiro;
    businessPartner : Association to one ZGWDEMO.BusinessPartnerCollection;
}

entity ProdutoSituacao
{
    key ID : String;
    descricao : String(100);
}

entity Atributos
{
    nome : String(100);
    ncm : String(100);
    key codigo : String(100);
    inicioVigencia : Date;
    fimVigencia : Date;
}

entity ProdutoAtributo
{
    key ID : UUID
        @Core.Computed;
    produto : Association to one Produto;
    atributo : Association to one Atributos;
    valor : String(100);
}

entity ProdutoOperador
{
    key ID : UUID
        @Core.Computed;
    Pais : String(10);
    produto : Association to one Produto;
    operadorEstrangeiro : Association to one OperadorEstrangeiro;
}

entity ProdutoRegimesEsp
{
    key ID : UUID
        @Core.Computed;
    item : String(100);
    ato : String(100);
    produto : Association to one Produto;
}

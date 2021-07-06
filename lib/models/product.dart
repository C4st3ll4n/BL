// class Products {
  // late Response response;
//
//   Products({required this.response});
//
//   Products.fromJson(Map<String, dynamic> json) {
//     response = new Response.fromJson(json['response']);
//
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.response != null) {
//       data['response'] = this.response.toJson();
//     }
//     return data;
//   }
// }

// class Response {
//   late String status;
//   late List<Messages> messages;
//   late List<Produtos> produtos;
//
//   Response({required this.status, required this.messages, required this.produtos});
//
//   Response.fromJson(Map<String, dynamic> json) {
//     status = json['status'];
//       messages = List.filled(1, new Messages(message: 'message'), growable: true);
//       json['messages'].forEach((v) {
//         messages.add(new Messages.fromJson(v));
//       });
//       produtos = List.filled(1, new Produtos( codigo: 0,
//        sKU: 0,
//        codigoBarras: 'Codigo',
//       codigoNCM: 'late  String',
//       descricao: 'late  String ',
//       complemento: 'late  String ',
//       marca: 'late  String ',
//       estoque: 0,
//       preco: 0.0,
//       grupo:'late String ',
//       oferta: 'late String ',
//       dataOferta: 'late  String ',
//       precoNormal: 0,
//       codigoUnidade: 'late  String',
//       codigoDepartamento: 'late String ',
//       departamento: 'late String late String ',
//       ativo: false,
//       codigoTributario: 'late  String ',
//       estoque1: 0,
//       estoque2: 0,
//       estoque3: 0,
//       estoque4: 0,
//       estoque5:0,
//       precoLista:0,
//       precoPDV: 0.0,
//       precoPDV3:0,
//       precoPDV4:0,
//       precoPDV5:0,
//       precoEtiqueta: 0.0,
//        precoCartaz:0,
//       precoVenda2:0,
//       precoVenda3:0,
//        precoVenda4:0,
//       precoVenda5:0,
//        fatorPr3:0,
//        fatorPr4:0,
//       fatorPr5:0,
//       codEstoque:0,
//      estoqueMinimo:0,
//       estoqueMaximo:0,
//        vendaMediaDiaria:0,
//        espaco:0,
//       codigoCaixa:'late String',
//           custoCompra:0.0,
//        custoEmpresa:0.0,
//        custoFiscal:0.0,
//        custoMedio:0.0,
//        custoTranferencia:0.0,
//       setorLoja:'late String',
//          setorDeposito:' late String ',
//      precoUnidadeMedida: 0,
//       descricaoPDV: "late String ",
//        bloqueado: false,
//            altura:0,
//           largura:0,
//           profundidade:0,
//           peso:0,
//            pesoLiquido: 0,
//           descricaoCliente:'late  String',
//           temperatura: 0,
//           tipoEmbalagem: 'late  String ',
//           quantidadeEmbalagem:0), growable: true);
//       json['produtos'].forEach((v) {
//         produtos.add(new Produtos.fromJson(v));
//       });
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['status'] = this.status;
//     if (this.messages != null) {
//       data['messages'] = this.messages.map((v) => v.toJson()).toList();
//     }
//     if (this.produtos != null) {
//       data['produtos'] = this.produtos.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }
//
// class Messages {
//   late String message;
//
//   Messages({required this.message});
//
//   Messages.fromJson(Map<String, dynamic> json) {
//     message = json['message'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['message'] = this.message;
//     return data;
//   }
// }

class Produtos {
  late int codigo;
  late  int sKU;
  late String codigoBarras;
  late  String codigoNCM;
  late  String descricao;
  late  String complemento;
  late  String marca;
  late double estoque;
  late  double preco;
  late String grupo;
  late String oferta;
  late  String dataOferta;
  late double precoNormal;
  late  String codigoUnidade;
  late String codigoDepartamento;
  late String departamento;
  late bool ativo;
  late  String codigoTributario;
  late double estoque1;
  late double estoque2;
  late  double estoque3;
  late double estoque4;
  late double estoque5;
  late  double precoLista;
  late double precoPDV;
  late  double precoPDV3;
  late  double precoPDV4;
  late double precoPDV5;
  late double precoEtiqueta;
  late double precoCartaz;
  late  double precoVenda2;
  late  double precoVenda3;
  late  double precoVenda4;
  late double precoVenda5;
  late int fatorPr3;
  late int fatorPr4;
  late int fatorPr5;
  late  int codEstoque;
  late double estoqueMinimo;
  late double estoqueMaximo;
  late double vendaMediaDiaria;
  late int espaco;
  late String codigoCaixa;
  late double custoCompra;
  late double custoEmpresa;
  late double custoFiscal;
  late double custoMedio;
  late double custoTranferencia;
  late String setorLoja;
  late String setorDeposito;
  late double precoUnidadeMedida;
  late String descricaoPDV;
  late  bool bloqueado;
  late int altura;
  late int largura;
  late int profundidade;
  late double peso;
  late  double pesoLiquido;
  late  String descricaoCliente;
  late  double temperatura;
  late  String tipoEmbalagem;
  late  int quantidadeEmbalagem;

  Produtos(
      {required this.codigo,
        required this.sKU,
        required this.codigoBarras,
        required this.codigoNCM,
        required this.descricao,
        required this.complemento,
        required this.marca,
        required this.estoque,
        required this.preco,
        required this.grupo,
        required this.oferta,
        required this.dataOferta,
        required this.precoNormal,
        required this.codigoUnidade,
        required this.codigoDepartamento,
        required this.departamento,
        required this.ativo,
        required this.codigoTributario,
        required this.estoque1,
        required  this.estoque2,
        required this.estoque3,
        required this.estoque4,
        required this.estoque5,
        required  this.precoLista,
        required this.precoPDV,
        required this.precoPDV3,
        required this.precoPDV4,
        required this.precoPDV5,
        required this.precoEtiqueta,
        required this.precoCartaz,
        required this.precoVenda2,
        required this.precoVenda3,
        required this.precoVenda4,
        required this.precoVenda5,
        required this.fatorPr3,
        required this.fatorPr4,
        required this.fatorPr5,
        required this.codEstoque,
        required  this.estoqueMinimo,
        required  this.estoqueMaximo,
        required  this.vendaMediaDiaria,
        required  this.espaco,
        required  this.codigoCaixa,
        required  this.custoCompra,
        required  this.custoEmpresa,
        required  this.custoFiscal,
        required  this.custoMedio,
        required this.custoTranferencia,
        required this.setorLoja,
        required this.setorDeposito,
        required this.precoUnidadeMedida,
        required this.descricaoPDV,
        required this.bloqueado,
        required this.altura,
        required this.largura,
        required  this.profundidade,
        required this.peso,
        required  this.pesoLiquido,
        required this.descricaoCliente,
        required this.temperatura,
        required this.tipoEmbalagem,
        required this.quantidadeEmbalagem});

  Produtos.fromJson(Map<String, dynamic> json) {
    codigo = json['Codigo'];
    sKU = json['SKU'];
    codigoBarras = json['CodigoBarras'];
    codigoNCM = json['CodigoNCM'];
    descricao = json['Descricao'];
    complemento = json['Complemento'];
    marca = json['Marca'];
    estoque = json['Estoque'];
    preco = json['Preco'];
    grupo = json['Grupo'];
    oferta = json['Oferta'];
    dataOferta = json['DataOferta'];
    precoNormal = json['PrecoNormal'];
    codigoUnidade = json['CodigoUnidade'];
    codigoDepartamento = json['CodigoDepartamento'];
    departamento = json['Departamento'];
    ativo = json['Ativo'];
    codigoTributario = json['CodigoTributario'];
    estoque1 = json['Estoque1'];
    estoque2 = json['Estoque2'];
    estoque3 = json['Estoque3'];
    estoque4 = json['Estoque4'];
    estoque5 = json['Estoque5'];
    precoLista = json['PrecoLista'];
    precoPDV = json['PrecoPDV'];
    precoPDV3 = json['PrecoPDV3'];
    precoPDV4 = json['PrecoPDV4'];
    precoPDV5 = json['PrecoPDV5'];
    precoEtiqueta = json['PrecoEtiqueta'];
    precoCartaz = json['PrecoCartaz'];
    precoVenda2 = json['PrecoVenda2'];
    precoVenda3 = json['PrecoVenda3'];
    precoVenda4 = json['PrecoVenda4'];
    precoVenda5 = json['PrecoVenda5'];
    fatorPr3 = json['FatorPr3'];
    fatorPr4 = json['FatorPr4'];
    fatorPr5 = json['FatorPr5'];
    codEstoque = json['CodEstoque'];
    estoqueMinimo = json['EstoqueMinimo'];
    estoqueMaximo = json['EstoqueMaximo'];
    vendaMediaDiaria = json['VendaMediaDiaria'];
    espaco = json['Espaco'];
    codigoCaixa = json['CodigoCaixa'];
    custoCompra = json['CustoCompra'];
    custoEmpresa = json['CustoEmpresa'];
    custoFiscal = json['CustoFiscal'];
    custoMedio = json['CustoMedio'];
    custoTranferencia = json['CustoTranferencia'];
    setorLoja = json['SetorLoja'];
    setorDeposito = json['SetorDeposito'];
    precoUnidadeMedida = json['PrecoUnidadeMedida'];
    descricaoPDV = json['DescricaoPDV'];
    bloqueado = json['Bloqueado'];
    altura = json['Altura'];
    largura = json['Largura'];
    profundidade = json['Profundidade'];
    peso = json['Peso'];
    pesoLiquido = json['PesoLiquido'];
    descricaoCliente = json['DescricaoCliente'];
    temperatura = json['Temperatura'];
    tipoEmbalagem = json['TipoEmbalagem'];
    quantidadeEmbalagem = json['QuantidadeEmbalagem'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Codigo'] = this.codigo;
    data['SKU'] = this.sKU;
    data['CodigoBarras'] = this.codigoBarras;
    data['CodigoNCM'] = this.codigoNCM;
    data['Descricao'] = this.descricao;
    data['Complemento'] = this.complemento;
    data['Marca'] = this.marca;
    data['Estoque'] = this.estoque;
    data['Preco'] = this.preco;
    data['Grupo'] = this.grupo;
    data['Oferta'] = this.oferta;
    data['DataOferta'] = this.dataOferta;
    data['PrecoNormal'] = this.precoNormal;
    data['CodigoUnidade'] = this.codigoUnidade;
    data['CodigoDepartamento'] = this.codigoDepartamento;
    data['Departamento'] = this.departamento;
    data['Ativo'] = this.ativo;
    data['CodigoTributario'] = this.codigoTributario;
    data['Estoque1'] = this.estoque1;
    data['Estoque2'] = this.estoque2;
    data['Estoque3'] = this.estoque3;
    data['Estoque4'] = this.estoque4;
    data['Estoque5'] = this.estoque5;
    data['PrecoLista'] = this.precoLista;
    data['PrecoPDV'] = this.precoPDV;
    data['PrecoPDV3'] = this.precoPDV3;
    data['PrecoPDV4'] = this.precoPDV4;
    data['PrecoPDV5'] = this.precoPDV5;
    data['PrecoEtiqueta'] = this.precoEtiqueta;
    data['PrecoCartaz'] = this.precoCartaz;
    data['PrecoVenda2'] = this.precoVenda2;
    data['PrecoVenda3'] = this.precoVenda3;
    data['PrecoVenda4'] = this.precoVenda4;
    data['PrecoVenda5'] = this.precoVenda5;
    data['FatorPr3'] = this.fatorPr3;
    data['FatorPr4'] = this.fatorPr4;
    data['FatorPr5'] = this.fatorPr5;
    data['CodEstoque'] = this.codEstoque;
    data['EstoqueMinimo'] = this.estoqueMinimo;
    data['EstoqueMaximo'] = this.estoqueMaximo;
    data['VendaMediaDiaria'] = this.vendaMediaDiaria;
    data['Espaco'] = this.espaco;
    data['CodigoCaixa'] = this.codigoCaixa;
    data['CustoCompra'] = this.custoCompra;
    data['CustoEmpresa'] = this.custoEmpresa;
    data['CustoFiscal'] = this.custoFiscal;
    data['CustoMedio'] = this.custoMedio;
    data['CustoTranferencia'] = this.custoTranferencia;
    data['SetorLoja'] = this.setorLoja;
    data['SetorDeposito'] = this.setorDeposito;
    data['PrecoUnidadeMedida'] = this.precoUnidadeMedida;
    data['DescricaoPDV'] = this.descricaoPDV;
    data['Bloqueado'] = this.bloqueado;
    data['Altura'] = this.altura;
    data['Largura'] = this.largura;
    data['Profundidade'] = this.profundidade;
    data['Peso'] = this.peso;
    data['PesoLiquido'] = this.pesoLiquido;
    data['DescricaoCliente'] = this.descricaoCliente;
    data['Temperatura'] = this.temperatura;
    data['TipoEmbalagem'] = this.tipoEmbalagem;
    data['QuantidadeEmbalagem'] = this.quantidadeEmbalagem;
    return data;
  }
}

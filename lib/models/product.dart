/// response : {"status":"ok","messages":[{"message":"Dados carregados"}],"produtos":[{"Codigo":10162,"SKU":10162,"CodigoBarras":"0000040084107","CodigoNCM":"18069000","Descricao":"Kinder Ovo","Complemento":"","Marca":"Dorizon","Estoque":0.0,"Preco":3.89,"Grupo":"10000","Oferta":"N","DataOferta":"","PrecoNormal":0.0,"CodigoUnidade":"001","CodigoDepartamento":"999","Departamento":"Geral","Ativo":true,"CodigoTributario":"905","Estoque1":-873.0,"Estoque2":0.0,"Estoque3":0.0,"Estoque4":0.0,"Estoque5":0.0,"PrecoLista":0.0,"PrecoPDV":3.89,"PrecoPDV3":0.0,"PrecoPDV4":0.0,"PrecoPDV5":0.0,"PrecoEtiqueta":3.89,"PrecoCartaz":0.0,"PrecoVenda2":0.0,"PrecoVenda3":0.0,"PrecoVenda4":0.0,"PrecoVenda5":0.0,"FatorPr3":0,"FatorPr4":0,"FatorPr5":0,"CodEstoque":0,"EstoqueMinimo":0.0,"EstoqueMaximo":0.0,"VendaMediaDiaria":0.0,"Espaco":0,"CodigoCaixa":"","CustoCompra":76.3639,"CustoEmpresa":76.3639,"CustoFiscal":76.3639,"CustoMedio":76.3639,"CustoTranferencia":76.3639,"SetorLoja":"","SetorDeposito":"","PrecoUnidadeMedida":0.0,"DescricaoPDV":"Kinder Ovo","Bloqueado":false,"Altura":0,"Largura":0,"Profundidade":0,"Peso":0.0,"PesoLiquido":0.0,"DescricaoCliente":"","Temperatura":0.0,"TipoEmbalagem":"UN","QuantidadeEmbalagem":0},"..."]}

class Product {
  Response _response;

  Response get response => _response;

  Product({
      Response response}){
    _response = response;
}

  Product.fromJson(dynamic json) {
    _response = json["response"] != null ? Response.fromJson(json["response"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (_response != null) {
      map["response"] = _response.toJson();
    }
    return map;
  }

}

/// status : "ok"
/// messages : [{"message":"Dados carregados"}]
/// produtos : [{"Codigo":10162,"SKU":10162,"CodigoBarras":"0000040084107","CodigoNCM":"18069000","Descricao":"Kinder Ovo","Complemento":"","Marca":"Dorizon","Estoque":0.0,"Preco":3.89,"Grupo":"10000","Oferta":"N","DataOferta":"","PrecoNormal":0.0,"CodigoUnidade":"001","CodigoDepartamento":"999","Departamento":"Geral","Ativo":true,"CodigoTributario":"905","Estoque1":-873.0,"Estoque2":0.0,"Estoque3":0.0,"Estoque4":0.0,"Estoque5":0.0,"PrecoLista":0.0,"PrecoPDV":3.89,"PrecoPDV3":0.0,"PrecoPDV4":0.0,"PrecoPDV5":0.0,"PrecoEtiqueta":3.89,"PrecoCartaz":0.0,"PrecoVenda2":0.0,"PrecoVenda3":0.0,"PrecoVenda4":0.0,"PrecoVenda5":0.0,"FatorPr3":0,"FatorPr4":0,"FatorPr5":0,"CodEstoque":0,"EstoqueMinimo":0.0,"EstoqueMaximo":0.0,"VendaMediaDiaria":0.0,"Espaco":0,"CodigoCaixa":"","CustoCompra":76.3639,"CustoEmpresa":76.3639,"CustoFiscal":76.3639,"CustoMedio":76.3639,"CustoTranferencia":76.3639,"SetorLoja":"","SetorDeposito":"","PrecoUnidadeMedida":0.0,"DescricaoPDV":"Kinder Ovo","Bloqueado":false,"Altura":0,"Largura":0,"Profundidade":0,"Peso":0.0,"PesoLiquido":0.0,"DescricaoCliente":"","Temperatura":0.0,"TipoEmbalagem":"UN","QuantidadeEmbalagem":0},"..."]

class Response {
  String _status;
  List<Messages> _messages;
  List<Produtos> _produtos;

  String get status => _status;
  List<Messages> get messages => _messages;
  List<Produtos> get produtos => _produtos;

  Response({
      String status, 
      List<Messages> messages, 
      List<Produtos> produtos}){
    _status = status;
    _messages = messages;
    _produtos = produtos;
}

  Response.fromJson(dynamic json) {
    _status = json["status"];
    if (json["messages"] != null) {
      _messages = [];
      json["messages"].forEach((v) {
        _messages.add(Messages.fromJson(v));
      });
    }
    if (json["produtos"] != null) {
      _produtos = [];
      json["produtos"].forEach((v) {
        _produtos.add(Produtos.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["status"] = _status;
    if (_messages != null) {
      map["messages"] = _messages.map((v) => v.toJson()).toList();
    }
    if (_produtos != null) {
      map["produtos"] = _produtos.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// Codigo : 10162
/// SKU : 10162
/// CodigoBarras : "0000040084107"
/// CodigoNCM : "18069000"
/// Descricao : "Kinder Ovo"
/// Complemento : ""
/// Marca : "Dorizon"
/// Estoque : 0.0
/// Preco : 3.89
/// Grupo : "10000"
/// Oferta : "N"
/// DataOferta : ""
/// PrecoNormal : 0.0
/// CodigoUnidade : "001"
/// CodigoDepartamento : "999"
/// Departamento : "Geral"
/// Ativo : true
/// CodigoTributario : "905"
/// Estoque1 : -873.0
/// Estoque2 : 0.0
/// Estoque3 : 0.0
/// Estoque4 : 0.0
/// Estoque5 : 0.0
/// PrecoLista : 0.0
/// PrecoPDV : 3.89
/// PrecoPDV3 : 0.0
/// PrecoPDV4 : 0.0
/// PrecoPDV5 : 0.0
/// PrecoEtiqueta : 3.89
/// PrecoCartaz : 0.0
/// PrecoVenda2 : 0.0
/// PrecoVenda3 : 0.0
/// PrecoVenda4 : 0.0
/// PrecoVenda5 : 0.0
/// FatorPr3 : 0
/// FatorPr4 : 0
/// FatorPr5 : 0
/// CodEstoque : 0
/// EstoqueMinimo : 0.0
/// EstoqueMaximo : 0.0
/// VendaMediaDiaria : 0.0
/// Espaco : 0
/// CodigoCaixa : ""
/// CustoCompra : 76.3639
/// CustoEmpresa : 76.3639
/// CustoFiscal : 76.3639
/// CustoMedio : 76.3639
/// CustoTranferencia : 76.3639
/// SetorLoja : ""
/// SetorDeposito : ""
/// PrecoUnidadeMedida : 0.0
/// DescricaoPDV : "Kinder Ovo"
/// Bloqueado : false
/// Altura : 0
/// Largura : 0
/// Profundidade : 0
/// Peso : 0.0
/// PesoLiquido : 0.0
/// DescricaoCliente : ""
/// Temperatura : 0.0
/// TipoEmbalagem : "UN"
/// QuantidadeEmbalagem : 0

class Produtos {
  int _codigo;
  int _sku;
  String _codigoBarras;
  String _codigoNCM;
  String _descricao;
  String _complemento;
  String _marca;
  double _estoque;
  double _preco;
  String _grupo;
  String _oferta;
  String _dataOferta;
  double _precoNormal;
  String _codigoUnidade;
  String _codigoDepartamento;
  String _departamento;
  bool _ativo;
  String _codigoTributario;
  double _estoque1;
  double _estoque2;
  double _estoque3;
  double _estoque4;
  double _estoque5;
  double _precoLista;
  double _precoPDV;
  double _precoPDV3;
  double _precoPDV4;
  double _precoPDV5;
  double _precoEtiqueta;
  double _precoCartaz;
  double _precoVenda2;
  double _precoVenda3;
  double _precoVenda4;
  double _precoVenda5;
  int _fatorPr3;
  int _fatorPr4;
  int _fatorPr5;
  int _codEstoque;
  double _estoqueMinimo;
  double _estoqueMaximo;
  double _vendaMediaDiaria;
  int _espaco;
  String _codigoCaixa;
  double _custoCompra;
  double _custoEmpresa;
  double _custoFiscal;
  double _custoMedio;
  double _custoTranferencia;
  String _setorLoja;
  String _setorDeposito;
  double _precoUnidadeMedida;
  String _descricaoPDV;
  bool _bloqueado;
  int _altura;
  int _largura;
  int _profundidade;
  double _peso;
  double _pesoLiquido;
  String _descricaoCliente;
  double _temperatura;
  String _tipoEmbalagem;
  int _quantidadeEmbalagem;

  int get codigo => _codigo;
  int get sku => _sku;
  String get codigoBarras => _codigoBarras;
  String get codigoNCM => _codigoNCM;
  String get descricao => _descricao;
  String get complemento => _complemento;
  String get marca => _marca;
  double get estoque => _estoque;
  double get preco => _preco;
  String get grupo => _grupo;
  String get oferta => _oferta;
  String get dataOferta => _dataOferta;
  double get precoNormal => _precoNormal;
  String get codigoUnidade => _codigoUnidade;
  String get codigoDepartamento => _codigoDepartamento;
  String get departamento => _departamento;
  bool get ativo => _ativo;
  String get codigoTributario => _codigoTributario;
  double get estoque1 => _estoque1;
  double get estoque2 => _estoque2;
  double get estoque3 => _estoque3;
  double get estoque4 => _estoque4;
  double get estoque5 => _estoque5;
  double get precoLista => _precoLista;
  double get precoPDV => _precoPDV;
  double get precoPDV3 => _precoPDV3;
  double get precoPDV4 => _precoPDV4;
  double get precoPDV5 => _precoPDV5;
  double get precoEtiqueta => _precoEtiqueta;
  double get precoCartaz => _precoCartaz;
  double get precoVenda2 => _precoVenda2;
  double get precoVenda3 => _precoVenda3;
  double get precoVenda4 => _precoVenda4;
  double get precoVenda5 => _precoVenda5;
  int get fatorPr3 => _fatorPr3;
  int get fatorPr4 => _fatorPr4;
  int get fatorPr5 => _fatorPr5;
  int get codEstoque => _codEstoque;
  double get estoqueMinimo => _estoqueMinimo;
  double get estoqueMaximo => _estoqueMaximo;
  double get vendaMediaDiaria => _vendaMediaDiaria;
  int get espaco => _espaco;
  String get codigoCaixa => _codigoCaixa;
  double get custoCompra => _custoCompra;
  double get custoEmpresa => _custoEmpresa;
  double get custoFiscal => _custoFiscal;
  double get custoMedio => _custoMedio;
  double get custoTranferencia => _custoTranferencia;
  String get setorLoja => _setorLoja;
  String get setorDeposito => _setorDeposito;
  double get precoUnidadeMedida => _precoUnidadeMedida;
  String get descricaoPDV => _descricaoPDV;
  bool get bloqueado => _bloqueado;
  int get altura => _altura;
  int get largura => _largura;
  int get profundidade => _profundidade;
  double get peso => _peso;
  double get pesoLiquido => _pesoLiquido;
  String get descricaoCliente => _descricaoCliente;
  double get temperatura => _temperatura;
  String get tipoEmbalagem => _tipoEmbalagem;
  int get quantidadeEmbalagem => _quantidadeEmbalagem;

  Produtos({
      int codigo, 
      int sku, 
      String codigoBarras, 
      String codigoNCM, 
      String descricao, 
      String complemento, 
      String marca, 
      double estoque, 
      double preco, 
      String grupo, 
      String oferta, 
      String dataOferta, 
      double precoNormal, 
      String codigoUnidade, 
      String codigoDepartamento, 
      String departamento, 
      bool ativo, 
      String codigoTributario, 
      double estoque1, 
      double estoque2, 
      double estoque3, 
      double estoque4, 
      double estoque5, 
      double precoLista, 
      double precoPDV, 
      double precoPDV3, 
      double precoPDV4, 
      double precoPDV5, 
      double precoEtiqueta, 
      double precoCartaz, 
      double precoVenda2, 
      double precoVenda3, 
      double precoVenda4, 
      double precoVenda5, 
      int fatorPr3, 
      int fatorPr4, 
      int fatorPr5, 
      int codEstoque, 
      double estoqueMinimo, 
      double estoqueMaximo, 
      double vendaMediaDiaria, 
      int espaco, 
      String codigoCaixa, 
      double custoCompra, 
      double custoEmpresa, 
      double custoFiscal, 
      double custoMedio, 
      double custoTranferencia, 
      String setorLoja, 
      String setorDeposito, 
      double precoUnidadeMedida, 
      String descricaoPDV, 
      bool bloqueado, 
      int altura, 
      int largura, 
      int profundidade, 
      double peso, 
      double pesoLiquido, 
      String descricaoCliente, 
      double temperatura, 
      String tipoEmbalagem, 
      int quantidadeEmbalagem}){
    _codigo = codigo;
    _sku = sku;
    _codigoBarras = codigoBarras;
    _codigoNCM = codigoNCM;
    _descricao = descricao;
    _complemento = complemento;
    _marca = marca;
    _estoque = estoque;
    _preco = preco;
    _grupo = grupo;
    _oferta = oferta;
    _dataOferta = dataOferta;
    _precoNormal = precoNormal;
    _codigoUnidade = codigoUnidade;
    _codigoDepartamento = codigoDepartamento;
    _departamento = departamento;
    _ativo = ativo;
    _codigoTributario = codigoTributario;
    _estoque1 = estoque1;
    _estoque2 = estoque2;
    _estoque3 = estoque3;
    _estoque4 = estoque4;
    _estoque5 = estoque5;
    _precoLista = precoLista;
    _precoPDV = precoPDV;
    _precoPDV3 = precoPDV3;
    _precoPDV4 = precoPDV4;
    _precoPDV5 = precoPDV5;
    _precoEtiqueta = precoEtiqueta;
    _precoCartaz = precoCartaz;
    _precoVenda2 = precoVenda2;
    _precoVenda3 = precoVenda3;
    _precoVenda4 = precoVenda4;
    _precoVenda5 = precoVenda5;
    _fatorPr3 = fatorPr3;
    _fatorPr4 = fatorPr4;
    _fatorPr5 = fatorPr5;
    _codEstoque = codEstoque;
    _estoqueMinimo = estoqueMinimo;
    _estoqueMaximo = estoqueMaximo;
    _vendaMediaDiaria = vendaMediaDiaria;
    _espaco = espaco;
    _codigoCaixa = codigoCaixa;
    _custoCompra = custoCompra;
    _custoEmpresa = custoEmpresa;
    _custoFiscal = custoFiscal;
    _custoMedio = custoMedio;
    _custoTranferencia = custoTranferencia;
    _setorLoja = setorLoja;
    _setorDeposito = setorDeposito;
    _precoUnidadeMedida = precoUnidadeMedida;
    _descricaoPDV = descricaoPDV;
    _bloqueado = bloqueado;
    _altura = altura;
    _largura = largura;
    _profundidade = profundidade;
    _peso = peso;
    _pesoLiquido = pesoLiquido;
    _descricaoCliente = descricaoCliente;
    _temperatura = temperatura;
    _tipoEmbalagem = tipoEmbalagem;
    _quantidadeEmbalagem = quantidadeEmbalagem;
}

  Produtos.fromJson(dynamic json) {
    _codigo = json["Codigo"];
    _sku = json["SKU"];
    _codigoBarras = json["CodigoBarras"];
    _codigoNCM = json["CodigoNCM"];
    _descricao = json["Descricao"];
    _complemento = json["Complemento"];
    _marca = json["Marca"];
    _estoque = json["Estoque"];
    _preco = json["Preco"];
    _grupo = json["Grupo"];
    _oferta = json["Oferta"];
    _dataOferta = json["DataOferta"];
    _precoNormal = json["PrecoNormal"];
    _codigoUnidade = json["CodigoUnidade"];
    _codigoDepartamento = json["CodigoDepartamento"];
    _departamento = json["Departamento"];
    _ativo = json["Ativo"];
    _codigoTributario = json["CodigoTributario"];
    _estoque1 = json["Estoque1"];
    _estoque2 = json["Estoque2"];
    _estoque3 = json["Estoque3"];
    _estoque4 = json["Estoque4"];
    _estoque5 = json["Estoque5"];
    _precoLista = json["PrecoLista"];
    _precoPDV = json["PrecoPDV"];
    _precoPDV3 = json["PrecoPDV3"];
    _precoPDV4 = json["PrecoPDV4"];
    _precoPDV5 = json["PrecoPDV5"];
    _precoEtiqueta = json["PrecoEtiqueta"];
    _precoCartaz = json["PrecoCartaz"];
    _precoVenda2 = json["PrecoVenda2"];
    _precoVenda3 = json["PrecoVenda3"];
    _precoVenda4 = json["PrecoVenda4"];
    _precoVenda5 = json["PrecoVenda5"];
    _fatorPr3 = json["FatorPr3"];
    _fatorPr4 = json["FatorPr4"];
    _fatorPr5 = json["FatorPr5"];
    _codEstoque = json["CodEstoque"];
    _estoqueMinimo = json["EstoqueMinimo"];
    _estoqueMaximo = json["EstoqueMaximo"];
    _vendaMediaDiaria = json["VendaMediaDiaria"];
    _espaco = json["Espaco"];
    _codigoCaixa = json["CodigoCaixa"];
    _custoCompra = json["CustoCompra"];
    _custoEmpresa = json["CustoEmpresa"];
    _custoFiscal = json["CustoFiscal"];
    _custoMedio = json["CustoMedio"];
    _custoTranferencia = json["CustoTranferencia"];
    _setorLoja = json["SetorLoja"];
    _setorDeposito = json["SetorDeposito"];
    _precoUnidadeMedida = json["PrecoUnidadeMedida"];
    _descricaoPDV = json["DescricaoPDV"];
    _bloqueado = json["Bloqueado"];
    _altura = json["Altura"];
    _largura = json["Largura"];
    _profundidade = json["Profundidade"];
    _peso = json["Peso"];
    _pesoLiquido = json["PesoLiquido"];
    _descricaoCliente = json["DescricaoCliente"];
    _temperatura = json["Temperatura"];
    _tipoEmbalagem = json["TipoEmbalagem"];
    _quantidadeEmbalagem = json["QuantidadeEmbalagem"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["Codigo"] = _codigo;
    map["SKU"] = _sku;
    map["CodigoBarras"] = _codigoBarras;
    map["CodigoNCM"] = _codigoNCM;
    map["Descricao"] = _descricao;
    map["Complemento"] = _complemento;
    map["Marca"] = _marca;
    map["Estoque"] = _estoque;
    map["Preco"] = _preco;
    map["Grupo"] = _grupo;
    map["Oferta"] = _oferta;
    map["DataOferta"] = _dataOferta;
    map["PrecoNormal"] = _precoNormal;
    map["CodigoUnidade"] = _codigoUnidade;
    map["CodigoDepartamento"] = _codigoDepartamento;
    map["Departamento"] = _departamento;
    map["Ativo"] = _ativo;
    map["CodigoTributario"] = _codigoTributario;
    map["Estoque1"] = _estoque1;
    map["Estoque2"] = _estoque2;
    map["Estoque3"] = _estoque3;
    map["Estoque4"] = _estoque4;
    map["Estoque5"] = _estoque5;
    map["PrecoLista"] = _precoLista;
    map["PrecoPDV"] = _precoPDV;
    map["PrecoPDV3"] = _precoPDV3;
    map["PrecoPDV4"] = _precoPDV4;
    map["PrecoPDV5"] = _precoPDV5;
    map["PrecoEtiqueta"] = _precoEtiqueta;
    map["PrecoCartaz"] = _precoCartaz;
    map["PrecoVenda2"] = _precoVenda2;
    map["PrecoVenda3"] = _precoVenda3;
    map["PrecoVenda4"] = _precoVenda4;
    map["PrecoVenda5"] = _precoVenda5;
    map["FatorPr3"] = _fatorPr3;
    map["FatorPr4"] = _fatorPr4;
    map["FatorPr5"] = _fatorPr5;
    map["CodEstoque"] = _codEstoque;
    map["EstoqueMinimo"] = _estoqueMinimo;
    map["EstoqueMaximo"] = _estoqueMaximo;
    map["VendaMediaDiaria"] = _vendaMediaDiaria;
    map["Espaco"] = _espaco;
    map["CodigoCaixa"] = _codigoCaixa;
    map["CustoCompra"] = _custoCompra;
    map["CustoEmpresa"] = _custoEmpresa;
    map["CustoFiscal"] = _custoFiscal;
    map["CustoMedio"] = _custoMedio;
    map["CustoTranferencia"] = _custoTranferencia;
    map["SetorLoja"] = _setorLoja;
    map["SetorDeposito"] = _setorDeposito;
    map["PrecoUnidadeMedida"] = _precoUnidadeMedida;
    map["DescricaoPDV"] = _descricaoPDV;
    map["Bloqueado"] = _bloqueado;
    map["Altura"] = _altura;
    map["Largura"] = _largura;
    map["Profundidade"] = _profundidade;
    map["Peso"] = _peso;
    map["PesoLiquido"] = _pesoLiquido;
    map["DescricaoCliente"] = _descricaoCliente;
    map["Temperatura"] = _temperatura;
    map["TipoEmbalagem"] = _tipoEmbalagem;
    map["QuantidadeEmbalagem"] = _quantidadeEmbalagem;
    return map;
  }

}

/// message : "Dados carregados"

class Messages {
  String _message;

  String get message => _message;

  Messages({
      String message}){
    _message = message;
}

  Messages.fromJson(dynamic json) {
    _message = json["message"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["message"] = _message;
    return map;
  }

}
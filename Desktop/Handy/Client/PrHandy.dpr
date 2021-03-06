program PrHandy;

uses
  Forms,
  UMainMenu in 'Units\UMainMenu.pas' {FMainMenu},
  UCadastrarListaComum in 'Units\UCadastrarListaComum.pas' {FCadastrarListaComum},
  UCadastrarFormComum in 'Units\UCadastrarFormComum.pas' {FCadastrarFormComum},
  UCadastrarFormClientes in 'Units\UCadastrarFormClientes.pas' {FCadastrarFormClientes},
  UCadastrarListaCondPagto in 'Units\UCadastrarListaCondPagto.pas' {FCadastrarListaCondPagto},
  UCadastrarFormRMA2 in 'Units\UCadastrarFormRMA2.pas' {FCadastrarFormRMA2},
  UCadastrarListaNaturezas in 'Units\UCadastrarListaNaturezas.pas' {FCadastrarListaNaturezas},
  UCadastrarFormNaturezas in 'Units\UCadastrarFormNaturezas.pas' {FCadastrarFormNaturezas},
  UCadastrarListaPedidos in 'Units\UCadastrarListaPedidos.pas' {FCadastrarListaPedidos},
  UCadastrarFormPedidos in 'Units\UCadastrarFormPedidos.pas' {FCadastrarFormPedidos},
  UCadastrarListaProdutos in 'Units\UCadastrarListaProdutos.pas' {FCadastrarListaProdutos},
  UCadastrarFormProdutos in 'Units\UCadastrarFormProdutos.pas' {FCadastrarFormProdutos},
  UCadastrarListaNCM in 'Units\UCadastrarListaNCM.pas' {FCadastrarListaNCM},
  UCadastrarFormNCM in 'Units\UCadastrarFormNCM.pas' {FCadastrarFormNCM},
  UEditarNFiscaisItens in 'Units\UEditarNFiscaisItens.pas' {FEditarNFiscaisItens},
  UCadastrarFormUsuarios in 'Units\UCadastrarFormUsuarios.pas' {FCadastrarFormUsuarios},
  uPwd in 'Units\uPwd.pas' {PasswordDlg},
  uSetup in 'Units\uSetup.pas' {FSetup},
  UCadastrarFormTransportadoras in 'Units\UCadastrarFormTransportadoras.pas' {FCadastrarFormTransportadoras},
  UCadastrarFormEmpresas in 'Units\UCadastrarFormEmpresas.pas' {FCadastrarFormEmpresas},
  UCadastrarListaNfiscais in 'Units\UCadastrarListaNfiscais.pas' {FCadastrarListaNfiscais},
  UCadastrarFormNfiscais in 'Units\UCadastrarFormNfiscais.pas' {FCadastrarFormNfiscais},
  UEditarNfEntradasItens in 'Units\UEditarNfEntradasItens.pas' {FEditarNfEntradasItens},
  UBuscaProdutos in 'Units\UBuscaProdutos.pas' {FBuscaProdutos},
  UImprimirEstoque in 'Units\UImprimirEstoque.pas' {FImprimirEstoque},
  UCadastrarListaMovimentacoes in 'Units\UCadastrarListaMovimentacoes.pas' {FCadastrarListaMovimentacoes},
  UCadastrarFormMovimentacoes in 'Units\UCadastrarFormMovimentacoes.pas' {FCadastrarFormMovimentacoes},
  UImprimirClientesHist in 'Units\UImprimirClientesHist.pas' {FImprimirClientesHist},
  UImprimirDemonstracaoPrevRpt in 'Units\UImprimirDemonstracaoPrevRpt.pas' {FImprimirDemonstracaoPrevRpt: TQuickRep},
  UImprimirPedidos in 'Units\UImprimirPedidos.pas' {FImprimirPedidos},
  UCadastrarListaDuplicatas in 'Units\UCadastrarListaDuplicatas.pas' {FCadastrarListaDuplicatas},
  UCadastrarFormDuplicatas in 'Units\UCadastrarFormDuplicatas.pas' {FCadastrarFormDuplicatas},
  UImprimirClientesNovos in 'Units\UImprimirClientesNovos.pas' {FImprimirClientesNovos},
  UImprimirClientesHistRpt in 'Units\UImprimirClientesHistRpt.pas' {FImprimirClientesHistRpt: TQuickRep},
  UManutencaoListaNfiscaisDemonstracao in 'Units\UManutencaoListaNfiscaisDemonstracao.pas' {FManutencaoListaNFiscaisDemonstracao},
  UManutencaoFormNfiscaisDemonstracao in 'Units\UManutencaoFormNfiscaisDemonstracao.pas' {FManutencaoFormNFiscaisDemonstracao},
  USplash in 'Units\USplash.pas' {FSplash},
  UDM in 'Units\UDM.pas' {DM: TDataModule},
  UImprimirDemonstracaoPrev in 'Units\UImprimirDemonstracaoPrev.pas' {FImprimirDemonstracaoPrev},
  UImprimirClientesUFRpt2 in 'Units\UImprimirClientesUFRpt2.pas' {FImprimirClientesUFRpt2: TQuickRep},
  UImprimirClientesNovosRpt in 'Units\UImprimirClientesNovosRpt.pas' {FImprimirClientesNovosRpt: TQuickRep},
  UImprimirEstoqueRpt2 in 'Units\UImprimirEstoqueRpt2.pas' {FImprimirEstoqueRpt2: TQuickRep},
  UImprimirDuplicatas in 'Units\UImprimirDuplicatas.pas' {FImprimirDuplicatas},
  UImprimirDuplicatasRpt in 'Units\UImprimirDuplicatasRpt.pas' {FImprimirDuplicatasRpt: TQuickRep},
  UCadastrarListaRMA in 'Units\UCadastrarListaRMA.pas' {FCadastrarListaRMA},
  UCadastrarFormCondPagto in 'Units\UCadastrarFormCondPagto.pas' {FCadastrarFormCondPagto},
  UEditarRMAEquip in 'Units\UEditarRMAEquip.pas' {FEditarRMAEquip},
  UEditarRMA2Item in 'Units\UEditarRMA2Item.pas' {FEditarRMA2Item},
  UImportaEntradas in 'Units\UImportaEntradas.pas' {FImportaEntradas},
  UImprimirClientesUFRpt3 in 'Units\UImprimirClientesUFRpt3.pas' {FImprimirClientesUFRpt3: TQuickRep},
  UCadastrarListaModelos in 'Units\UCadastrarListaModelos.pas' {FCadastrarListaModelos},
  UCadastrarFormModelos in 'Units\UCadastrarFormModelos.pas' {FCadastrarFormModelos},
  UCadastrarFormVendedores in 'Units\UCadastrarFormVendedores.pas' {FCadastrarFormVendedores},
  UCadastrarListaAcessos in 'Units\UCadastrarListaAcessos.pas' {FCadastrarListaAcessos},
  UImprimirVendaAcumulado in 'Units\UImprimirVendaAcumulado.pas' {FImprimirVendaAcumulado},
  UImprimirNfiscaisVendRpt in 'Units\UImprimirNfiscaisVendRpt.pas' {FImprimirNFiscaisVendRpt: TQuickRep},
  UCadastrarFormAcessos in 'Units\UCadastrarFormAcessos.pas' {FCadastrarFormAcessos},
  UConsultarNfiscaisSerie in 'Units\UConsultarNfiscaisSerie.pas' {FConsultarNFiscaisSerie},
  UImprimirNfiscaisFechRpt in 'Units\UImprimirNfiscaisFechRpt.pas' {FImprimirNFiscaisFechRpt: TQuickRep},
  UImprimirNfiscaisFech in 'Units\UImprimirNfiscaisFech.pas' {FImprimirNfiscaisFech},
  UImprimirPedidosRpt in 'Units\UImprimirPedidosRpt.pas' {FImprimirPedidosRpt: TQuickRep},
  UCadastrarListaClassificacao in 'Units\UCadastrarListaClassificacao.pas' {FCadastrarListaClassificacao},
  UCadastrarFormClassificacao in 'Units\UCadastrarFormClassificacao.pas' {FCadastrarFormClassificacao},
  UImprimirAssistencias in 'Units\UImprimirAssistencias.pas' {FImprimirAssistencias},
  UImprimirAssistenciasRpt in 'Units\UImprimirAssistenciasRpt.pas' {FImprimirAssistenciasRpt: TQuickRep},
  UCadastrarListaNFServicos in 'Units\UCadastrarListaNFServicos.pas' {FCadastrarListaNFServicos},
  UCadastrarFormNFServicos in 'Units\UCadastrarFormNFServicos.pas' {FCadastrarFormNFServicos},
  uPesquisaNF in 'Units\uPesquisaNF.pas' {FPesquisaNF},
  UCadastrarListaNfEntradas in 'Units\UCadastrarListaNfEntradas.pas' {FCadastrarListaNfEntradas},
  UCadastrarFormNfEntradas in 'Units\UCadastrarFormNfEntradas.pas' {FCadastrarFormNfEntradas},
  UEditarPedidosItens in 'Units\UEditarPedidosItens.pas' {FEditarPedidosItens},
  UTransferenciaEntrada in 'Units\UTransferenciaEntrada.pas' {FTransferenciaEntrada},
  USugestaoCompras in 'Units\USugestaoCompras.pas' {FSugestaoCompras},
  UImprimirEstoqueRpt in 'Units\UImprimirEstoqueRpt.pas' {FImprimirEstoqueRpt: TQuickRep},
  UCadastrarNfiscaisSerie in 'Units\UCadastrarNfiscaisSerie.pas' {FCadastrarNfiscaisSerie},
  UCadastrarNfiscaisSerie2 in 'Units\UCadastrarNfiscaisSerie2.pas' {FCadastrarNfiscaisSerie2},
  UCadastrarFormContatos in 'Units\UCadastrarFormContatos.pas' {FCadastrarFormContatos},
  UConsultarContatos in 'Units\UConsultarContatos.pas' {FConsultarContatos},
  UCadastrarFormConteiner in 'Units\UCadastrarFormConteiner.pas' {FCadastrarFormConteiner},
  UCadastrarListaConteiner in 'Units\UCadastrarListaConteiner.pas' {FCadastrarListaConteiner},
  UEditarConteinerItens in 'Units\UEditarConteinerItens.pas' {FEditarConteinerItens},
  UConsultarConteiners in 'Units\UConsultarConteiners.pas' {FConsultarConteiners},
  UImprimirMalaDireta in 'Units\UImprimirMalaDireta.pas' {FImprimirMalaDireta},
  UImprimirMalaDiretaRpt in 'Units\UImprimirMalaDiretaRpt.pas' {FImprimirMalaDiretaRpt: TQuickRep},
  UImprimirMalaDiretaParametros in 'Units\UImprimirMalaDiretaParametros.pas' {FImprimirMalaDiretaParametros},
  uConsultarAlteracoes in 'Units\uConsultarAlteracoes.pas' {fConsultarAlteracoes},
  Extensos in '..\..\comum\Extensos\EXTENSOS.PAS',
  UTrocaSenha in 'Units\UTrocaSenha.pas' {fTrocaSenha},
  UImprimirClientesUF in 'Units\UImprimirClientesUF.pas' {FImprimirClientesUF},
  UImprimirClientesUFRpt1 in 'Units\UImprimirClientesUFRpt1.pas' {FImprimirClientesUFRpt1: TQuickRep},
  UExportarRMA in 'Units\UExportarRMA.pas' {FExportarRMA},
  UCadastrarListaAgenda in 'Units\UCadastrarListaAgenda.pas' {FCadastrarListaAgenda},
  UCadastrarFormAgenda in 'Units\UCadastrarFormAgenda.pas' {FCadastrarFormAgenda},
  UBuscaClientes in 'Units\UBuscaClientes.pas' {FBuscaClientes},
  UCadastrarProdutosFaltantes in 'Units\UCadastrarProdutosFaltantes.pas' {FCadastrarProdutosFaltantes},
  UCadastrarListaProdutosFaltantes in 'Units\UCadastrarListaProdutosFaltantes.pas' {FCadastrarListaProdutosFaltantes},
  UCadastrarFormProdutosFaltantes in 'Units\UCadastrarFormProdutosFaltantes.pas' {FCadastrarFormProdutosFaltantes},
  UCadastrarListaClientes in 'Units\UCadastrarListaClientes.pas' {FCadastrarListaClientes},
  UConsultarListaClientes in 'Units\UConsultarListaClientes.pas' {FConsultarListaClientes},
  uVisualizarAgenda in 'Units\uVisualizarAgenda.pas' {VisualizarAgenda},
  UCadastrarListaTipoCliente in 'Units\UCadastrarListaTipoCliente.pas' {FCadastrarListaTipoCliente},
  UCadastrarFormTipoCliente in 'Units\UCadastrarFormTipoCliente.pas' {FCadastrarFormTipoCliente},
  Vendedor in '..\dll\Vendedor.pas',
  UImprimirComissao in 'Units\UImprimirComissao.pas' {FImprimirComissao},
  uCadastrarListaContasPagar in 'Units\uCadastrarListaContasPagar.pas' {FCadastrarListaContasPagar},
  uCadastrarFormContasPagar in 'Units\uCadastrarFormContasPagar.pas' {FCadastrarFormContasPagar},
  uEditarMemo in 'Units\uEditarMemo.pas' {frmEditarMemo},
  uCadastrarListaContasPagarAuto in 'Units\uCadastrarListaContasPagarAuto.pas' {FCadastrarListaContasPagarAuto},
  uCadastrarFormContasPagarAuto in 'Units\uCadastrarFormContasPagarAuto.pas' {FCadastrarFormContasPagarAuto},
  uGerarContasPagar in 'Units\uGerarContasPagar.pas' {FGerarContasPagar},
  uImprimirNFe in 'Units\uImprimirNFe.pas' {fImprimirNFe},
  uCadastrarListaEstados in 'Units\uCadastrarListaEstados.pas' {FCadastrarListaEstados},
  UCadastrarFormEstados in 'Units\UCadastrarFormEstados.pas' {FCadastrarFormEstados},
  Usuario in 'Units\Usuario.pas',
  Transportadora in 'Units\Transportadora.pas',
  ufrmStatus in '..\..\NF-e\ufrmStatus.pas' {frmStatus},
  FWebService in '..\..\NF-e\FWebService.pas' {formWebService},
  TipoCliente in 'Units\TipoCliente.pas',
  Assistencias in 'Units\Assistencias.pas',
  AssistenciasEquipamento in 'Units\AssistenciasEquipamento.pas',
  AssistenciasItem in 'Units\AssistenciasItem.pas',
  Produto in 'Units\Produto.pas',
  Classificacao in 'Units\Classificacao.pas',
  Agenda in 'Units\Agenda.pas',
  uConsultarPedidosSemEstoque in 'Units\uConsultarPedidosSemEstoque.pas' {FConsultarPedidosSemEstoque},
  RMA in 'Units\RMA.pas',
  UCadastrarFormRMA1 in 'Units\UCadastrarFormRMA1.pas' {FCadastrarFormRMA1},
  UEditarRMAItens in 'Units\UEditarRMAItens.pas' {FEditarRMAItens},
  UImprimirRMA in 'Units\UImprimirRMA.pas' {FImprimirRMA},
  UImprimirRMARpt in 'Units\UImprimirRMARpt.pas' {FImprimirRMARpt: TQuickRep},
  Fornecedor in 'Units\Fornecedor.pas',
  uCadastrarListaFornecedor in 'Units\uCadastrarListaFornecedor.pas' {FCadastrarListaFornecedor},
  uCadastrarFormFornecedor in 'Units\uCadastrarFormFornecedor.pas' {FCadastrarFormFornecedor},
  Reflection in 'Units\Reflection.pas',
  ContaBanco in 'Units\ContaBanco.pas',
  uCadastrarListaContaBanco in 'Units\uCadastrarListaContaBanco.pas' {FCadastrarListaContaBanco},
  uCadastrarFormContaBanco in 'Units\uCadastrarFormContaBanco.pas' {FCadastrarFormContaBanco},
  EstadoIva in 'Units\EstadoIva.pas',
  uConfiguraListaClientes in 'Units\uConfiguraListaClientes.pas' {ConfiguraListaClientes},
  Cadastro in 'Units\Cadastro.pas',
  ncm in 'Units\ncm.pas',
  _Cadastro in 'Units\_Cadastro.pas',
  ProdutoFaltante in 'Units\ProdutoFaltante.pas',
  CondPagto in 'Units\CondPagto.pas',
  Estado in 'Units\Estado.pas',
  Natureza in 'Units\Natureza.pas',
  ContaPagar in 'Units\ContaPagar.pas',
  Acesso in 'Units\Acesso.pas',
  Cliente in 'Units\Cliente.pas',
  Duplicata in 'Units\Duplicata.pas',
  Modelo in 'Units\Modelo.pas',
  Conteiner in 'Units\Conteiner.pas',
  Pedido in 'Units\Pedido.pas',
  Kardex in 'Units\Kardex.pas',
  NfServico in 'Units\NfServico.pas',
  NfEntrada in 'Units\NfEntrada.pas',
  Nfiscal in 'Units\Nfiscal.pas',
  threadEmail in 'Units\threadEmail.pas',
  Empresa in 'Units\Empresa.pas',
  uDuplicaPedido in 'Units\uDuplicaPedido.pas' {FDuplicaPedido},
  HistoricoAlteracao in 'Units\HistoricoAlteracao.pas',
  HistoricoLogin in 'Units\HistoricoLogin.pas',
  UEditarNFiscalItemImportacao in 'Units\UEditarNFiscalItemImportacao.pas' {FEditarNFiscalItemImportacao},
  UImprimirMovimentacao in 'Units\UImprimirMovimentacao.pas' {FImprimirMovimentacao},
  UImprimirMovimentacaoRpt in 'Units\UImprimirMovimentacaoRpt.pas' {QRImprimirMovimentacao: TQuickRep},
  UCadastrarFormEstoque in 'Units\UCadastrarFormEstoque.pas' {FCadastrarFormEstoque},
  USelecionarNumeroSerie in 'Units\USelecionarNumeroSerie.pas' {FSelecionarNumeroSerie},
  uConsultarNumeroSerie in 'Units\uConsultarNumeroSerie.pas' {FConsultarNumeroSerie},
  CartaCorrecao in 'Units\CartaCorrecao.pas',
  UCadastrarListaCartaCorrecao in 'Units\UCadastrarListaCartaCorrecao.pas' {FCadastrarListaCartaCorrecao},
  UCadastrarFormCartaCorrecao in 'Units\UCadastrarFormCartaCorrecao.pas' {FCadastrarFormCartaCorrecao},
  UImprimirNfiscaisVend in 'Units\UImprimirNfiscaisVend.pas' {FImprimirNFiscaisVend},
  uTransferenciaEstoque in 'Units\uTransferenciaEstoque.pas' {FTransferenciaEstoque},
  UImportarNFe in 'Units\UImportarNFe.pas' {FImportarNFe},
  URegistrarVenda in 'Units\URegistrarVenda.pas' {FRegistrarVenda},
  WaitForm in 'Units\WaitForm.pas',
  Balanco in 'Units\Balanco.pas',
  UCadastrarListaBalanco in 'Units\UCadastrarListaBalanco.pas' {FCadastrarListaBalanco},
  UCadastrarFormBalanco in 'Units\UCadastrarFormBalanco.pas' {FCadastrarFormBalanco},
  UEditarBalancoContagem in 'Units\UEditarBalancoContagem.pas' {FEditarBalancoContagem},
  Unit3 in 'Units\Unit3.pas' {Form2},
  Util in 'Units\Util.pas',
  UDiferencaBalancoContagem in 'Units\UDiferencaBalancoContagem.pas' {FDiferencaBalancoContagem},
  uRegistrarVendaSenha in 'Units\uRegistrarVendaSenha.pas' {RegistrarVendaSenha},
  uPesquisarPedido in 'Units\uPesquisarPedido.pas' {FPesquisarPedido};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Sistema de Gest�o Administrativa';
  Application.HelpFile := 'handy.hlp';
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFDiferencaBalancoContagem, FDiferencaBalancoContagem);
  Application.CreateForm(TRegistrarVendaSenha, RegistrarVendaSenha);
  Application.CreateForm(TFPesquisarPedido, FPesquisarPedido);
  Application.Run;
end.

GLOBAL hBemaOneDLL

// Exemplo de uso da BemaOne.DLL - BemaOne API
// Autores: Anderson Lima, Daniel Lima, Adroaldo Martins, Frederico Schneider
// Data: 27 janeiro 2017

#include "vxh.ch"
#include "Form1.xfm"
//---------------------------------------- End of system code ----------------------------------------//

#pragma BEGINDUMP

#include <windows.h>
#include "hbapi.h"
#include "hbapierr.h"

HB_FUNC( RETORNATAMANHOBUFFER )
{
   hb_retni( strlen( (const char *) hb_parni(1) ) );
}

#pragma ENDDUMP



//----------------------------------------------------------------------------------------------------

//----------------------------------------------------------------------------------------------------
METHOD btnInfoSistema_OnClick( Sender ) CLASS Form1
   Local xRetorno, pRetorno
	
	pRetorno := dllcall(hBemaOneDLL, 0x0008, "Bematech_Fiscal_ListarConfiguracoes")
	xRetorno:= HB_Pointer2String(pRetorno, RETORNATAMANHOBUFFER(pRetorno))
   
   ::edtRetorno:text := xRetorno
   
RETURN Self


//----------------------------------------------------------------------------------------------------
METHOD btnStatusImpressora_OnClick( Sender ) CLASS Form1 
   Local xRetorno, pRetorno
	
	pRetorno := dllcall(hBemaOneDLL, 0x0008, "Bematech_Fiscal_ObterStatusImpressora")
	xRetorno:= HB_Pointer2String(pRetorno, RETORNATAMANHOBUFFER(pRetorno))
   
   ::edtRetorno:text := xRetorno
   
RETURN Self

//----------------------------------------------------------------------------------------------------
METHOD btnAbrir_OnClick( Sender ) CLASS Form1
   Local xRetorno, pRetorno
   Local dados
   Local dataNF := Transform( Dtos( Date() ), "@R 9999-99-99" ) + "T" + Time() + "-02:00"

  
   dados := ' {  ' + CRLF  
   dados += '  "versao": "3.10", ' + CRLF 
   dados += '  "configuracao": { '  + CRLF 
   dados += '  	"imprimir": true, '  + CRLF 
	dados += '  	"email": false '  + CRLF 
	dados += '  }, '  + CRLF 
	dados += '  "identificacao": { '  + CRLF 
	dados += '  	"cuf": "41", '  + CRLF 
	dados += '  	"cnf": "00005000", '  + CRLF 
	dados += '  	"natOp": "VENDA", '  + CRLF 
	dados += '  	"indPag": 0, '  + CRLF 
	dados += '  	"mod": "65", '  + CRLF 
	dados += '  	"serie": "'+ ::edtSerie:text + '", '  + CRLF 
	dados += '  	"nnf": "'+ ::edtNumero:text +'", '  + CRLF 
	dados += '  	"dhEmi": "' + dataNF + '",'  +CRLF 
	dados += '  	"tpNF": "1", '  + CRLF 
	dados += '  	"idDest": 1, '  + CRLF 
	dados += '  	"tpImp": 4, '  + CRLF 
	dados += '  	"tpEmis": 1, '  + CRLF 
	dados += '  	"cdv": 8, '  + CRLF 
	dados += '  	"tpAmb": 2, '  + CRLF 
	dados += '  	"finNFe": 1, '  + CRLF 
	dados += '  	"indFinal": 1, '  + CRLF 
	dados += '  	"indPres": 1, '  + CRLF 
	dados += '  	"procEmi": 0, '  + CRLF 
	dados += '  	"verProc": "1.0.0.0", '  + CRLF 
	dados += '  	"cMunFG": "4106902" '  + CRLF 
	dados += '  }, '  + CRLF 
	dados += '  "emitente": { '  + CRLF 
	dados += '  	"cnpj": "' + ::edtCnpj:text + '", '  + CRLF 
	dados += '  	"endereco": { '  + CRLF 
	dados += '  		"nro": "0", ' + CRLF 
	dados += '  		"uf": "PR", '  + CRLF 
	dados += '  		"cep": "81320400", '  + CRLF 
	dados += '  		"fone": "4184848484", '  + CRLF 
	dados += '  		"xBairro": "CABRAL", '  + CRLF 
	dados += '  		"xLgr": "AV Teste", '  + CRLF 
	dados += '  		"cMun": "4106902", '  + CRLF 
	dados += '  		"cPais": "1058", '  + CRLF 
	dados += '  		"xPais": "BRASIL", ' + CRLF 
	dados += '  		"xMun": "Curitiba" '  + CRLF 
	dados += '	   }, '  + CRLF 
	dados += '	   "ie": "1018146530", '  + CRLF 
	dados += '	   "crt": 3, '  + CRLF 
	dados += '	   "xNome": "BEMATECH SA", '  + CRLF 
	dados += '	   "xFant": "BEMATECH" '  + CRLF 
	dados += '  }, '  + CRLF 
	dados += '  "destinatario": { '  + CRLF 
	dados += '  	"cpf": "65564179048", '  + CRLF 
	dados += '	   "endereco": { '  + CRLF 
	dados += '	   	"nro": "842", '  + CRLF 
	dados += '	   	"uf": "PR", '  + CRLF 
	dados += '		   "cep": "80020320", '  + CRLF 
	dados += '  		"fone": "41927598874", '  + CRLF 
	dados += '  		"xBairro": "Centro", '  + CRLF 
	dados += '  		"xLgr": "Marechal Deodoro", '  + CRLF 
	dados += '  		"cMun": "4106902", '  + CRLF 
	dados += '  		"cPais": "1058", '  + CRLF 
	dados += '  		"xPais": "Brasil", '  + CRLF 
	dados += '  		"xMun": "Curitiba" '  + CRLF 
	dados += '  	}, '  + CRLF 
	dados += '	   "indIEDest": 9, '  + CRLF 
	dados += '  	"email": "teste@teste.com", '  + CRLF 
	dados += '  	"xNome": "NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL " '  + CRLF 
	dados += '  } '  + CRLF 
   dados += '} ' 
   
   ::edtEnvio:text := dados
	
	pRetorno := dllcall(hBemaOneDLL, 0x0008, "Bematech_Fiscal_AbrirNota", dados)
	xRetorno:= HB_Pointer2String(pRetorno, RETORNATAMANHOBUFFER(pRetorno))
   
   ::edtRetorno:text := xRetorno
   
   
RETURN Self

//----------------------------------------------------------------------------------------------------
METHOD bntVender_OnClick( Sender ) CLASS Form1
   Local xRetorno, pRetorno
   Local dados

   
   dados:= '{' + CRLF
   dados+= '   "produto": {' + CRLF
	dados+= '   "cean": "7897238304177",' + CRLF
	dados+= '   "ncm": "85258029", ' + CRLF
	dados+= '   "cfop": "5101",' + CRLF
	dados+= '   "indTot": 1,'    + CRLF
   dados+= '	"vUnCom": 1.000,' + CRLF
   dados+= '	"uTrib": "UN",' + CRLF
   dados+= '	"vUnTrib": "1.000",' + CRLF
   dados+= '	"cProd": "85258029901234",' + CRLF
   dados+= '	"xProd": "Produto Teste",' + CRLF
   dados+= '	"uCom": "UN",' + CRLF
   dados+= '	"qTrib": 1.000,' + CRLF
   dados+= '	"qCom": "1.000",' + CRLF
   dados+= '	"vProd": 1.00' + CRLF
   dados+= '  },' + CRLF
   dados+= '  "imposto": {' + CRLF
   dados+= '	"icms": {' + CRLF
   dados+= '	  "icms00": {' + CRLF
   dados+= '		"orig": 1,' + CRLF
   dados+= '		"cst": "00",' + CRLF
   dados+= '		"modBC": 3,' + CRLF
   dados+= '		"vbc": 1.00,' + CRLF
   dados+= '		"picms": 1.01,' + CRLF
   dados+= '		"vicms": 0.01' + CRLF
   dados+= '	  }' + CRLF
   dados+= '	},' + CRLF
   dados+= '	"vTotTrib": 0.00' + CRLF
   dados+= '  }' + CRLF
   dados+= '} ' 
   
   ::edtEnvio:text := dados
	
	pRetorno := dllcall(hBemaOneDLL, 0x0008, "Bematech_Fiscal_VenderItem", dados)
	xRetorno:= HB_Pointer2String(pRetorno, RETORNATAMANHOBUFFER(pRetorno))
   
   ::edtRetorno:text := xRetorno
   
RETURN Self

//----------------------------------------------------------------------------------------------------
METHOD btnPagar_OnClick( Sender ) CLASS Form1
   Local xRetorno, pRetorno
   Local dados
   
   dados:='{' + CRLF
   dados+= '  "tPag": 1,' + CRLF
   dados+= '  "vPag": 1.00' + CRLF
   dados+= '}'

   
   ::edtEnvio:text = dados
	
	pRetorno := dllcall(hBemaOneDLL, 0x0008, "Bematech_Fiscal_EfetuarPagamento", dados)
	xRetorno:= HB_Pointer2String(pRetorno, RETORNATAMANHOBUFFER(pRetorno))
   
   ::edtRetorno:text := xRetorno
   
RETURN Self

//----------------------------------------------------------------------------------------------------
METHOD btnFechar_OnClick( Sender ) CLASS Form1
   Local xRetorno, pRetorno
   Local dados
   
   dados:='{' + CRLF
   dados+= '  "total": {' + CRLF
   dados+= '    "icmsTotal": {' + CRLF
   dados+= '      "vbc": 1.00,' + CRLF
   dados+= '      "vicms": 0.01,' + CRLF
   dados+= '      "vicmsDeson": 0.00,' + CRLF
   dados+= '      "vbcst": 0.00,' + CRLF
   dados+= '      "vst": 0.00,' + CRLF
   dados+= '      "vii": 0.00,' + CRLF
   dados+= '      "vipi": 0.00,' + CRLF
   dados+= '      "vpis": 0.00,' + CRLF
   dados+= '      "vcofins": 0.00,' + CRLF
   dados+= '      "vnf": 1.00,' + CRLF
   dados+= '      "vTotTrib": 0.00,' + CRLF
   dados+= '      "vDesc": 0.00,' + CRLF
   dados+= '      "vProd": 1.00,' + CRLF
   dados+= '      "vOutro": 0.00,' + CRLF
   dados+= '      "vSeg": 0.00,' + CRLF
   dados+= '      "vFrete": 0.00' + CRLF
   dados+= '    }' + CRLF
   dados+= '  },' + CRLF
   dados+= '  "informacaoAdicional": {    ' + CRLF
   dados+= '    "infCpl": "COO:000328 | CCF:000209 | Sequência 004 - Nota com Cliente",' + CRLF
   dados+= '    "observacoesContribuintes": [' + CRLF
   dados+= '      {' + CRLF
   dados+= '        "xTexto": "0.00",' + CRLF
   dados+= '        "xCampo": "Troco"' + CRLF
   dados+= '      }' + CRLF
   dados+= '    ]' + CRLF
   dados+= '  }  ' + CRLF
   dados+= '}' + CRLF
   
   ::edtEnvio:text := dados
	
	pRetorno := dllcall(hBemaOneDLL, 0x0008, "Bematech_Fiscal_FecharNota", dados)
	xRetorno:= HB_Pointer2String(pRetorno, RETORNATAMANHOBUFFER(pRetorno))
   
   ::edtRetorno:text := xRetorno
   
RETURN Self

//----------------------------------------------------------------------------------------------------
METHOD btnCancelar_OnClick( Sender ) CLASS Form1
   Local xRetorno, pRetorno
   Local dados
   Local dataNF := Transform( Dtos( Date() ), "@R 9999-99-99" ) + "T" + Time() + "-02:00"

   ::edtEnvio:Text := ""

   dados:= '{ ' + CRLF
   dados+= '   "id": "' + ::edIDCancelaNota:text + '",' + CRLF
   dados+= '   "xJust": "Cancelado pelo desenvolvedor",' + CRLF
   dados+= '   "dhEvento": "' + dataNF + '" ' + CRLF
   dados+= '}' + CRLF
 
   ::edtEnvio:text := dados
	

	pRetorno := dllcall(hBemaOneDLL, 0x0008, "Bematech_Fiscal_CancelarNota", dados)
	xRetorno:= HB_Pointer2String(pRetorno, RETORNATAMANHOBUFFER(pRetorno))
   
   ::edtRetorno:text := xRetorno


RETURN Self

//----------------------------------------------------------------------------------------------------
METHOD bntConsultarNota_OnClick( Sender ) CLASS Form1
   Local xRetorno, pRetorno
   Local dados 
   Local errhandle
   
   ::edtEnvio:Text := ""
   
   dados:= '{ ' + CRLF
   dados+= '   "modelo": "65",' + CRLF
   dados+= '   "serie": "' + ::edtConsultaSerie:text + '",' + CRLF
   dados+= '   "numero": "'+ ::edtConsultaNumero:text + '",' + CRLF
   dados+= '   "formato": "' + ::cbTipo:GetSelString() + '" ' + CRLF
   dados+= '}' + CRLF
 
   ::edtEnvio:text := dados
	

	pRetorno := dllcall(hBemaOneDLL, 0x0008, "Bematech_Fiscal_ConsultarNota", dados)
	xRetorno:= HB_Pointer2String(pRetorno, RETORNATAMANHOBUFFER(pRetorno))
   
   ::edtRetorno:text := xRetorno
   
   
   if ::cbTipo:Text = "pdf"
      errhandle := FCREATE(::edtConsultaSerie:text+"_"+::edtConsultaNumero:text + ".pdf")
      FWRITE(errhandle, HB_Base64Decode(xRetorno) )
      FCLOSE(errhandle)
      alert("Arquivo gerado: " + ::edtConsultaSerie:text+"_"+::edtConsultaNumero:text + ".pdf")
   endif

RETURN Self

//----------------------------------------------------------------------------------------------------
METHOD Form1_OnCreate( Sender ) CLASS Form1
	hBemaOneDLL:=DLLLOAD("BemaOne32.dll")
   
RETURN Self

//----------------------------------------------------------------------------------------------------
METHOD Form1_OnDestroy( Sender ) CLASS Form1
//   FreeLibrary(hBemaOneDLL)
RETURN Self

//----------------------------------------------------------------------------------------------------
METHOD Label1_OnClick( Sender ) CLASS Form1
   
RETURN Self

//----------------------------------------------------------------------------------------------------
METHOD Form1_OnShowWindow( Sender ) CLASS Form1
   ::cbTipo:AddItem( "json" )
   ::cbTipo:AddItem( "pdf" )
   ::cbTipo:SetCurSel( 1 )
RETURN Self

//----------------------------------------------------------------------------------------------------
METHOD btnImprimir_OnClick( Sender ) CLASS Form1
   Local xRetorno, pRetorno
   Local dados
   Local textoLivre := ::edTextoLivre:text 
   Local b64 
   
   ::edtRetorno:text := ""

   if ::cbGuilhotina:Checked
      textoLivre := textoLivre + chr(27) + 'm'
   endif

   b64 := HB_Base64Encode( textoLivre, len(textoLivre) )
   
   dados:= '{ ' + CRLF
   dados+= '   "dados": "' + b64  + '", ' + CRLF
   dados+= '   "base64": true' + CRLF
   dados+= '}' + CRLF
 
   ::edtEnvio:text := dados

	pRetorno := dllcall(hBemaOneDLL, 0x0008, "Bematech_Fiscal_ImprimirTextoLivre", dados)
	xRetorno:= HB_Pointer2String(pRetorno, RETORNATAMANHOBUFFER(pRetorno))
   
   ::edtRetorno:text := xRetorno
RETURN Self

//----------------------------------------------------------------------------------------------------
METHOD btnConsultarNotaChave_OnClick( Sender ) CLASS Form1
   Local xRetorno, pRetorno
   Local dados
   Local handle 
   
   ::edtEnvio:Text := ""
   
   dados:= '{ ' + CRLF
   dados+= '   "id": "' + ::edtChaveAcesso:text + '",' + CRLF
   dados+= '   "formato": "' + ::cbTipo:GetSelString() + '" ' + CRLF
   dados+= '}'
 
   ::edtEnvio:text := dados
	

	pRetorno := dllcall(hBemaOneDLL, 0x0008, "Bematech_Fiscal_ConsultarNota", dados)
	xRetorno:= HB_Pointer2String(pRetorno, RETORNATAMANHOBUFFER(pRetorno))
   
   ::edtRetorno:text := xRetorno
   
   if ::cbTipo:Text = "pdf"
      handle := FCREATE(::edtChaveAcesso:text+"_" + ".pdf")
      FWRITE(handle, HB_Base64Decode(xRetorno) )
      FCLOSE(handle)
      alert("Arquivo gerado: " + ::edtChaveAcesso:text+"_" + ".pdf")
   endif
   
RETURN Self

//----------------------------------------------------------------------------------------------------
METHOD btnNotaErro_OnClick( Sender ) CLASS Form1
   Local dados
   
   ::btnAbrir_OnClick( nil )
   
   dados:= '{' + CRLF
   dados+= '   "produto": {' + CRLF
	dados+= '   "cean": "7897238304177",' + CRLF
	dados+= '   "ncm": "85258029", ' + CRLF
	dados+= '   "cfop": "5101",' + CRLF
	dados+= '   "indTot": 1,'    + CRLF
   dados+= '	"vUnCom": 1.000,' + CRLF
   dados+= '	"uTrib": "UN",' + CRLF
   dados+= '	"vUnTrib": "1.000",' + CRLF
   dados+= '	"cProd": "85258029901234",' + CRLF
   dados+= '	"xProd": "Produto Teste",' + CRLF
   dados+= '	"uCom": "UN",' + CRLF
   dados+= '	"qTrib": 1.000,' + CRLF
   dados+= '	"qCom": "1.000",' + CRLF
   dados+= '	"vProd": 0.00' + CRLF  //Valor do produto zerado
   dados+= '  },' + CRLF
   dados+= '  "imposto": {' + CRLF
   dados+= '	"icms": {' + CRLF
   dados+= '	  "icms00": {' + CRLF
   dados+= '		"orig": 1,' + CRLF
   dados+= '		"cst": "00",' + CRLF
   dados+= '		"modBC": 3,' + CRLF
   dados+= '		"vbc": 1.00,' + CRLF
   dados+= '		"picms": 1.01,' + CRLF
   dados+= '		"vicms": 0.01' + CRLF
   dados+= '	  }' + CRLF
   dados+= '	},' + CRLF
   dados+= '	"vTotTrib": 0.00' + CRLF
   dados+= '  }' + CRLF
   dados+= '} ' 
   
	dllcall(hBemaOneDLL, 0x0008, "Bematech_Fiscal_VenderItem", dados)
	
   
   ::btnPagar_OnClick( Sender )
   
   ::btnFechar_OnClick( Sender )
   
RETURN Self

//----------------------------------------------------------------------------------------------------
METHOD btnEstornarNota_OnClick( Sender ) CLASS Form1
   Local xRetorno, pRetorno
   Local dados
   

	pRetorno := dllcall(hBemaOneDLL, 0x0008, "Bematech_Fiscal_EstornarNota", dados)
	xRetorno:= HB_Pointer2String(pRetorno, RETORNATAMANHOBUFFER(pRetorno))
   
   ::edtRetorno:text := xRetorno   
RETURN Self

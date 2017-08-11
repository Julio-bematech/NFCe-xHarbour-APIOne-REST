/*
 * xHarbour 1.2.3 Intl. (SimpLex) (Build 20161103)
 * Generated C source code from <C:\\Users\\b1103373\\Documents\\Visual xHarbour Projects\\Project1\\Source\\Project1_Main.prg>
 * Command: -oC:\Users\b1103373\Documents\Visual xHarbour Projects\Project1\Obj\Project1_Main.c -es2 -gc0 -m -n -w -q -DWIN -DWIN32 -D__EXPORT__ -D__VXH__ -IC:\xHB\include -IC:\xHB\include\w32 C:\Users\b1103373\Documents\Visual xHarbour Projects\Project1\Source\Project1_Main.prg 
 * Created: 2017.01.27 17:16:24 (Pelles ISO C Compiler 3.0 (32-bit))
 */

#include "hbvmpub.h"
#include "hbinit.h"

#define __PRG_SOURCE__ "C:\\Users\\b1103373\\Documents\\Visual xHarbour Projects\\Project1\\Source\\Project1_Main.prg"

/* Forward declarations of all PRG defined Functions. */
HB_FUNC( MAIN );

/* Forward declarations of all externally defined Functions. */
HB_FUNC_EXTERN( __PROJECT1 );
HB_FUNC_EXTERN( FORM1 );

#undef HB_PRG_PCODE_VER
#define HB_PRG_PCODE_VER 10

#include "hbapi.h"

HB_INIT_SYMBOLS_BEGIN( hb_vm_SymbolInit_PROJECT1_MAIN )
{ "MAIN", {HB_FS_PUBLIC | HB_FS_LOCAL | HB_FS_FIRST}, {HB_FUNCNAME( MAIN )}, &ModuleFakeDyn },
{ "RUN", {HB_FS_PUBLIC}, {NULL}, NULL },
{ "__PROJECT1", {HB_FS_PUBLIC}, {HB_FUNCNAME( __PROJECT1 )}, NULL },
{ "FORM1", {HB_FS_PUBLIC}, {HB_FUNCNAME( FORM1 )}, NULL }
HB_INIT_SYMBOLS_EX_END( hb_vm_SymbolInit_PROJECT1_MAIN, __PRG_SOURCE__,  0x000a )

#if defined( HB_PRAGMA_STARTUP )
   #pragma startup hb_vm_SymbolInit_PROJECT1_MAIN
#elif defined( HB_DATASEG_STARTUP )
   #define HB_DATASEG_BODY    HB_DATASEG_FUNC( hb_vm_SymbolInit_PROJECT1_MAIN )
   #include "hbiniseg.h"
#endif

HB_FUNC( MAIN )
{
   static const BYTE pcode[] =
   {
	133,5,0,48,1,0,108,2,100,100,12,1,108,3,
	100,100,12,1,112,1,73,134,3,100,110,7
   };

   hb_vmExecute( pcode, symbols );
}


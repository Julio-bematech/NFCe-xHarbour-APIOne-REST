/*
 * xHarbour 1.2.3 Intl. (SimpLex) (Build 20161103)
 * Generated C source code from <C:\\Users\\b1103373\\Documents\\Visual xHarbour Projects\\Project1\\Source\\Project1_XFM.prg>
 * Command: -oC:\Users\b1103373\Documents\Visual xHarbour Projects\Project1\Obj\Project1_XFM.c -es2 -gc0 -m -n -w -q -DWIN -DWIN32 -D__EXPORT__ -D__VXH__ -IC:\xHB\include -IC:\xHB\include\w32 C:\Users\b1103373\Documents\Visual xHarbour Projects\Project1\Source\Project1_XFM.prg 
 * Created: 2017.01.30 16:34:26 (Pelles ISO C Compiler 3.0 (32-bit))
 */

#include "hbvmpub.h"
#include "hbinit.h"

#define __PRG_SOURCE__ "C:\\Users\\b1103373\\Documents\\Visual xHarbour Projects\\Project1\\Source\\Project1_XFM.prg"

/* Forward declarations of all PRG defined Functions. */
HB_FUNC( __PROJECT1 );
HB_FUNC_STATIC( __PROJECT1_INIT );
HB_FUNC_INITSTATICS();

/* Forward declarations of all externally defined Functions. */
/* Skipped DEFERRED call to: 'DIVERTCONSTRUCTORCALL' */
HB_FUNC_EXTERN( __CLSISACTIVE );
HB_FUNC_EXTERN( HBCLASS );
HB_FUNC_EXTERN( APPLICATION );
HB_FUNC_EXTERN( __CLSACTIVE );
HB_FUNC_EXTERN( __CLSINST );
HB_FUNC_EXTERN( __OBJHASMSG );
HB_FUNC_EXTERN( HB_APARAMS );
HB_FUNC_EXTERN( PCOUNT );

#undef HB_PRG_PCODE_VER
#define HB_PRG_PCODE_VER 10

#include "hbapi.h"

HB_INIT_SYMBOLS_BEGIN( hb_vm_SymbolInit_PROJECT1_XFM )
{ "DIVERTCONSTRUCTORCALL", {HB_FS_PUBLIC | HB_FS_DEFERRED}, {NULL}, NULL },
{ "__PROJECT1", {HB_FS_PUBLIC | HB_FS_LOCAL}, {HB_FUNCNAME( __PROJECT1 )}, &ModuleFakeDyn },
{ "__CLSISACTIVE", {HB_FS_PUBLIC}, {HB_FUNCNAME( __CLSISACTIVE )}, NULL },
{ "HCLASS", {HB_FS_PUBLIC}, {NULL}, NULL },
{ "NEW", {HB_FS_PUBLIC}, {NULL}, NULL },
{ "HBCLASS", {HB_FS_PUBLIC}, {HB_FUNCNAME( HBCLASS )}, NULL },
{ "CLASSH", {HB_FS_PUBLIC}, {NULL}, NULL },
{ "APPLICATION", {HB_FS_PUBLIC}, {HB_FUNCNAME( APPLICATION )}, NULL },
{ "MODMETHOD", {HB_FS_PUBLIC}, {NULL}, NULL },
{ "__PROJECT1_INIT", {HB_FS_STATIC | HB_FS_LOCAL}, {HB_FUNCNAME( __PROJECT1_INIT )}, &ModuleFakeDyn },
{ "ADDMETHOD", {HB_FS_PUBLIC}, {NULL}, NULL },
{ "__CLSACTIVE", {HB_FS_PUBLIC}, {HB_FUNCNAME( __CLSACTIVE )}, NULL },
{ "REFRESH", {HB_FS_PUBLIC}, {NULL}, NULL },
{ "CREATE", {HB_FS_PUBLIC}, {NULL}, NULL },
{ "__CLSINST", {HB_FS_PUBLIC}, {HB_FUNCNAME( __CLSINST )}, NULL },
{ "__OBJHASMSG", {HB_FS_PUBLIC}, {HB_FUNCNAME( __OBJHASMSG )}, NULL },
{ "INITCLASS", {HB_FS_PUBLIC}, {NULL}, NULL },
{ "HB_APARAMS", {HB_FS_PUBLIC}, {HB_FUNCNAME( HB_APARAMS )}, NULL },
{ "PCOUNT", {HB_FS_PUBLIC}, {HB_FUNCNAME( PCOUNT )}, NULL },
{ "INIT", {HB_FS_PUBLIC}, {NULL}, NULL },
{ "APPLICATION", {HB_FS_PUBLIC}, {NULL}, NULL },
{ "_RESOURCES", {HB_FS_PUBLIC}, {NULL}, NULL },
{ "(_INITSTATICS00001)", {HB_FS_INITEXIT}, {hb_INITSTATICS}, &ModuleFakeDyn }
HB_INIT_SYMBOLS_EX_END( hb_vm_SymbolInit_PROJECT1_XFM, __PRG_SOURCE__,  0x000a )

#if defined( HB_PRAGMA_STARTUP )
   #pragma startup hb_vm_SymbolInit_PROJECT1_XFM
#elif defined( HB_DATASEG_STARTUP )
   #define HB_DATASEG_BODY    HB_DATASEG_FUNC( hb_vm_SymbolInit_PROJECT1_XFM )
   #include "hbiniseg.h"
#endif

HB_FUNC( __PROJECT1 )
{
   static const BYTE pcode[] =
   {
	13,3,255,116,22,0,9,103,1,0,100,69,28,17,
	73,108,2,100,48,3,0,103,1,0,112,0,12,1,
	68,80,3,126,2,1,0,95,2,73,103,1,0,100,
	8,21,31,5,73,95,3,29,195,0,103,1,0,100,
	8,28,41,48,4,0,108,5,100,12,0,106,11,95,
	95,80,114,111,106,101,99,116,49,0,48,6,0,108,
	7,100,12,0,112,0,4,1,0,112,2,82,1,0,
	133,8,0,95,3,28,28,48,8,0,103,1,0,106,
	5,73,110,105,116,0,108,9,14,95,2,128,16,0,
	9,112,4,25,26,48,10,0,103,1,0,106,5,73,
	110,105,116,0,108,9,14,95,2,128,16,0,9,112,
	4,73,95,3,28,26,108,11,100,48,3,0,103,1,
	0,112,0,20,1,48,12,0,103,1,0,112,0,73,
	25,11,48,13,0,103,1,0,112,0,73,108,14,100,
	48,3,0,103,1,0,112,0,12,1,80,1,108,15,
	100,95,1,106,10,73,110,105,116,67,108,97,115,115,
	0,12,2,28,32,48,16,0,95,1,108,17,100,12,
	0,112,1,73,25,17,108,14,100,48,3,0,103,1,
	0,112,0,12,1,80,1,108,18,100,12,0,121,15,
	28,10,103,1,0,108,0,14,121,178,95,1,110,7
   };

   hb_vmExecute( pcode, symbols );
}

HB_FUNC_STATIC( __PROJECT1_INIT )
{
   static const BYTE pcode[] =
   {
	13,1,2,102,80,3,133,14,0,48,19,0,48,20,
	0,95,3,112,0,95,1,95,2,112,2,73,134,5,
	48,21,0,95,3,4,0,0,112,1,73,134,7,48,
	13,0,95,3,112,0,73,134,10,95,3,110,7
   };

   hb_vmExecute( pcode, symbols );
}

HB_FUNC_INITSTATICS()
{
   static const BYTE pcode[] =
   {
	117,22,0,1,0,7
   };

   hb_vmExecute( pcode, symbols );
}


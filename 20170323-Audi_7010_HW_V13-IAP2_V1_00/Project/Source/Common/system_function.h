#ifndef _SYSTEM_FUNCTION_H_
#define _SYSTEM_FUNCTION_H_

#ifdef _SYSTEM_FUNCTION_C_
  #define _SYSTEM_FUNCTIONDEC_
#else
  #define _SYSTEM_FUNCTIONDEC_ extern
#endif

typedef enum		//	LZS20130713
{  
	ITL_DETECT_NORMAL=0,		//	С���������
	ITL_DETECT_DELAY=1,		//	С����ʱ���
} TDITLDetectMode;
_SYSTEM_FUNCTIONDEC_ TDITLDetectMode  tdITLDetectMode;		//	��Щ���ڰ������ʱ���ߵĵ�ѹ��ı䣬������ʱ������
_SYSTEM_FUNCTIONDEC_ BYTE ITL_DetectDelayCntr;
_SYSTEM_FUNCTIONDEC_ DWORD u32Systick; //1ms

#define   SCREEN_LIGHT_MAX   11

#define IPOD0_VDISC0		  		170//255
#define IPOD0_VDISC1		  		170
#define IPOD1_VDISC0		  		104//128
#define IPOD1_VDISC1		  		102

#define DEVICE_DLTA  			10// tolerance

typedef enum		//	LZS
{  
	BAT_NORMAL=0,		//	
	BAT_RESET_RADIO=1,
	BAT_RESET_SYSTEM=2,
} BAT_RESET_MODE;
_SYSTEM_FUNCTIONDEC_ BAT_RESET_MODE  BatResetMode;	
_SYSTEM_FUNCTIONDEC_ BYTE	fRadioReset, fSystemReset;	





_SYSTEM_FUNCTIONDEC_ void SRC_Function_Process(void);
_SYSTEM_FUNCTIONDEC_ void Rem_Change_Source(void);
_SYSTEM_FUNCTIONDEC_ void SRC_REM_func(void);
_SYSTEM_FUNCTIONDEC_ void PIP_func_limit(void);
_SYSTEM_FUNCTIONDEC_ void PIP_Display(BYTE main_source,BYTE source1_id,BYTE source1,BYTE source2_id,BYTE source2);
_SYSTEM_FUNCTIONDEC_ void PIP_Display_Func(BYTE main_source,BYTE source1_id,BYTE source1,BYTE source2_id,BYTE source2);


_SYSTEM_FUNCTIONDEC_ void OSD_Time_Clear(void);
_SYSTEM_FUNCTIONDEC_ BYTE CanPowerOnCheck (void);

#endif



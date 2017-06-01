///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    22/Jun/2016  13:18:52 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\s /
//                    tm32f10x_tim.c                                          /
//    Command line =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\s /
//                    tm32f10x_tim.c -D USE_STDPERIPH_DRIVER -D               /
//                    USE_STM32100B_EVAL -D STM32F10X_CL -lc                  /
//                    F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\STM32F10x_StdPeriph_Template\EWARM /
//                    \Debug\List\ -lA F:\软件工程\平台正式代码001\Benze_Main /
//                    Board\baoma_36\benci_newC_V45\Project\STM32F10x_StdPeri /
//                    ph_Template\EWARM\Debug\List\ -o                        /
//                    F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\STM32F10x_StdPeriph_Template\EWARM /
//                    \Debug\Obj\ --no_cse --no_unroll --no_inline            /
//                    --no_code_motion --no_tbaa --no_clustering              /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M3 -e --fpu=None --dlib_config             /
//                    "C:\Program Files\IAR Systems\Embedded Workbench        /
//                    6.0_2\arm\INC\c\DLib_Config_Full.h" -I                  /
//                    F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\STM32F10x_StdPeriph_Template\EWARM /
//                    \ -I F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_ /
//                    36\benci_newC_V45\Project\STM32F10x_StdPeriph_Template\ /
//                    EWARM\..\ -I F:\软件工程\平台正式代码001\Benze_MainBoar /
//                    d\baoma_36\benci_newC_V45\Project\STM32F10x_StdPeriph_T /
//                    emplate\EWARM\..\..\..\Libraries\STM32F10x_StdPeriph_Dr /
//                    iver\inc\ -I F:\软件工程\平台正式代码001\Benze_MainBoar /
//                    d\baoma_36\benci_newC_V45\Project\STM32F10x_StdPeriph_T /
//                    emplate\EWARM\..\..\..\Libraries\STM32F10x_StdPeriph_Dr /
//                    iver\src\ -I F:\软件工程\平台正式代码001\Benze_MainBoar /
//                    d\baoma_36\benci_newC_V45\Project\STM32F10x_StdPeriph_T /
//                    emplate\EWARM\..\..\..\Project/Common\ -I               /
//                    F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\STM32F10x_StdPeriph_Template\EWARM /
//                    \..\..\..\Project/TW8836\ -I                            /
//                    F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\STM32F10x_StdPeriph_Template\EWARM /
//                    \..\..\..\Project/CAN\ -I F:\软件工程\平台正式代码001\B /
//                    enze_MainBoard\baoma_36\benci_newC_V45\Project\STM32F10 /
//                    x_StdPeriph_Template\EWARM\..\..\..\Project/FM\ -I      /
//                    F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\STM32F10x_StdPeriph_Template\EWARM /
//                    \..\..\..\Project/ARM\ -I F:\软件工程\平台正式代码001\B /
//                    enze_MainBoard\baoma_36\benci_newC_V45\Project\STM32F10 /
//                    x_StdPeriph_Template\EWARM\..\..\..\Libraries\CMSIS\CM3 /
//                    \DeviceSupport\ST\STM32F10x\ -On -I "C:\Program         /
//                    Files\IAR Systems\Embedded Workbench                    /
//                    6.0_2\arm\CMSIS\Include\"                               /
//    List file    =  F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\be /
//                    nci_newC_V45\Project\STM32F10x_StdPeriph_Template\EWARM /
//                    \Debug\List\stm32f10x_tim.s                             /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_tim

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN RCC_APB1PeriphResetCmd
        EXTERN RCC_APB2PeriphResetCmd

        PUBLIC TIM_ARRPreloadConfig
        PUBLIC TIM_BDTRConfig
        PUBLIC TIM_BDTRStructInit
        PUBLIC TIM_CCPreloadControl
        PUBLIC TIM_CCxCmd
        PUBLIC TIM_CCxNCmd
        PUBLIC TIM_ClearFlag
        PUBLIC TIM_ClearITPendingBit
        PUBLIC TIM_ClearOC1Ref
        PUBLIC TIM_ClearOC2Ref
        PUBLIC TIM_ClearOC3Ref
        PUBLIC TIM_ClearOC4Ref
        PUBLIC TIM_Cmd
        PUBLIC TIM_CounterModeConfig
        PUBLIC TIM_CtrlPWMOutputs
        PUBLIC TIM_DMACmd
        PUBLIC TIM_DMAConfig
        PUBLIC TIM_DeInit
        PUBLIC TIM_ETRClockMode1Config
        PUBLIC TIM_ETRClockMode2Config
        PUBLIC TIM_ETRConfig
        PUBLIC TIM_EncoderInterfaceConfig
        PUBLIC TIM_ForcedOC1Config
        PUBLIC TIM_ForcedOC2Config
        PUBLIC TIM_ForcedOC3Config
        PUBLIC TIM_ForcedOC4Config
        PUBLIC TIM_GenerateEvent
        PUBLIC TIM_GetCapture1
        PUBLIC TIM_GetCapture2
        PUBLIC TIM_GetCapture3
        PUBLIC TIM_GetCapture4
        PUBLIC TIM_GetCounter
        PUBLIC TIM_GetFlagStatus
        PUBLIC TIM_GetITStatus
        PUBLIC TIM_GetPrescaler
        PUBLIC TIM_ICInit
        PUBLIC TIM_ICStructInit
        PUBLIC TIM_ITConfig
        PUBLIC TIM_ITRxExternalClockConfig
        PUBLIC TIM_InternalClockConfig
        PUBLIC TIM_OC1FastConfig
        PUBLIC TIM_OC1Init
        PUBLIC TIM_OC1NPolarityConfig
        PUBLIC TIM_OC1PolarityConfig
        PUBLIC TIM_OC1PreloadConfig
        PUBLIC TIM_OC2FastConfig
        PUBLIC TIM_OC2Init
        PUBLIC TIM_OC2NPolarityConfig
        PUBLIC TIM_OC2PolarityConfig
        PUBLIC TIM_OC2PreloadConfig
        PUBLIC TIM_OC3FastConfig
        PUBLIC TIM_OC3Init
        PUBLIC TIM_OC3NPolarityConfig
        PUBLIC TIM_OC3PolarityConfig
        PUBLIC TIM_OC3PreloadConfig
        PUBLIC TIM_OC4FastConfig
        PUBLIC TIM_OC4Init
        PUBLIC TIM_OC4PolarityConfig
        PUBLIC TIM_OC4PreloadConfig
        PUBLIC TIM_OCStructInit
        PUBLIC TIM_PWMIConfig
        PUBLIC TIM_PrescalerConfig
        PUBLIC TIM_SelectCCDMA
        PUBLIC TIM_SelectCOM
        PUBLIC TIM_SelectHallSensor
        PUBLIC TIM_SelectInputTrigger
        PUBLIC TIM_SelectMasterSlaveMode
        PUBLIC TIM_SelectOCxM
        PUBLIC TIM_SelectOnePulseMode
        PUBLIC TIM_SelectOutputTrigger
        PUBLIC TIM_SelectSlaveMode
        PUBLIC TIM_SetAutoreload
        PUBLIC TIM_SetClockDivision
        PUBLIC TIM_SetCompare1
        PUBLIC TIM_SetCompare2
        PUBLIC TIM_SetCompare3
        PUBLIC TIM_SetCompare4
        PUBLIC TIM_SetCounter
        PUBLIC TIM_SetIC1Prescaler
        PUBLIC TIM_SetIC2Prescaler
        PUBLIC TIM_SetIC3Prescaler
        PUBLIC TIM_SetIC4Prescaler
        PUBLIC TIM_TIxExternalClockConfig
        PUBLIC TIM_TimeBaseInit
        PUBLIC TIM_TimeBaseStructInit
        PUBLIC TIM_UpdateDisableConfig
        PUBLIC TIM_UpdateRequestConfig
        
          CFI Names cfiNames0
          CFI StackFrame CFA R13 DATA
          CFI Resource R0:32, R1:32, R2:32, R3:32, R4:32, R5:32, R6:32, R7:32
          CFI Resource R8:32, R9:32, R10:32, R11:32, R12:32, R13:32, R14:32
          CFI EndNames cfiNames0
        
          CFI Common cfiCommon0 Using cfiNames0
          CFI CodeAlign 2
          CFI DataAlign 4
          CFI ReturnAddress R14 CODE
          CFI CFA R13+0
          CFI R0 Undefined
          CFI R1 Undefined
          CFI R2 Undefined
          CFI R3 Undefined
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R9 SameValue
          CFI R10 SameValue
          CFI R11 SameValue
          CFI R12 Undefined
          CFI R14 SameValue
          CFI EndCommon cfiCommon0
        
// F:\软件工程\平台正式代码001\Benze_MainBoard\baoma_36\benci_newC_V45\Libraries\STM32F10x_StdPeriph_Driver\src\stm32f10x_tim.c
//    1 /**
//    2   ******************************************************************************
//    3   * @file    stm32f10x_tim.c
//    4   * @author  MCD Application Team
//    5   * @version V3.5.0
//    6   * @date    11-March-2011
//    7   * @brief   This file provides all the TIM firmware functions.
//    8   ******************************************************************************
//    9   * @attention
//   10   *
//   11   * THE PRESENT FIRMWARE WHICH IS FOR GUIDANCE ONLY AIMS AT PROVIDING CUSTOMERS
//   12   * WITH CODING INFORMATION REGARDING THEIR PRODUCTS IN ORDER FOR THEM TO SAVE
//   13   * TIME. AS A RESULT, STMICROELECTRONICS SHALL NOT BE HELD LIABLE FOR ANY
//   14   * DIRECT, INDIRECT OR CONSEQUENTIAL DAMAGES WITH RESPECT TO ANY CLAIMS ARISING
//   15   * FROM THE CONTENT OF SUCH FIRMWARE AND/OR THE USE MADE BY CUSTOMERS OF THE
//   16   * CODING INFORMATION CONTAINED HEREIN IN CONNECTION WITH THEIR PRODUCTS.
//   17   *
//   18   * <h2><center>&copy; COPYRIGHT 2011 STMicroelectronics</center></h2>
//   19   ******************************************************************************
//   20   */
//   21 
//   22 /* Includes ------------------------------------------------------------------*/
//   23 #include "stm32f10x_tim.h"
//   24 #include "stm32f10x_rcc.h"
//   25 
//   26 /** @addtogroup STM32F10x_StdPeriph_Driver
//   27   * @{
//   28   */
//   29 
//   30 /** @defgroup TIM
//   31   * @brief TIM driver modules
//   32   * @{
//   33   */
//   34 
//   35 /** @defgroup TIM_Private_TypesDefinitions
//   36   * @{
//   37   */
//   38 
//   39 /**
//   40   * @}
//   41   */
//   42 
//   43 /** @defgroup TIM_Private_Defines
//   44   * @{
//   45   */
//   46 
//   47 /* ---------------------- TIM registers bit mask ------------------------ */
//   48 #define SMCR_ETR_Mask               ((uint16_t)0x00FF)
//   49 #define CCMR_Offset                 ((uint16_t)0x0018)
//   50 #define CCER_CCE_Set                ((uint16_t)0x0001)
//   51 #define	CCER_CCNE_Set               ((uint16_t)0x0004)
//   52 
//   53 /**
//   54   * @}
//   55   */
//   56 
//   57 /** @defgroup TIM_Private_Macros
//   58   * @{
//   59   */
//   60 
//   61 /**
//   62   * @}
//   63   */
//   64 
//   65 /** @defgroup TIM_Private_Variables
//   66   * @{
//   67   */
//   68 
//   69 /**
//   70   * @}
//   71   */
//   72 
//   73 /** @defgroup TIM_Private_FunctionPrototypes
//   74   * @{
//   75   */
//   76 
//   77 static void TI1_Config(TIM_TypeDef *TIMx, uint16_t TIM_ICPolarity, uint16_t TIM_ICSelection,
//   78                        uint16_t TIM_ICFilter);
//   79 static void TI2_Config(TIM_TypeDef *TIMx, uint16_t TIM_ICPolarity, uint16_t TIM_ICSelection,
//   80                        uint16_t TIM_ICFilter);
//   81 static void TI3_Config(TIM_TypeDef *TIMx, uint16_t TIM_ICPolarity, uint16_t TIM_ICSelection,
//   82                        uint16_t TIM_ICFilter);
//   83 static void TI4_Config(TIM_TypeDef *TIMx, uint16_t TIM_ICPolarity, uint16_t TIM_ICSelection,
//   84                        uint16_t TIM_ICFilter);
//   85 /**
//   86   * @}
//   87   */
//   88 
//   89 /** @defgroup TIM_Private_Macros
//   90   * @{
//   91   */
//   92 
//   93 /**
//   94   * @}
//   95   */
//   96 
//   97 /** @defgroup TIM_Private_Variables
//   98   * @{
//   99   */
//  100 
//  101 /**
//  102   * @}
//  103   */
//  104 
//  105 /** @defgroup TIM_Private_FunctionPrototypes
//  106   * @{
//  107   */
//  108 
//  109 /**
//  110   * @}
//  111   */
//  112 
//  113 /** @defgroup TIM_Private_Functions
//  114   * @{
//  115   */
//  116 
//  117 /**
//  118   * @brief  Deinitializes the TIMx peripheral registers to their default reset values.
//  119   * @param  TIMx: where x can be 1 to 17 to select the TIM peripheral.
//  120   * @retval None
//  121   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function TIM_DeInit
        THUMB
//  122 void TIM_DeInit(TIM_TypeDef *TIMx)
//  123 {
TIM_DeInit:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  124     /* Check the parameters */
//  125     assert_param(IS_TIM_ALL_PERIPH(TIMx));
//  126 
//  127     if (TIMx == TIM1)
        LDR.W    R0,??DataTable7  ;; 0x40012c00
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_0
//  128     {
//  129         RCC_APB2PeriphResetCmd(RCC_APB2Periph_TIM1, ENABLE);
        MOVS     R1,#+1
        MOV      R0,#+2048
          CFI FunCall RCC_APB2PeriphResetCmd
        BL       RCC_APB2PeriphResetCmd
//  130         RCC_APB2PeriphResetCmd(RCC_APB2Periph_TIM1, DISABLE);
        MOVS     R1,#+0
        MOV      R0,#+2048
          CFI FunCall RCC_APB2PeriphResetCmd
        BL       RCC_APB2PeriphResetCmd
        B.N      ??TIM_DeInit_1
//  131     }
//  132     else if (TIMx == TIM2)
??TIM_DeInit_0:
        CMP      R4,#+1073741824
        BNE.N    ??TIM_DeInit_2
//  133     {
//  134         RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM2, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+1
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
//  135         RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM2, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+1
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
        B.N      ??TIM_DeInit_1
//  136     }
//  137     else if (TIMx == TIM3)
??TIM_DeInit_2:
        LDR.W    R0,??DataTable7_1  ;; 0x40000400
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_3
//  138     {
//  139         RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM3, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+2
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
//  140         RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM3, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+2
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
        B.N      ??TIM_DeInit_1
//  141     }
//  142     else if (TIMx == TIM4)
??TIM_DeInit_3:
        LDR.W    R0,??DataTable7_2  ;; 0x40000800
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_4
//  143     {
//  144         RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM4, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+4
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
//  145         RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM4, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+4
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
        B.N      ??TIM_DeInit_1
//  146     }
//  147     else if (TIMx == TIM5)
??TIM_DeInit_4:
        LDR.W    R0,??DataTable7_3  ;; 0x40000c00
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_5
//  148     {
//  149         RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM5, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+8
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
//  150         RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM5, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+8
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
        B.N      ??TIM_DeInit_1
//  151     }
//  152     else if (TIMx == TIM6)
??TIM_DeInit_5:
        LDR.W    R0,??DataTable8  ;; 0x40001000
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_6
//  153     {
//  154         RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM6, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+16
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
//  155         RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM6, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+16
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
        B.N      ??TIM_DeInit_1
//  156     }
//  157     else if (TIMx == TIM7)
??TIM_DeInit_6:
        LDR.W    R0,??DataTable8_1  ;; 0x40001400
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_7
//  158     {
//  159         RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM7, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+32
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
//  160         RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM7, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+32
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
        B.N      ??TIM_DeInit_1
//  161     }
//  162     else if (TIMx == TIM8)
??TIM_DeInit_7:
        LDR.W    R0,??DataTable8_2  ;; 0x40013400
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_8
//  163     {
//  164         RCC_APB2PeriphResetCmd(RCC_APB2Periph_TIM8, ENABLE);
        MOVS     R1,#+1
        MOV      R0,#+8192
          CFI FunCall RCC_APB2PeriphResetCmd
        BL       RCC_APB2PeriphResetCmd
//  165         RCC_APB2PeriphResetCmd(RCC_APB2Periph_TIM8, DISABLE);
        MOVS     R1,#+0
        MOV      R0,#+8192
          CFI FunCall RCC_APB2PeriphResetCmd
        BL       RCC_APB2PeriphResetCmd
        B.N      ??TIM_DeInit_1
//  166     }
//  167     else if (TIMx == TIM9)
??TIM_DeInit_8:
        LDR.W    R0,??DataTable8_3  ;; 0x40014c00
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_9
//  168     {
//  169         RCC_APB2PeriphResetCmd(RCC_APB2Periph_TIM9, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+524288
          CFI FunCall RCC_APB2PeriphResetCmd
        BL       RCC_APB2PeriphResetCmd
//  170         RCC_APB2PeriphResetCmd(RCC_APB2Periph_TIM9, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+524288
          CFI FunCall RCC_APB2PeriphResetCmd
        BL       RCC_APB2PeriphResetCmd
        B.N      ??TIM_DeInit_1
//  171     }
//  172     else if (TIMx == TIM10)
??TIM_DeInit_9:
        LDR.W    R0,??DataTable9  ;; 0x40015000
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_10
//  173     {
//  174         RCC_APB2PeriphResetCmd(RCC_APB2Periph_TIM10, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+1048576
          CFI FunCall RCC_APB2PeriphResetCmd
        BL       RCC_APB2PeriphResetCmd
//  175         RCC_APB2PeriphResetCmd(RCC_APB2Periph_TIM10, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+1048576
          CFI FunCall RCC_APB2PeriphResetCmd
        BL       RCC_APB2PeriphResetCmd
        B.N      ??TIM_DeInit_1
//  176     }
//  177     else if (TIMx == TIM11)
??TIM_DeInit_10:
        LDR.W    R0,??DataTable9_1  ;; 0x40015400
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_11
//  178     {
//  179         RCC_APB2PeriphResetCmd(RCC_APB2Periph_TIM11, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+2097152
          CFI FunCall RCC_APB2PeriphResetCmd
        BL       RCC_APB2PeriphResetCmd
//  180         RCC_APB2PeriphResetCmd(RCC_APB2Periph_TIM11, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+2097152
          CFI FunCall RCC_APB2PeriphResetCmd
        BL       RCC_APB2PeriphResetCmd
        B.N      ??TIM_DeInit_1
//  181     }
//  182     else if (TIMx == TIM12)
??TIM_DeInit_11:
        LDR.W    R0,??DataTable9_2  ;; 0x40001800
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_12
//  183     {
//  184         RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM12, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+64
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
//  185         RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM12, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+64
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
        B.N      ??TIM_DeInit_1
//  186     }
//  187     else if (TIMx == TIM13)
??TIM_DeInit_12:
        LDR.W    R0,??DataTable9_3  ;; 0x40001c00
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_13
//  188     {
//  189         RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM13, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+128
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
//  190         RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM13, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+128
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
        B.N      ??TIM_DeInit_1
//  191     }
//  192     else if (TIMx == TIM14)
??TIM_DeInit_13:
        LDR.W    R0,??DataTable9_4  ;; 0x40002000
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_14
//  193     {
//  194         RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM14, ENABLE);
        MOVS     R1,#+1
        MOV      R0,#+256
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
//  195         RCC_APB1PeriphResetCmd(RCC_APB1Periph_TIM14, DISABLE);
        MOVS     R1,#+0
        MOV      R0,#+256
          CFI FunCall RCC_APB1PeriphResetCmd
        BL       RCC_APB1PeriphResetCmd
        B.N      ??TIM_DeInit_1
//  196     }
//  197     else if (TIMx == TIM15)
??TIM_DeInit_14:
        LDR.W    R0,??DataTable10  ;; 0x40014000
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_15
//  198     {
//  199         RCC_APB2PeriphResetCmd(RCC_APB2Periph_TIM15, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+65536
          CFI FunCall RCC_APB2PeriphResetCmd
        BL       RCC_APB2PeriphResetCmd
//  200         RCC_APB2PeriphResetCmd(RCC_APB2Periph_TIM15, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+65536
          CFI FunCall RCC_APB2PeriphResetCmd
        BL       RCC_APB2PeriphResetCmd
        B.N      ??TIM_DeInit_1
//  201     }
//  202     else if (TIMx == TIM16)
??TIM_DeInit_15:
        LDR.W    R0,??DataTable10_1  ;; 0x40014400
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_16
//  203     {
//  204         RCC_APB2PeriphResetCmd(RCC_APB2Periph_TIM16, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+131072
          CFI FunCall RCC_APB2PeriphResetCmd
        BL       RCC_APB2PeriphResetCmd
//  205         RCC_APB2PeriphResetCmd(RCC_APB2Periph_TIM16, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+131072
          CFI FunCall RCC_APB2PeriphResetCmd
        BL       RCC_APB2PeriphResetCmd
        B.N      ??TIM_DeInit_1
//  206     }
//  207     else
//  208     {
//  209         if (TIMx == TIM17)
??TIM_DeInit_16:
        LDR.W    R0,??DataTable10_2  ;; 0x40014800
        CMP      R4,R0
        BNE.N    ??TIM_DeInit_1
//  210         {
//  211             RCC_APB2PeriphResetCmd(RCC_APB2Periph_TIM17, ENABLE);
        MOVS     R1,#+1
        MOVS     R0,#+262144
          CFI FunCall RCC_APB2PeriphResetCmd
        BL       RCC_APB2PeriphResetCmd
//  212             RCC_APB2PeriphResetCmd(RCC_APB2Periph_TIM17, DISABLE);
        MOVS     R1,#+0
        MOVS     R0,#+262144
          CFI FunCall RCC_APB2PeriphResetCmd
        BL       RCC_APB2PeriphResetCmd
//  213         }
//  214     }
//  215 }
??TIM_DeInit_1:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock0
//  216 
//  217 /**
//  218   * @brief  Initializes the TIMx Time Base Unit peripheral according to
//  219   *         the specified parameters in the TIM_TimeBaseInitStruct.
//  220   * @param  TIMx: where x can be 1 to 17 to select the TIM peripheral.
//  221   * @param  TIM_TimeBaseInitStruct: pointer to a TIM_TimeBaseInitTypeDef
//  222   *         structure that contains the configuration information for the
//  223   *         specified TIM peripheral.
//  224   * @retval None
//  225   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function TIM_TimeBaseInit
          CFI NoCalls
        THUMB
//  226 void TIM_TimeBaseInit(TIM_TypeDef *TIMx, TIM_TimeBaseInitTypeDef *TIM_TimeBaseInitStruct)
//  227 {
//  228     uint16_t tmpcr1 = 0;
TIM_TimeBaseInit:
        MOVS     R2,#+0
//  229 
//  230     /* Check the parameters */
//  231     assert_param(IS_TIM_ALL_PERIPH(TIMx));
//  232     assert_param(IS_TIM_COUNTER_MODE(TIM_TimeBaseInitStruct->TIM_CounterMode));
//  233     assert_param(IS_TIM_CKD_DIV(TIM_TimeBaseInitStruct->TIM_ClockDivision));
//  234 
//  235     tmpcr1 = TIMx->CR1;
        LDRH     R3,[R0, #+0]
        MOVS     R2,R3
//  236 
//  237     if((TIMx == TIM1) || (TIMx == TIM8) || (TIMx == TIM2) || (TIMx == TIM3) ||
//  238             (TIMx == TIM4) || (TIMx == TIM5))
        LDR.W    R3,??DataTable7  ;; 0x40012c00
        CMP      R0,R3
        BEQ.N    ??TIM_TimeBaseInit_0
        LDR.W    R3,??DataTable8_2  ;; 0x40013400
        CMP      R0,R3
        BEQ.N    ??TIM_TimeBaseInit_0
        CMP      R0,#+1073741824
        BEQ.N    ??TIM_TimeBaseInit_0
        LDR.W    R3,??DataTable7_1  ;; 0x40000400
        CMP      R0,R3
        BEQ.N    ??TIM_TimeBaseInit_0
        LDR.W    R3,??DataTable7_2  ;; 0x40000800
        CMP      R0,R3
        BEQ.N    ??TIM_TimeBaseInit_0
        LDR.W    R3,??DataTable7_3  ;; 0x40000c00
        CMP      R0,R3
        BNE.N    ??TIM_TimeBaseInit_1
//  239     {
//  240         /* Select the Counter Mode */
//  241         tmpcr1 &= (uint16_t)(~((uint16_t)(TIM_CR1_DIR | TIM_CR1_CMS)));
??TIM_TimeBaseInit_0:
        MOVW     R3,#+65423
        ANDS     R2,R3,R2
//  242         tmpcr1 |= (uint32_t)TIM_TimeBaseInitStruct->TIM_CounterMode;
        LDRH     R3,[R1, #+2]
        ORRS     R2,R3,R2
//  243     }
//  244 
//  245     if((TIMx != TIM6) && (TIMx != TIM7))
??TIM_TimeBaseInit_1:
        LDR.W    R3,??DataTable8  ;; 0x40001000
        CMP      R0,R3
        BEQ.N    ??TIM_TimeBaseInit_2
        LDR.W    R3,??DataTable8_1  ;; 0x40001400
        CMP      R0,R3
        BEQ.N    ??TIM_TimeBaseInit_2
//  246     {
//  247         /* Set the clock division */
//  248         tmpcr1 &= (uint16_t)(~((uint16_t)TIM_CR1_CKD));
        MOVW     R3,#+64767
        ANDS     R2,R3,R2
//  249         tmpcr1 |= (uint32_t)TIM_TimeBaseInitStruct->TIM_ClockDivision;
        LDRH     R3,[R1, #+6]
        ORRS     R2,R3,R2
//  250     }
//  251 
//  252     TIMx->CR1 = tmpcr1;
??TIM_TimeBaseInit_2:
        STRH     R2,[R0, #+0]
//  253 
//  254     /* Set the Autoreload value */
//  255     TIMx->ARR = TIM_TimeBaseInitStruct->TIM_Period ;
        LDRH     R3,[R1, #+4]
        STRH     R3,[R0, #+44]
//  256 
//  257     /* Set the Prescaler value */
//  258     TIMx->PSC = TIM_TimeBaseInitStruct->TIM_Prescaler;
        LDRH     R3,[R1, #+0]
        STRH     R3,[R0, #+40]
//  259 
//  260     if ((TIMx == TIM1) || (TIMx == TIM8) || (TIMx == TIM15) || (TIMx == TIM16) || (TIMx == TIM17))
        LDR.W    R3,??DataTable7  ;; 0x40012c00
        CMP      R0,R3
        BEQ.N    ??TIM_TimeBaseInit_3
        LDR.W    R3,??DataTable8_2  ;; 0x40013400
        CMP      R0,R3
        BEQ.N    ??TIM_TimeBaseInit_3
        LDR.W    R3,??DataTable10  ;; 0x40014000
        CMP      R0,R3
        BEQ.N    ??TIM_TimeBaseInit_3
        LDR.W    R3,??DataTable10_1  ;; 0x40014400
        CMP      R0,R3
        BEQ.N    ??TIM_TimeBaseInit_3
        LDR.W    R3,??DataTable10_2  ;; 0x40014800
        CMP      R0,R3
        BNE.N    ??TIM_TimeBaseInit_4
//  261     {
//  262         /* Set the Repetition Counter value */
//  263         TIMx->RCR = TIM_TimeBaseInitStruct->TIM_RepetitionCounter;
??TIM_TimeBaseInit_3:
        LDRB     R3,[R1, #+8]
        STRH     R3,[R0, #+48]
//  264     }
//  265 
//  266     /* Generate an update event to reload the Prescaler and the Repetition counter
//  267        values immediately */
//  268     TIMx->EGR = TIM_PSCReloadMode_Immediate;
??TIM_TimeBaseInit_4:
        MOVS     R3,#+1
        STRH     R3,[R0, #+20]
//  269 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//  270 
//  271 /**
//  272   * @brief  Initializes the TIMx Channel1 according to the specified
//  273   *         parameters in the TIM_OCInitStruct.
//  274   * @param  TIMx: where x can be  1 to 17 except 6 and 7 to select the TIM peripheral.
//  275   * @param  TIM_OCInitStruct: pointer to a TIM_OCInitTypeDef structure
//  276   *         that contains the configuration information for the specified TIM peripheral.
//  277   * @retval None
//  278   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function TIM_OC1Init
          CFI NoCalls
        THUMB
//  279 void TIM_OC1Init(TIM_TypeDef *TIMx, TIM_OCInitTypeDef *TIM_OCInitStruct)
//  280 {
TIM_OC1Init:
        PUSH     {R4-R6}
          CFI R6 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
//  281     uint16_t tmpccmrx = 0, tmpccer = 0, tmpcr2 = 0;
        MOVS     R3,#+0
        MOVS     R4,#+0
        MOVS     R2,#+0
//  282 
//  283     /* Check the parameters */
//  284     assert_param(IS_TIM_LIST8_PERIPH(TIMx));
//  285     assert_param(IS_TIM_OC_MODE(TIM_OCInitStruct->TIM_OCMode));
//  286     assert_param(IS_TIM_OUTPUT_STATE(TIM_OCInitStruct->TIM_OutputState));
//  287     assert_param(IS_TIM_OC_POLARITY(TIM_OCInitStruct->TIM_OCPolarity));
//  288     /* Disable the Channel 1: Reset the CC1E Bit */
//  289     TIMx->CCER &= (uint16_t)(~(uint16_t)TIM_CCER_CC1E);
        LDRH     R5,[R0, #+32]
        MOVW     R6,#+65534
        ANDS     R5,R6,R5
        STRH     R5,[R0, #+32]
//  290     /* Get the TIMx CCER register value */
//  291     tmpccer = TIMx->CCER;
        LDRH     R5,[R0, #+32]
        MOVS     R4,R5
//  292     /* Get the TIMx CR2 register value */
//  293     tmpcr2 =  TIMx->CR2;
        LDRH     R5,[R0, #+4]
        MOVS     R2,R5
//  294 
//  295     /* Get the TIMx CCMR1 register value */
//  296     tmpccmrx = TIMx->CCMR1;
        LDRH     R5,[R0, #+24]
        MOVS     R3,R5
//  297 
//  298     /* Reset the Output Compare Mode Bits */
//  299     tmpccmrx &= (uint16_t)(~((uint16_t)TIM_CCMR1_OC1M));
        MOVW     R5,#+65423
        ANDS     R3,R5,R3
//  300     tmpccmrx &= (uint16_t)(~((uint16_t)TIM_CCMR1_CC1S));
        MOVW     R5,#+65532
        ANDS     R3,R5,R3
//  301 
//  302     /* Select the Output Compare Mode */
//  303     tmpccmrx |= TIM_OCInitStruct->TIM_OCMode;
        LDRH     R5,[R1, #+0]
        ORRS     R3,R5,R3
//  304 
//  305     /* Reset the Output Polarity level */
//  306     tmpccer &= (uint16_t)(~((uint16_t)TIM_CCER_CC1P));
        MOVW     R5,#+65533
        ANDS     R4,R5,R4
//  307     /* Set the Output Compare Polarity */
//  308     tmpccer |= TIM_OCInitStruct->TIM_OCPolarity;
        LDRH     R5,[R1, #+8]
        ORRS     R4,R5,R4
//  309 
//  310     /* Set the Output State */
//  311     tmpccer |= TIM_OCInitStruct->TIM_OutputState;
        LDRH     R5,[R1, #+2]
        ORRS     R4,R5,R4
//  312 
//  313     if((TIMx == TIM1) || (TIMx == TIM8) || (TIMx == TIM15) ||
//  314             (TIMx == TIM16) || (TIMx == TIM17))
        LDR.W    R5,??DataTable7  ;; 0x40012c00
        CMP      R0,R5
        BEQ.N    ??TIM_OC1Init_0
        LDR.W    R5,??DataTable8_2  ;; 0x40013400
        CMP      R0,R5
        BEQ.N    ??TIM_OC1Init_0
        LDR.W    R5,??DataTable10  ;; 0x40014000
        CMP      R0,R5
        BEQ.N    ??TIM_OC1Init_0
        LDR.W    R5,??DataTable10_1  ;; 0x40014400
        CMP      R0,R5
        BEQ.N    ??TIM_OC1Init_0
        LDR.W    R5,??DataTable10_2  ;; 0x40014800
        CMP      R0,R5
        BNE.N    ??TIM_OC1Init_1
//  315     {
//  316         assert_param(IS_TIM_OUTPUTN_STATE(TIM_OCInitStruct->TIM_OutputNState));
//  317         assert_param(IS_TIM_OCN_POLARITY(TIM_OCInitStruct->TIM_OCNPolarity));
//  318         assert_param(IS_TIM_OCNIDLE_STATE(TIM_OCInitStruct->TIM_OCNIdleState));
//  319         assert_param(IS_TIM_OCIDLE_STATE(TIM_OCInitStruct->TIM_OCIdleState));
//  320 
//  321         /* Reset the Output N Polarity level */
//  322         tmpccer &= (uint16_t)(~((uint16_t)TIM_CCER_CC1NP));
??TIM_OC1Init_0:
        MOVW     R5,#+65527
        ANDS     R4,R5,R4
//  323         /* Set the Output N Polarity */
//  324         tmpccer |= TIM_OCInitStruct->TIM_OCNPolarity;
        LDRH     R5,[R1, #+10]
        ORRS     R4,R5,R4
//  325 
//  326         /* Reset the Output N State */
//  327         tmpccer &= (uint16_t)(~((uint16_t)TIM_CCER_CC1NE));
        MOVW     R5,#+65531
        ANDS     R4,R5,R4
//  328         /* Set the Output N State */
//  329         tmpccer |= TIM_OCInitStruct->TIM_OutputNState;
        LDRH     R5,[R1, #+4]
        ORRS     R4,R5,R4
//  330 
//  331         /* Reset the Output Compare and Output Compare N IDLE State */
//  332         tmpcr2 &= (uint16_t)(~((uint16_t)TIM_CR2_OIS1));
        MOVW     R5,#+65279
        ANDS     R2,R5,R2
//  333         tmpcr2 &= (uint16_t)(~((uint16_t)TIM_CR2_OIS1N));
        MOVW     R5,#+65023
        ANDS     R2,R5,R2
//  334 
//  335         /* Set the Output Idle state */
//  336         tmpcr2 |= TIM_OCInitStruct->TIM_OCIdleState;
        LDRH     R5,[R1, #+12]
        ORRS     R2,R5,R2
//  337         /* Set the Output N Idle state */
//  338         tmpcr2 |= TIM_OCInitStruct->TIM_OCNIdleState;
        LDRH     R5,[R1, #+14]
        ORRS     R2,R5,R2
//  339     }
//  340     /* Write to TIMx CR2 */
//  341     TIMx->CR2 = tmpcr2;
??TIM_OC1Init_1:
        STRH     R2,[R0, #+4]
//  342 
//  343     /* Write to TIMx CCMR1 */
//  344     TIMx->CCMR1 = tmpccmrx;
        STRH     R3,[R0, #+24]
//  345 
//  346     /* Set the Capture Compare Register value */
//  347     TIMx->CCR1 = TIM_OCInitStruct->TIM_Pulse;
        LDRH     R5,[R1, #+6]
        STRH     R5,[R0, #+52]
//  348 
//  349     /* Write to TIMx CCER */
//  350     TIMx->CCER = tmpccer;
        STRH     R4,[R0, #+32]
//  351 }
        POP      {R4-R6}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//  352 
//  353 /**
//  354   * @brief  Initializes the TIMx Channel2 according to the specified
//  355   *         parameters in the TIM_OCInitStruct.
//  356   * @param  TIMx: where x can be  1, 2, 3, 4, 5, 8, 9, 12 or 15 to select
//  357   *         the TIM peripheral.
//  358   * @param  TIM_OCInitStruct: pointer to a TIM_OCInitTypeDef structure
//  359   *         that contains the configuration information for the specified TIM peripheral.
//  360   * @retval None
//  361   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function TIM_OC2Init
          CFI NoCalls
        THUMB
//  362 void TIM_OC2Init(TIM_TypeDef *TIMx, TIM_OCInitTypeDef *TIM_OCInitStruct)
//  363 {
TIM_OC2Init:
        PUSH     {R4-R6}
          CFI R6 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
//  364     uint16_t tmpccmrx = 0, tmpccer = 0, tmpcr2 = 0;
        MOVS     R3,#+0
        MOVS     R4,#+0
        MOVS     R2,#+0
//  365 
//  366     /* Check the parameters */
//  367     assert_param(IS_TIM_LIST6_PERIPH(TIMx));
//  368     assert_param(IS_TIM_OC_MODE(TIM_OCInitStruct->TIM_OCMode));
//  369     assert_param(IS_TIM_OUTPUT_STATE(TIM_OCInitStruct->TIM_OutputState));
//  370     assert_param(IS_TIM_OC_POLARITY(TIM_OCInitStruct->TIM_OCPolarity));
//  371     /* Disable the Channel 2: Reset the CC2E Bit */
//  372     TIMx->CCER &= (uint16_t)(~((uint16_t)TIM_CCER_CC2E));
        LDRH     R5,[R0, #+32]
        MOVW     R6,#+65519
        ANDS     R5,R6,R5
        STRH     R5,[R0, #+32]
//  373 
//  374     /* Get the TIMx CCER register value */
//  375     tmpccer = TIMx->CCER;
        LDRH     R5,[R0, #+32]
        MOVS     R4,R5
//  376     /* Get the TIMx CR2 register value */
//  377     tmpcr2 =  TIMx->CR2;
        LDRH     R5,[R0, #+4]
        MOVS     R2,R5
//  378 
//  379     /* Get the TIMx CCMR1 register value */
//  380     tmpccmrx = TIMx->CCMR1;
        LDRH     R5,[R0, #+24]
        MOVS     R3,R5
//  381 
//  382     /* Reset the Output Compare mode and Capture/Compare selection Bits */
//  383     tmpccmrx &= (uint16_t)(~((uint16_t)TIM_CCMR1_OC2M));
        MOVW     R5,#+36863
        ANDS     R3,R5,R3
//  384     tmpccmrx &= (uint16_t)(~((uint16_t)TIM_CCMR1_CC2S));
        MOVW     R5,#+64767
        ANDS     R3,R5,R3
//  385 
//  386     /* Select the Output Compare Mode */
//  387     tmpccmrx |= (uint16_t)(TIM_OCInitStruct->TIM_OCMode << 8);
        LDRH     R5,[R1, #+0]
        ORRS     R3,R3,R5, LSL #+8
//  388 
//  389     /* Reset the Output Polarity level */
//  390     tmpccer &= (uint16_t)(~((uint16_t)TIM_CCER_CC2P));
        MOVW     R5,#+65503
        ANDS     R4,R5,R4
//  391     /* Set the Output Compare Polarity */
//  392     tmpccer |= (uint16_t)(TIM_OCInitStruct->TIM_OCPolarity << 4);
        LDRH     R5,[R1, #+8]
        ORRS     R4,R4,R5, LSL #+4
//  393 
//  394     /* Set the Output State */
//  395     tmpccer |= (uint16_t)(TIM_OCInitStruct->TIM_OutputState << 4);
        LDRH     R5,[R1, #+2]
        ORRS     R4,R4,R5, LSL #+4
//  396 
//  397     if((TIMx == TIM1) || (TIMx == TIM8))
        LDR.W    R5,??DataTable7  ;; 0x40012c00
        CMP      R0,R5
        BEQ.N    ??TIM_OC2Init_0
        LDR.W    R5,??DataTable10_3  ;; 0x40013400
        CMP      R0,R5
        BNE.N    ??TIM_OC2Init_1
//  398     {
//  399         assert_param(IS_TIM_OUTPUTN_STATE(TIM_OCInitStruct->TIM_OutputNState));
//  400         assert_param(IS_TIM_OCN_POLARITY(TIM_OCInitStruct->TIM_OCNPolarity));
//  401         assert_param(IS_TIM_OCNIDLE_STATE(TIM_OCInitStruct->TIM_OCNIdleState));
//  402         assert_param(IS_TIM_OCIDLE_STATE(TIM_OCInitStruct->TIM_OCIdleState));
//  403 
//  404         /* Reset the Output N Polarity level */
//  405         tmpccer &= (uint16_t)(~((uint16_t)TIM_CCER_CC2NP));
??TIM_OC2Init_0:
        MOVW     R5,#+65407
        ANDS     R4,R5,R4
//  406         /* Set the Output N Polarity */
//  407         tmpccer |= (uint16_t)(TIM_OCInitStruct->TIM_OCNPolarity << 4);
        LDRH     R5,[R1, #+10]
        ORRS     R4,R4,R5, LSL #+4
//  408 
//  409         /* Reset the Output N State */
//  410         tmpccer &= (uint16_t)(~((uint16_t)TIM_CCER_CC2NE));
        MOVW     R5,#+65471
        ANDS     R4,R5,R4
//  411         /* Set the Output N State */
//  412         tmpccer |= (uint16_t)(TIM_OCInitStruct->TIM_OutputNState << 4);
        LDRH     R5,[R1, #+4]
        ORRS     R4,R4,R5, LSL #+4
//  413 
//  414         /* Reset the Output Compare and Output Compare N IDLE State */
//  415         tmpcr2 &= (uint16_t)(~((uint16_t)TIM_CR2_OIS2));
        MOVW     R5,#+64511
        ANDS     R2,R5,R2
//  416         tmpcr2 &= (uint16_t)(~((uint16_t)TIM_CR2_OIS2N));
        MOVW     R5,#+63487
        ANDS     R2,R5,R2
//  417 
//  418         /* Set the Output Idle state */
//  419         tmpcr2 |= (uint16_t)(TIM_OCInitStruct->TIM_OCIdleState << 2);
        LDRH     R5,[R1, #+12]
        ORRS     R2,R2,R5, LSL #+2
//  420         /* Set the Output N Idle state */
//  421         tmpcr2 |= (uint16_t)(TIM_OCInitStruct->TIM_OCNIdleState << 2);
        LDRH     R5,[R1, #+14]
        ORRS     R2,R2,R5, LSL #+2
//  422     }
//  423     /* Write to TIMx CR2 */
//  424     TIMx->CR2 = tmpcr2;
??TIM_OC2Init_1:
        STRH     R2,[R0, #+4]
//  425 
//  426     /* Write to TIMx CCMR1 */
//  427     TIMx->CCMR1 = tmpccmrx;
        STRH     R3,[R0, #+24]
//  428 
//  429     /* Set the Capture Compare Register value */
//  430     TIMx->CCR2 = TIM_OCInitStruct->TIM_Pulse;
        LDRH     R5,[R1, #+6]
        STRH     R5,[R0, #+56]
//  431 
//  432     /* Write to TIMx CCER */
//  433     TIMx->CCER = tmpccer;
        STRH     R4,[R0, #+32]
//  434 }
        POP      {R4-R6}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//  435 
//  436 /**
//  437   * @brief  Initializes the TIMx Channel3 according to the specified
//  438   *         parameters in the TIM_OCInitStruct.
//  439   * @param  TIMx: where x can be  1, 2, 3, 4, 5 or 8 to select the TIM peripheral.
//  440   * @param  TIM_OCInitStruct: pointer to a TIM_OCInitTypeDef structure
//  441   *         that contains the configuration information for the specified TIM peripheral.
//  442   * @retval None
//  443   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function TIM_OC3Init
          CFI NoCalls
        THUMB
//  444 void TIM_OC3Init(TIM_TypeDef *TIMx, TIM_OCInitTypeDef *TIM_OCInitStruct)
//  445 {
TIM_OC3Init:
        PUSH     {R4-R6}
          CFI R6 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
//  446     uint16_t tmpccmrx = 0, tmpccer = 0, tmpcr2 = 0;
        MOVS     R3,#+0
        MOVS     R4,#+0
        MOVS     R2,#+0
//  447 
//  448     /* Check the parameters */
//  449     assert_param(IS_TIM_LIST3_PERIPH(TIMx));
//  450     assert_param(IS_TIM_OC_MODE(TIM_OCInitStruct->TIM_OCMode));
//  451     assert_param(IS_TIM_OUTPUT_STATE(TIM_OCInitStruct->TIM_OutputState));
//  452     assert_param(IS_TIM_OC_POLARITY(TIM_OCInitStruct->TIM_OCPolarity));
//  453     /* Disable the Channel 2: Reset the CC2E Bit */
//  454     TIMx->CCER &= (uint16_t)(~((uint16_t)TIM_CCER_CC3E));
        LDRH     R5,[R0, #+32]
        MOVW     R6,#+65279
        ANDS     R5,R6,R5
        STRH     R5,[R0, #+32]
//  455 
//  456     /* Get the TIMx CCER register value */
//  457     tmpccer = TIMx->CCER;
        LDRH     R5,[R0, #+32]
        MOVS     R4,R5
//  458     /* Get the TIMx CR2 register value */
//  459     tmpcr2 =  TIMx->CR2;
        LDRH     R5,[R0, #+4]
        MOVS     R2,R5
//  460 
//  461     /* Get the TIMx CCMR2 register value */
//  462     tmpccmrx = TIMx->CCMR2;
        LDRH     R5,[R0, #+28]
        MOVS     R3,R5
//  463 
//  464     /* Reset the Output Compare mode and Capture/Compare selection Bits */
//  465     tmpccmrx &= (uint16_t)(~((uint16_t)TIM_CCMR2_OC3M));
        MOVW     R5,#+65423
        ANDS     R3,R5,R3
//  466     tmpccmrx &= (uint16_t)(~((uint16_t)TIM_CCMR2_CC3S));
        MOVW     R5,#+65532
        ANDS     R3,R5,R3
//  467     /* Select the Output Compare Mode */
//  468     tmpccmrx |= TIM_OCInitStruct->TIM_OCMode;
        LDRH     R5,[R1, #+0]
        ORRS     R3,R5,R3
//  469 
//  470     /* Reset the Output Polarity level */
//  471     tmpccer &= (uint16_t)(~((uint16_t)TIM_CCER_CC3P));
        MOVW     R5,#+65023
        ANDS     R4,R5,R4
//  472     /* Set the Output Compare Polarity */
//  473     tmpccer |= (uint16_t)(TIM_OCInitStruct->TIM_OCPolarity << 8);
        LDRH     R5,[R1, #+8]
        ORRS     R4,R4,R5, LSL #+8
//  474 
//  475     /* Set the Output State */
//  476     tmpccer |= (uint16_t)(TIM_OCInitStruct->TIM_OutputState << 8);
        LDRH     R5,[R1, #+2]
        ORRS     R4,R4,R5, LSL #+8
//  477 
//  478     if((TIMx == TIM1) || (TIMx == TIM8))
        LDR.W    R5,??DataTable7  ;; 0x40012c00
        CMP      R0,R5
        BEQ.N    ??TIM_OC3Init_0
        LDR.W    R5,??DataTable10_3  ;; 0x40013400
        CMP      R0,R5
        BNE.N    ??TIM_OC3Init_1
//  479     {
//  480         assert_param(IS_TIM_OUTPUTN_STATE(TIM_OCInitStruct->TIM_OutputNState));
//  481         assert_param(IS_TIM_OCN_POLARITY(TIM_OCInitStruct->TIM_OCNPolarity));
//  482         assert_param(IS_TIM_OCNIDLE_STATE(TIM_OCInitStruct->TIM_OCNIdleState));
//  483         assert_param(IS_TIM_OCIDLE_STATE(TIM_OCInitStruct->TIM_OCIdleState));
//  484 
//  485         /* Reset the Output N Polarity level */
//  486         tmpccer &= (uint16_t)(~((uint16_t)TIM_CCER_CC3NP));
??TIM_OC3Init_0:
        MOVW     R5,#+63487
        ANDS     R4,R5,R4
//  487         /* Set the Output N Polarity */
//  488         tmpccer |= (uint16_t)(TIM_OCInitStruct->TIM_OCNPolarity << 8);
        LDRH     R5,[R1, #+10]
        ORRS     R4,R4,R5, LSL #+8
//  489         /* Reset the Output N State */
//  490         tmpccer &= (uint16_t)(~((uint16_t)TIM_CCER_CC3NE));
        MOVW     R5,#+64511
        ANDS     R4,R5,R4
//  491 
//  492         /* Set the Output N State */
//  493         tmpccer |= (uint16_t)(TIM_OCInitStruct->TIM_OutputNState << 8);
        LDRH     R5,[R1, #+4]
        ORRS     R4,R4,R5, LSL #+8
//  494         /* Reset the Output Compare and Output Compare N IDLE State */
//  495         tmpcr2 &= (uint16_t)(~((uint16_t)TIM_CR2_OIS3));
        MOVW     R5,#+61439
        ANDS     R2,R5,R2
//  496         tmpcr2 &= (uint16_t)(~((uint16_t)TIM_CR2_OIS3N));
        MOVW     R5,#+57343
        ANDS     R2,R5,R2
//  497         /* Set the Output Idle state */
//  498         tmpcr2 |= (uint16_t)(TIM_OCInitStruct->TIM_OCIdleState << 4);
        LDRH     R5,[R1, #+12]
        ORRS     R2,R2,R5, LSL #+4
//  499         /* Set the Output N Idle state */
//  500         tmpcr2 |= (uint16_t)(TIM_OCInitStruct->TIM_OCNIdleState << 4);
        LDRH     R5,[R1, #+14]
        ORRS     R2,R2,R5, LSL #+4
//  501     }
//  502     /* Write to TIMx CR2 */
//  503     TIMx->CR2 = tmpcr2;
??TIM_OC3Init_1:
        STRH     R2,[R0, #+4]
//  504 
//  505     /* Write to TIMx CCMR2 */
//  506     TIMx->CCMR2 = tmpccmrx;
        STRH     R3,[R0, #+28]
//  507 
//  508     /* Set the Capture Compare Register value */
//  509     TIMx->CCR3 = TIM_OCInitStruct->TIM_Pulse;
        LDRH     R5,[R1, #+6]
        STRH     R5,[R0, #+60]
//  510 
//  511     /* Write to TIMx CCER */
//  512     TIMx->CCER = tmpccer;
        STRH     R4,[R0, #+32]
//  513 }
        POP      {R4-R6}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//  514 
//  515 /**
//  516   * @brief  Initializes the TIMx Channel4 according to the specified
//  517   *         parameters in the TIM_OCInitStruct.
//  518   * @param  TIMx: where x can be  1, 2, 3, 4, 5 or 8 to select the TIM peripheral.
//  519   * @param  TIM_OCInitStruct: pointer to a TIM_OCInitTypeDef structure
//  520   *         that contains the configuration information for the specified TIM peripheral.
//  521   * @retval None
//  522   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function TIM_OC4Init
          CFI NoCalls
        THUMB
//  523 void TIM_OC4Init(TIM_TypeDef *TIMx, TIM_OCInitTypeDef *TIM_OCInitStruct)
//  524 {
TIM_OC4Init:
        PUSH     {R4-R6}
          CFI R6 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
//  525     uint16_t tmpccmrx = 0, tmpccer = 0, tmpcr2 = 0;
        MOVS     R3,#+0
        MOVS     R4,#+0
        MOVS     R2,#+0
//  526 
//  527     /* Check the parameters */
//  528     assert_param(IS_TIM_LIST3_PERIPH(TIMx));
//  529     assert_param(IS_TIM_OC_MODE(TIM_OCInitStruct->TIM_OCMode));
//  530     assert_param(IS_TIM_OUTPUT_STATE(TIM_OCInitStruct->TIM_OutputState));
//  531     assert_param(IS_TIM_OC_POLARITY(TIM_OCInitStruct->TIM_OCPolarity));
//  532     /* Disable the Channel 2: Reset the CC4E Bit */
//  533     TIMx->CCER &= (uint16_t)(~((uint16_t)TIM_CCER_CC4E));
        LDRH     R5,[R0, #+32]
        MOVW     R6,#+61439
        ANDS     R5,R6,R5
        STRH     R5,[R0, #+32]
//  534 
//  535     /* Get the TIMx CCER register value */
//  536     tmpccer = TIMx->CCER;
        LDRH     R5,[R0, #+32]
        MOVS     R4,R5
//  537     /* Get the TIMx CR2 register value */
//  538     tmpcr2 =  TIMx->CR2;
        LDRH     R5,[R0, #+4]
        MOVS     R2,R5
//  539 
//  540     /* Get the TIMx CCMR2 register value */
//  541     tmpccmrx = TIMx->CCMR2;
        LDRH     R5,[R0, #+28]
        MOVS     R3,R5
//  542 
//  543     /* Reset the Output Compare mode and Capture/Compare selection Bits */
//  544     tmpccmrx &= (uint16_t)(~((uint16_t)TIM_CCMR2_OC4M));
        MOVW     R5,#+36863
        ANDS     R3,R5,R3
//  545     tmpccmrx &= (uint16_t)(~((uint16_t)TIM_CCMR2_CC4S));
        MOVW     R5,#+64767
        ANDS     R3,R5,R3
//  546 
//  547     /* Select the Output Compare Mode */
//  548     tmpccmrx |= (uint16_t)(TIM_OCInitStruct->TIM_OCMode << 8);
        LDRH     R5,[R1, #+0]
        ORRS     R3,R3,R5, LSL #+8
//  549 
//  550     /* Reset the Output Polarity level */
//  551     tmpccer &= (uint16_t)(~((uint16_t)TIM_CCER_CC4P));
        MOVW     R5,#+57343
        ANDS     R4,R5,R4
//  552     /* Set the Output Compare Polarity */
//  553     tmpccer |= (uint16_t)(TIM_OCInitStruct->TIM_OCPolarity << 12);
        LDRH     R5,[R1, #+8]
        ORRS     R4,R4,R5, LSL #+12
//  554 
//  555     /* Set the Output State */
//  556     tmpccer |= (uint16_t)(TIM_OCInitStruct->TIM_OutputState << 12);
        LDRH     R5,[R1, #+2]
        ORRS     R4,R4,R5, LSL #+12
//  557 
//  558     if((TIMx == TIM1) || (TIMx == TIM8))
        LDR.W    R5,??DataTable7  ;; 0x40012c00
        CMP      R0,R5
        BEQ.N    ??TIM_OC4Init_0
        LDR.W    R5,??DataTable10_3  ;; 0x40013400
        CMP      R0,R5
        BNE.N    ??TIM_OC4Init_1
//  559     {
//  560         assert_param(IS_TIM_OCIDLE_STATE(TIM_OCInitStruct->TIM_OCIdleState));
//  561         /* Reset the Output Compare IDLE State */
//  562         tmpcr2 &= (uint16_t)(~((uint16_t)TIM_CR2_OIS4));
??TIM_OC4Init_0:
        MOVW     R5,#+49151
        ANDS     R2,R5,R2
//  563         /* Set the Output Idle state */
//  564         tmpcr2 |= (uint16_t)(TIM_OCInitStruct->TIM_OCIdleState << 6);
        LDRH     R5,[R1, #+12]
        ORRS     R2,R2,R5, LSL #+6
//  565     }
//  566     /* Write to TIMx CR2 */
//  567     TIMx->CR2 = tmpcr2;
??TIM_OC4Init_1:
        STRH     R2,[R0, #+4]
//  568 
//  569     /* Write to TIMx CCMR2 */
//  570     TIMx->CCMR2 = tmpccmrx;
        STRH     R3,[R0, #+28]
//  571 
//  572     /* Set the Capture Compare Register value */
//  573     TIMx->CCR4 = TIM_OCInitStruct->TIM_Pulse;
        LDRH     R5,[R1, #+6]
        STRH     R5,[R0, #+64]
//  574 
//  575     /* Write to TIMx CCER */
//  576     TIMx->CCER = tmpccer;
        STRH     R4,[R0, #+32]
//  577 }
        POP      {R4-R6}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  578 
//  579 /**
//  580   * @brief  Initializes the TIM peripheral according to the specified
//  581   *         parameters in the TIM_ICInitStruct.
//  582   * @param  TIMx: where x can be  1 to 17 except 6 and 7 to select the TIM peripheral.
//  583   * @param  TIM_ICInitStruct: pointer to a TIM_ICInitTypeDef structure
//  584   *         that contains the configuration information for the specified TIM peripheral.
//  585   * @retval None
//  586   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function TIM_ICInit
        THUMB
//  587 void TIM_ICInit(TIM_TypeDef *TIMx, TIM_ICInitTypeDef *TIM_ICInitStruct)
//  588 {
TIM_ICInit:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  589     /* Check the parameters */
//  590     assert_param(IS_TIM_CHANNEL(TIM_ICInitStruct->TIM_Channel));
//  591     assert_param(IS_TIM_IC_SELECTION(TIM_ICInitStruct->TIM_ICSelection));
//  592     assert_param(IS_TIM_IC_PRESCALER(TIM_ICInitStruct->TIM_ICPrescaler));
//  593     assert_param(IS_TIM_IC_FILTER(TIM_ICInitStruct->TIM_ICFilter));
//  594 
//  595     if((TIMx == TIM1) || (TIMx == TIM8) || (TIMx == TIM2) || (TIMx == TIM3) ||
//  596             (TIMx == TIM4) || (TIMx == TIM5))
        LDR.W    R0,??DataTable7  ;; 0x40012c00
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_0
        LDR.W    R0,??DataTable8_2  ;; 0x40013400
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_0
        CMP      R4,#+1073741824
        BEQ.N    ??TIM_ICInit_0
        LDR.W    R0,??DataTable7_1  ;; 0x40000400
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_0
        LDR.W    R0,??DataTable7_2  ;; 0x40000800
        CMP      R4,R0
        BEQ.N    ??TIM_ICInit_0
        LDR.W    R0,??DataTable7_3  ;; 0x40000c00
        CMP      R4,R0
        BNE.N    ??TIM_ICInit_1
//  597     {
//  598         assert_param(IS_TIM_IC_POLARITY(TIM_ICInitStruct->TIM_ICPolarity));
??TIM_ICInit_0:
        B.N      ??TIM_ICInit_2
//  599     }
//  600     else
//  601     {
//  602         assert_param(IS_TIM_IC_POLARITY_LITE(TIM_ICInitStruct->TIM_ICPolarity));
//  603     }
//  604     if (TIM_ICInitStruct->TIM_Channel == TIM_Channel_1)
??TIM_ICInit_1:
??TIM_ICInit_2:
        LDRH     R0,[R5, #+0]
        CMP      R0,#+0
        BNE.N    ??TIM_ICInit_3
//  605     {
//  606         assert_param(IS_TIM_LIST8_PERIPH(TIMx));
//  607         /* TI1 Configuration */
//  608         TI1_Config(TIMx, TIM_ICInitStruct->TIM_ICPolarity,
//  609                    TIM_ICInitStruct->TIM_ICSelection,
//  610                    TIM_ICInitStruct->TIM_ICFilter);
        LDRH     R3,[R5, #+8]
        LDRH     R2,[R5, #+4]
        LDRH     R1,[R5, #+2]
        MOVS     R0,R4
          CFI FunCall TI1_Config
        BL       TI1_Config
//  611         /* Set the Input Capture Prescaler value */
//  612         TIM_SetIC1Prescaler(TIMx, TIM_ICInitStruct->TIM_ICPrescaler);
        LDRH     R1,[R5, #+6]
        MOVS     R0,R4
          CFI FunCall TIM_SetIC1Prescaler
        BL       TIM_SetIC1Prescaler
        B.N      ??TIM_ICInit_4
//  613     }
//  614     else if (TIM_ICInitStruct->TIM_Channel == TIM_Channel_2)
??TIM_ICInit_3:
        LDRH     R0,[R5, #+0]
        CMP      R0,#+4
        BNE.N    ??TIM_ICInit_5
//  615     {
//  616         assert_param(IS_TIM_LIST6_PERIPH(TIMx));
//  617         /* TI2 Configuration */
//  618         TI2_Config(TIMx, TIM_ICInitStruct->TIM_ICPolarity,
//  619                    TIM_ICInitStruct->TIM_ICSelection,
//  620                    TIM_ICInitStruct->TIM_ICFilter);
        LDRH     R3,[R5, #+8]
        LDRH     R2,[R5, #+4]
        LDRH     R1,[R5, #+2]
        MOVS     R0,R4
          CFI FunCall TI2_Config
        BL       TI2_Config
//  621         /* Set the Input Capture Prescaler value */
//  622         TIM_SetIC2Prescaler(TIMx, TIM_ICInitStruct->TIM_ICPrescaler);
        LDRH     R1,[R5, #+6]
        MOVS     R0,R4
          CFI FunCall TIM_SetIC2Prescaler
        BL       TIM_SetIC2Prescaler
        B.N      ??TIM_ICInit_4
//  623     }
//  624     else if (TIM_ICInitStruct->TIM_Channel == TIM_Channel_3)
??TIM_ICInit_5:
        LDRH     R0,[R5, #+0]
        CMP      R0,#+8
        BNE.N    ??TIM_ICInit_6
//  625     {
//  626         assert_param(IS_TIM_LIST3_PERIPH(TIMx));
//  627         /* TI3 Configuration */
//  628         TI3_Config(TIMx,  TIM_ICInitStruct->TIM_ICPolarity,
//  629                    TIM_ICInitStruct->TIM_ICSelection,
//  630                    TIM_ICInitStruct->TIM_ICFilter);
        LDRH     R3,[R5, #+8]
        LDRH     R2,[R5, #+4]
        LDRH     R1,[R5, #+2]
        MOVS     R0,R4
          CFI FunCall TI3_Config
        BL       TI3_Config
//  631         /* Set the Input Capture Prescaler value */
//  632         TIM_SetIC3Prescaler(TIMx, TIM_ICInitStruct->TIM_ICPrescaler);
        LDRH     R1,[R5, #+6]
        MOVS     R0,R4
          CFI FunCall TIM_SetIC3Prescaler
        BL       TIM_SetIC3Prescaler
        B.N      ??TIM_ICInit_4
//  633     }
//  634     else
//  635     {
//  636         assert_param(IS_TIM_LIST3_PERIPH(TIMx));
//  637         /* TI4 Configuration */
//  638         TI4_Config(TIMx, TIM_ICInitStruct->TIM_ICPolarity,
//  639                    TIM_ICInitStruct->TIM_ICSelection,
//  640                    TIM_ICInitStruct->TIM_ICFilter);
??TIM_ICInit_6:
        LDRH     R3,[R5, #+8]
        LDRH     R2,[R5, #+4]
        LDRH     R1,[R5, #+2]
        MOVS     R0,R4
          CFI FunCall TI4_Config
        BL       TI4_Config
//  641         /* Set the Input Capture Prescaler value */
//  642         TIM_SetIC4Prescaler(TIMx, TIM_ICInitStruct->TIM_ICPrescaler);
        LDRH     R1,[R5, #+6]
        MOVS     R0,R4
          CFI FunCall TIM_SetIC4Prescaler
        BL       TIM_SetIC4Prescaler
//  643     }
//  644 }
??TIM_ICInit_4:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock6
//  645 
//  646 /**
//  647   * @brief  Configures the TIM peripheral according to the specified
//  648   *         parameters in the TIM_ICInitStruct to measure an external PWM signal.
//  649   * @param  TIMx: where x can be  1, 2, 3, 4, 5, 8, 9, 12 or 15 to select the TIM peripheral.
//  650   * @param  TIM_ICInitStruct: pointer to a TIM_ICInitTypeDef structure
//  651   *         that contains the configuration information for the specified TIM peripheral.
//  652   * @retval None
//  653   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function TIM_PWMIConfig
        THUMB
//  654 void TIM_PWMIConfig(TIM_TypeDef *TIMx, TIM_ICInitTypeDef *TIM_ICInitStruct)
//  655 {
TIM_PWMIConfig:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R4,R0
        MOVS     R5,R1
//  656     uint16_t icoppositepolarity = TIM_ICPolarity_Rising;
        MOVS     R6,#+0
//  657     uint16_t icoppositeselection = TIM_ICSelection_DirectTI;
        MOVS     R7,#+1
//  658     /* Check the parameters */
//  659     assert_param(IS_TIM_LIST6_PERIPH(TIMx));
//  660     /* Select the Opposite Input Polarity */
//  661     if (TIM_ICInitStruct->TIM_ICPolarity == TIM_ICPolarity_Rising)
        LDRH     R0,[R5, #+2]
        CMP      R0,#+0
        BNE.N    ??TIM_PWMIConfig_0
//  662     {
//  663         icoppositepolarity = TIM_ICPolarity_Falling;
        MOVS     R0,#+2
        MOVS     R6,R0
        B.N      ??TIM_PWMIConfig_1
//  664     }
//  665     else
//  666     {
//  667         icoppositepolarity = TIM_ICPolarity_Rising;
??TIM_PWMIConfig_0:
        MOVS     R0,#+0
        MOVS     R6,R0
//  668     }
//  669     /* Select the Opposite Input */
//  670     if (TIM_ICInitStruct->TIM_ICSelection == TIM_ICSelection_DirectTI)
??TIM_PWMIConfig_1:
        LDRH     R0,[R5, #+4]
        CMP      R0,#+1
        BNE.N    ??TIM_PWMIConfig_2
//  671     {
//  672         icoppositeselection = TIM_ICSelection_IndirectTI;
        MOVS     R0,#+2
        MOVS     R7,R0
        B.N      ??TIM_PWMIConfig_3
//  673     }
//  674     else
//  675     {
//  676         icoppositeselection = TIM_ICSelection_DirectTI;
??TIM_PWMIConfig_2:
        MOVS     R0,#+1
        MOVS     R7,R0
//  677     }
//  678     if (TIM_ICInitStruct->TIM_Channel == TIM_Channel_1)
??TIM_PWMIConfig_3:
        LDRH     R0,[R5, #+0]
        CMP      R0,#+0
        BNE.N    ??TIM_PWMIConfig_4
//  679     {
//  680         /* TI1 Configuration */
//  681         TI1_Config(TIMx, TIM_ICInitStruct->TIM_ICPolarity, TIM_ICInitStruct->TIM_ICSelection,
//  682                    TIM_ICInitStruct->TIM_ICFilter);
        LDRH     R3,[R5, #+8]
        LDRH     R2,[R5, #+4]
        LDRH     R1,[R5, #+2]
        MOVS     R0,R4
          CFI FunCall TI1_Config
        BL       TI1_Config
//  683         /* Set the Input Capture Prescaler value */
//  684         TIM_SetIC1Prescaler(TIMx, TIM_ICInitStruct->TIM_ICPrescaler);
        LDRH     R1,[R5, #+6]
        MOVS     R0,R4
          CFI FunCall TIM_SetIC1Prescaler
        BL       TIM_SetIC1Prescaler
//  685         /* TI2 Configuration */
//  686         TI2_Config(TIMx, icoppositepolarity, icoppositeselection, TIM_ICInitStruct->TIM_ICFilter);
        LDRH     R3,[R5, #+8]
        MOVS     R2,R7
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
          CFI FunCall TI2_Config
        BL       TI2_Config
//  687         /* Set the Input Capture Prescaler value */
//  688         TIM_SetIC2Prescaler(TIMx, TIM_ICInitStruct->TIM_ICPrescaler);
        LDRH     R1,[R5, #+6]
        MOVS     R0,R4
          CFI FunCall TIM_SetIC2Prescaler
        BL       TIM_SetIC2Prescaler
        B.N      ??TIM_PWMIConfig_5
//  689     }
//  690     else
//  691     {
//  692         /* TI2 Configuration */
//  693         TI2_Config(TIMx, TIM_ICInitStruct->TIM_ICPolarity, TIM_ICInitStruct->TIM_ICSelection,
//  694                    TIM_ICInitStruct->TIM_ICFilter);
??TIM_PWMIConfig_4:
        LDRH     R3,[R5, #+8]
        LDRH     R2,[R5, #+4]
        LDRH     R1,[R5, #+2]
        MOVS     R0,R4
          CFI FunCall TI2_Config
        BL       TI2_Config
//  695         /* Set the Input Capture Prescaler value */
//  696         TIM_SetIC2Prescaler(TIMx, TIM_ICInitStruct->TIM_ICPrescaler);
        LDRH     R1,[R5, #+6]
        MOVS     R0,R4
          CFI FunCall TIM_SetIC2Prescaler
        BL       TIM_SetIC2Prescaler
//  697         /* TI1 Configuration */
//  698         TI1_Config(TIMx, icoppositepolarity, icoppositeselection, TIM_ICInitStruct->TIM_ICFilter);
        LDRH     R3,[R5, #+8]
        MOVS     R2,R7
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
          CFI FunCall TI1_Config
        BL       TI1_Config
//  699         /* Set the Input Capture Prescaler value */
//  700         TIM_SetIC1Prescaler(TIMx, TIM_ICInitStruct->TIM_ICPrescaler);
        LDRH     R1,[R5, #+6]
        MOVS     R0,R4
          CFI FunCall TIM_SetIC1Prescaler
        BL       TIM_SetIC1Prescaler
//  701     }
//  702 }
??TIM_PWMIConfig_5:
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock7
//  703 
//  704 /**
//  705   * @brief  Configures the: Break feature, dead time, Lock level, the OSSI,
//  706   *         the OSSR State and the AOE(automatic output enable).
//  707   * @param  TIMx: where x can be  1 or 8 to select the TIM
//  708   * @param  TIM_BDTRInitStruct: pointer to a TIM_BDTRInitTypeDef structure that
//  709   *         contains the BDTR Register configuration  information for the TIM peripheral.
//  710   * @retval None
//  711   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function TIM_BDTRConfig
          CFI NoCalls
        THUMB
//  712 void TIM_BDTRConfig(TIM_TypeDef *TIMx, TIM_BDTRInitTypeDef *TIM_BDTRInitStruct)
//  713 {
//  714     /* Check the parameters */
//  715     assert_param(IS_TIM_LIST2_PERIPH(TIMx));
//  716     assert_param(IS_TIM_OSSR_STATE(TIM_BDTRInitStruct->TIM_OSSRState));
//  717     assert_param(IS_TIM_OSSI_STATE(TIM_BDTRInitStruct->TIM_OSSIState));
//  718     assert_param(IS_TIM_LOCK_LEVEL(TIM_BDTRInitStruct->TIM_LOCKLevel));
//  719     assert_param(IS_TIM_BREAK_STATE(TIM_BDTRInitStruct->TIM_Break));
//  720     assert_param(IS_TIM_BREAK_POLARITY(TIM_BDTRInitStruct->TIM_BreakPolarity));
//  721     assert_param(IS_TIM_AUTOMATIC_OUTPUT_STATE(TIM_BDTRInitStruct->TIM_AutomaticOutput));
//  722     /* Set the Lock level, the Break enable Bit and the Ploarity, the OSSR State,
//  723        the OSSI State, the dead time value and the Automatic Output Enable Bit */
//  724     TIMx->BDTR = (uint32_t)TIM_BDTRInitStruct->TIM_OSSRState | TIM_BDTRInitStruct->TIM_OSSIState |
//  725                  TIM_BDTRInitStruct->TIM_LOCKLevel | TIM_BDTRInitStruct->TIM_DeadTime |
//  726                  TIM_BDTRInitStruct->TIM_Break | TIM_BDTRInitStruct->TIM_BreakPolarity |
//  727                  TIM_BDTRInitStruct->TIM_AutomaticOutput;
TIM_BDTRConfig:
        LDRH     R2,[R1, #+0]
        LDRH     R3,[R1, #+2]
        ORRS     R2,R3,R2
        LDRH     R3,[R1, #+4]
        ORRS     R2,R3,R2
        LDRH     R3,[R1, #+6]
        ORRS     R2,R3,R2
        LDRH     R3,[R1, #+8]
        ORRS     R2,R3,R2
        LDRH     R3,[R1, #+10]
        ORRS     R2,R3,R2
        LDRH     R3,[R1, #+12]
        ORRS     R2,R3,R2
        STRH     R2,[R0, #+68]
//  728 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock8
//  729 
//  730 /**
//  731   * @brief  Fills each TIM_TimeBaseInitStruct member with its default value.
//  732   * @param  TIM_TimeBaseInitStruct : pointer to a TIM_TimeBaseInitTypeDef
//  733   *         structure which will be initialized.
//  734   * @retval None
//  735   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function TIM_TimeBaseStructInit
          CFI NoCalls
        THUMB
//  736 void TIM_TimeBaseStructInit(TIM_TimeBaseInitTypeDef *TIM_TimeBaseInitStruct)
//  737 {
//  738     /* Set the default configuration */
//  739     TIM_TimeBaseInitStruct->TIM_Period = 0xFFFF;
TIM_TimeBaseStructInit:
        MOVW     R1,#+65535
        STRH     R1,[R0, #+4]
//  740     TIM_TimeBaseInitStruct->TIM_Prescaler = 0x0000;
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  741     TIM_TimeBaseInitStruct->TIM_ClockDivision = TIM_CKD_DIV1;
        MOVS     R1,#+0
        STRH     R1,[R0, #+6]
//  742     TIM_TimeBaseInitStruct->TIM_CounterMode = TIM_CounterMode_Up;
        MOVS     R1,#+0
        STRH     R1,[R0, #+2]
//  743     TIM_TimeBaseInitStruct->TIM_RepetitionCounter = 0x0000;
        MOVS     R1,#+0
        STRB     R1,[R0, #+8]
//  744 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  745 
//  746 /**
//  747   * @brief  Fills each TIM_OCInitStruct member with its default value.
//  748   * @param  TIM_OCInitStruct : pointer to a TIM_OCInitTypeDef structure which will
//  749   *         be initialized.
//  750   * @retval None
//  751   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function TIM_OCStructInit
          CFI NoCalls
        THUMB
//  752 void TIM_OCStructInit(TIM_OCInitTypeDef *TIM_OCInitStruct)
//  753 {
//  754     /* Set the default configuration */
//  755     TIM_OCInitStruct->TIM_OCMode = TIM_OCMode_Timing;
TIM_OCStructInit:
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  756     TIM_OCInitStruct->TIM_OutputState = TIM_OutputState_Disable;
        MOVS     R1,#+0
        STRH     R1,[R0, #+2]
//  757     TIM_OCInitStruct->TIM_OutputNState = TIM_OutputNState_Disable;
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
//  758     TIM_OCInitStruct->TIM_Pulse = 0x0000;
        MOVS     R1,#+0
        STRH     R1,[R0, #+6]
//  759     TIM_OCInitStruct->TIM_OCPolarity = TIM_OCPolarity_High;
        MOVS     R1,#+0
        STRH     R1,[R0, #+8]
//  760     TIM_OCInitStruct->TIM_OCNPolarity = TIM_OCPolarity_High;
        MOVS     R1,#+0
        STRH     R1,[R0, #+10]
//  761     TIM_OCInitStruct->TIM_OCIdleState = TIM_OCIdleState_Reset;
        MOVS     R1,#+0
        STRH     R1,[R0, #+12]
//  762     TIM_OCInitStruct->TIM_OCNIdleState = TIM_OCNIdleState_Reset;
        MOVS     R1,#+0
        STRH     R1,[R0, #+14]
//  763 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock10
//  764 
//  765 /**
//  766   * @brief  Fills each TIM_ICInitStruct member with its default value.
//  767   * @param  TIM_ICInitStruct: pointer to a TIM_ICInitTypeDef structure which will
//  768   *         be initialized.
//  769   * @retval None
//  770   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function TIM_ICStructInit
          CFI NoCalls
        THUMB
//  771 void TIM_ICStructInit(TIM_ICInitTypeDef *TIM_ICInitStruct)
//  772 {
//  773     /* Set the default configuration */
//  774     TIM_ICInitStruct->TIM_Channel = TIM_Channel_1;
TIM_ICStructInit:
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  775     TIM_ICInitStruct->TIM_ICPolarity = TIM_ICPolarity_Rising;
        MOVS     R1,#+0
        STRH     R1,[R0, #+2]
//  776     TIM_ICInitStruct->TIM_ICSelection = TIM_ICSelection_DirectTI;
        MOVS     R1,#+1
        STRH     R1,[R0, #+4]
//  777     TIM_ICInitStruct->TIM_ICPrescaler = TIM_ICPSC_DIV1;
        MOVS     R1,#+0
        STRH     R1,[R0, #+6]
//  778     TIM_ICInitStruct->TIM_ICFilter = 0x00;
        MOVS     R1,#+0
        STRH     R1,[R0, #+8]
//  779 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock11
//  780 
//  781 /**
//  782   * @brief  Fills each TIM_BDTRInitStruct member with its default value.
//  783   * @param  TIM_BDTRInitStruct: pointer to a TIM_BDTRInitTypeDef structure which
//  784   *         will be initialized.
//  785   * @retval None
//  786   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function TIM_BDTRStructInit
          CFI NoCalls
        THUMB
//  787 void TIM_BDTRStructInit(TIM_BDTRInitTypeDef *TIM_BDTRInitStruct)
//  788 {
//  789     /* Set the default configuration */
//  790     TIM_BDTRInitStruct->TIM_OSSRState = TIM_OSSRState_Disable;
TIM_BDTRStructInit:
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  791     TIM_BDTRInitStruct->TIM_OSSIState = TIM_OSSIState_Disable;
        MOVS     R1,#+0
        STRH     R1,[R0, #+2]
//  792     TIM_BDTRInitStruct->TIM_LOCKLevel = TIM_LOCKLevel_OFF;
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
//  793     TIM_BDTRInitStruct->TIM_DeadTime = 0x00;
        MOVS     R1,#+0
        STRH     R1,[R0, #+6]
//  794     TIM_BDTRInitStruct->TIM_Break = TIM_Break_Disable;
        MOVS     R1,#+0
        STRH     R1,[R0, #+8]
//  795     TIM_BDTRInitStruct->TIM_BreakPolarity = TIM_BreakPolarity_Low;
        MOVS     R1,#+0
        STRH     R1,[R0, #+10]
//  796     TIM_BDTRInitStruct->TIM_AutomaticOutput = TIM_AutomaticOutput_Disable;
        MOVS     R1,#+0
        STRH     R1,[R0, #+12]
//  797 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock12
//  798 
//  799 /**
//  800   * @brief  Enables or disables the specified TIM peripheral.
//  801   * @param  TIMx: where x can be 1 to 17 to select the TIMx peripheral.
//  802   * @param  NewState: new state of the TIMx peripheral.
//  803   *   This parameter can be: ENABLE or DISABLE.
//  804   * @retval None
//  805   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function TIM_Cmd
          CFI NoCalls
        THUMB
//  806 void TIM_Cmd(TIM_TypeDef *TIMx, FunctionalState NewState)
//  807 {
//  808     /* Check the parameters */
//  809     assert_param(IS_TIM_ALL_PERIPH(TIMx));
//  810     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  811 
//  812     if (NewState != DISABLE)
TIM_Cmd:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??TIM_Cmd_0
//  813     {
//  814         /* Enable the TIM Counter */
//  815         TIMx->CR1 |= TIM_CR1_CEN;
        LDRH     R2,[R0, #+0]
        ORRS     R2,R2,#0x1
        STRH     R2,[R0, #+0]
        B.N      ??TIM_Cmd_1
//  816     }
//  817     else
//  818     {
//  819         /* Disable the TIM Counter */
//  820         TIMx->CR1 &= (uint16_t)(~((uint16_t)TIM_CR1_CEN));
??TIM_Cmd_0:
        LDRH     R2,[R0, #+0]
        MOVW     R3,#+65534
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+0]
//  821     }
//  822 }
??TIM_Cmd_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock13
//  823 
//  824 /**
//  825   * @brief  Enables or disables the TIM peripheral Main Outputs.
//  826   * @param  TIMx: where x can be 1, 8, 15, 16 or 17 to select the TIMx peripheral.
//  827   * @param  NewState: new state of the TIM peripheral Main Outputs.
//  828   *   This parameter can be: ENABLE or DISABLE.
//  829   * @retval None
//  830   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function TIM_CtrlPWMOutputs
          CFI NoCalls
        THUMB
//  831 void TIM_CtrlPWMOutputs(TIM_TypeDef *TIMx, FunctionalState NewState)
//  832 {
//  833     /* Check the parameters */
//  834     assert_param(IS_TIM_LIST2_PERIPH(TIMx));
//  835     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  836     if (NewState != DISABLE)
TIM_CtrlPWMOutputs:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??TIM_CtrlPWMOutputs_0
//  837     {
//  838         /* Enable the TIM Main Output */
//  839         TIMx->BDTR |= TIM_BDTR_MOE;
        LDRH     R2,[R0, #+68]
        ORRS     R2,R2,#0x8000
        STRH     R2,[R0, #+68]
        B.N      ??TIM_CtrlPWMOutputs_1
//  840     }
//  841     else
//  842     {
//  843         /* Disable the TIM Main Output */
//  844         TIMx->BDTR &= (uint16_t)(~((uint16_t)TIM_BDTR_MOE));
??TIM_CtrlPWMOutputs_0:
        LDRH     R2,[R0, #+68]
        LSLS     R2,R2,#+17       ;; ZeroExtS R2,R2,#+17,#+17
        LSRS     R2,R2,#+17
        STRH     R2,[R0, #+68]
//  845     }
//  846 }
??TIM_CtrlPWMOutputs_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock14
//  847 
//  848 /**
//  849   * @brief  Enables or disables the specified TIM interrupts.
//  850   * @param  TIMx: where x can be 1 to 17 to select the TIMx peripheral.
//  851   * @param  TIM_IT: specifies the TIM interrupts sources to be enabled or disabled.
//  852   *   This parameter can be any combination of the following values:
//  853   *     @arg TIM_IT_Update: TIM update Interrupt source
//  854   *     @arg TIM_IT_CC1: TIM Capture Compare 1 Interrupt source
//  855   *     @arg TIM_IT_CC2: TIM Capture Compare 2 Interrupt source
//  856   *     @arg TIM_IT_CC3: TIM Capture Compare 3 Interrupt source
//  857   *     @arg TIM_IT_CC4: TIM Capture Compare 4 Interrupt source
//  858   *     @arg TIM_IT_COM: TIM Commutation Interrupt source
//  859   *     @arg TIM_IT_Trigger: TIM Trigger Interrupt source
//  860   *     @arg TIM_IT_Break: TIM Break Interrupt source
//  861   * @note
//  862   *   - TIM6 and TIM7 can only generate an update interrupt.
//  863   *   - TIM9, TIM12 and TIM15 can have only TIM_IT_Update, TIM_IT_CC1,
//  864   *      TIM_IT_CC2 or TIM_IT_Trigger.
//  865   *   - TIM10, TIM11, TIM13, TIM14, TIM16 and TIM17 can have TIM_IT_Update or TIM_IT_CC1.
//  866   *   - TIM_IT_Break is used only with TIM1, TIM8 and TIM15.
//  867   *   - TIM_IT_COM is used only with TIM1, TIM8, TIM15, TIM16 and TIM17.
//  868   * @param  NewState: new state of the TIM interrupts.
//  869   *   This parameter can be: ENABLE or DISABLE.
//  870   * @retval None
//  871   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function TIM_ITConfig
          CFI NoCalls
        THUMB
//  872 void TIM_ITConfig(TIM_TypeDef *TIMx, uint16_t TIM_IT, FunctionalState NewState)
//  873 {
//  874     /* Check the parameters */
//  875     assert_param(IS_TIM_ALL_PERIPH(TIMx));
//  876     assert_param(IS_TIM_IT(TIM_IT));
//  877     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  878 
//  879     if (NewState != DISABLE)
TIM_ITConfig:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??TIM_ITConfig_0
//  880     {
//  881         /* Enable the Interrupt sources */
//  882         TIMx->DIER |= TIM_IT;
        LDRH     R3,[R0, #+12]
        ORRS     R3,R1,R3
        STRH     R3,[R0, #+12]
        B.N      ??TIM_ITConfig_1
//  883     }
//  884     else
//  885     {
//  886         /* Disable the Interrupt sources */
//  887         TIMx->DIER &= (uint16_t)~TIM_IT;
??TIM_ITConfig_0:
        LDRH     R3,[R0, #+12]
        BICS     R3,R3,R1
        STRH     R3,[R0, #+12]
//  888     }
//  889 }
??TIM_ITConfig_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock15
//  890 
//  891 /**
//  892   * @brief  Configures the TIMx event to be generate by software.
//  893   * @param  TIMx: where x can be 1 to 17 to select the TIM peripheral.
//  894   * @param  TIM_EventSource: specifies the event source.
//  895   *   This parameter can be one or more of the following values:
//  896   *     @arg TIM_EventSource_Update: Timer update Event source
//  897   *     @arg TIM_EventSource_CC1: Timer Capture Compare 1 Event source
//  898   *     @arg TIM_EventSource_CC2: Timer Capture Compare 2 Event source
//  899   *     @arg TIM_EventSource_CC3: Timer Capture Compare 3 Event source
//  900   *     @arg TIM_EventSource_CC4: Timer Capture Compare 4 Event source
//  901   *     @arg TIM_EventSource_COM: Timer COM event source
//  902   *     @arg TIM_EventSource_Trigger: Timer Trigger Event source
//  903   *     @arg TIM_EventSource_Break: Timer Break event source
//  904   * @note
//  905   *   - TIM6 and TIM7 can only generate an update event.
//  906   *   - TIM_EventSource_COM and TIM_EventSource_Break are used only with TIM1 and TIM8.
//  907   * @retval None
//  908   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function TIM_GenerateEvent
          CFI NoCalls
        THUMB
//  909 void TIM_GenerateEvent(TIM_TypeDef *TIMx, uint16_t TIM_EventSource)
//  910 {
//  911     /* Check the parameters */
//  912     assert_param(IS_TIM_ALL_PERIPH(TIMx));
//  913     assert_param(IS_TIM_EVENT_SOURCE(TIM_EventSource));
//  914 
//  915     /* Set the event sources */
//  916     TIMx->EGR = TIM_EventSource;
TIM_GenerateEvent:
        STRH     R1,[R0, #+20]
//  917 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock16
//  918 
//  919 /**
//  920   * @brief  Configures the TIMx's DMA interface.
//  921   * @param  TIMx: where x can be  1, 2, 3, 4, 5, 8, 15, 16 or 17 to select
//  922   *   the TIM peripheral.
//  923   * @param  TIM_DMABase: DMA Base address.
//  924   *   This parameter can be one of the following values:
//  925   *     @arg TIM_DMABase_CR, TIM_DMABase_CR2, TIM_DMABase_SMCR,
//  926   *          TIM_DMABase_DIER, TIM1_DMABase_SR, TIM_DMABase_EGR,
//  927   *          TIM_DMABase_CCMR1, TIM_DMABase_CCMR2, TIM_DMABase_CCER,
//  928   *          TIM_DMABase_CNT, TIM_DMABase_PSC, TIM_DMABase_ARR,
//  929   *          TIM_DMABase_RCR, TIM_DMABase_CCR1, TIM_DMABase_CCR2,
//  930   *          TIM_DMABase_CCR3, TIM_DMABase_CCR4, TIM_DMABase_BDTR,
//  931   *          TIM_DMABase_DCR.
//  932   * @param  TIM_DMABurstLength: DMA Burst length.
//  933   *   This parameter can be one value between:
//  934   *   TIM_DMABurstLength_1Transfer and TIM_DMABurstLength_18Transfers.
//  935   * @retval None
//  936   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function TIM_DMAConfig
          CFI NoCalls
        THUMB
//  937 void TIM_DMAConfig(TIM_TypeDef *TIMx, uint16_t TIM_DMABase, uint16_t TIM_DMABurstLength)
//  938 {
//  939     /* Check the parameters */
//  940     assert_param(IS_TIM_LIST4_PERIPH(TIMx));
//  941     assert_param(IS_TIM_DMA_BASE(TIM_DMABase));
//  942     assert_param(IS_TIM_DMA_LENGTH(TIM_DMABurstLength));
//  943     /* Set the DMA Base and the DMA Burst Length */
//  944     TIMx->DCR = TIM_DMABase | TIM_DMABurstLength;
TIM_DMAConfig:
        ORRS     R3,R2,R1
        STRH     R3,[R0, #+72]
//  945 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock17
//  946 
//  947 /**
//  948   * @brief  Enables or disables the TIMx's DMA Requests.
//  949   * @param  TIMx: where x can be  1, 2, 3, 4, 5, 6, 7, 8, 15, 16 or 17
//  950   *   to select the TIM peripheral.
//  951   * @param  TIM_DMASource: specifies the DMA Request sources.
//  952   *   This parameter can be any combination of the following values:
//  953   *     @arg TIM_DMA_Update: TIM update Interrupt source
//  954   *     @arg TIM_DMA_CC1: TIM Capture Compare 1 DMA source
//  955   *     @arg TIM_DMA_CC2: TIM Capture Compare 2 DMA source
//  956   *     @arg TIM_DMA_CC3: TIM Capture Compare 3 DMA source
//  957   *     @arg TIM_DMA_CC4: TIM Capture Compare 4 DMA source
//  958   *     @arg TIM_DMA_COM: TIM Commutation DMA source
//  959   *     @arg TIM_DMA_Trigger: TIM Trigger DMA source
//  960   * @param  NewState: new state of the DMA Request sources.
//  961   *   This parameter can be: ENABLE or DISABLE.
//  962   * @retval None
//  963   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function TIM_DMACmd
          CFI NoCalls
        THUMB
//  964 void TIM_DMACmd(TIM_TypeDef *TIMx, uint16_t TIM_DMASource, FunctionalState NewState)
//  965 {
//  966     /* Check the parameters */
//  967     assert_param(IS_TIM_LIST9_PERIPH(TIMx));
//  968     assert_param(IS_TIM_DMA_SOURCE(TIM_DMASource));
//  969     assert_param(IS_FUNCTIONAL_STATE(NewState));
//  970 
//  971     if (NewState != DISABLE)
TIM_DMACmd:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??TIM_DMACmd_0
//  972     {
//  973         /* Enable the DMA sources */
//  974         TIMx->DIER |= TIM_DMASource;
        LDRH     R3,[R0, #+12]
        ORRS     R3,R1,R3
        STRH     R3,[R0, #+12]
        B.N      ??TIM_DMACmd_1
//  975     }
//  976     else
//  977     {
//  978         /* Disable the DMA sources */
//  979         TIMx->DIER &= (uint16_t)~TIM_DMASource;
??TIM_DMACmd_0:
        LDRH     R3,[R0, #+12]
        BICS     R3,R3,R1
        STRH     R3,[R0, #+12]
//  980     }
//  981 }
??TIM_DMACmd_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock18
//  982 
//  983 /**
//  984   * @brief  Configures the TIMx internal Clock
//  985   * @param  TIMx: where x can be  1, 2, 3, 4, 5, 8, 9, 12 or 15
//  986   *         to select the TIM peripheral.
//  987   * @retval None
//  988   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function TIM_InternalClockConfig
          CFI NoCalls
        THUMB
//  989 void TIM_InternalClockConfig(TIM_TypeDef *TIMx)
//  990 {
//  991     /* Check the parameters */
//  992     assert_param(IS_TIM_LIST6_PERIPH(TIMx));
//  993     /* Disable slave mode to clock the prescaler directly with the internal clock */
//  994     TIMx->SMCR &=  (uint16_t)(~((uint16_t)TIM_SMCR_SMS));
TIM_InternalClockConfig:
        LDRH     R1,[R0, #+8]
        MOVW     R2,#+65528
        ANDS     R1,R2,R1
        STRH     R1,[R0, #+8]
//  995 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock19
//  996 
//  997 /**
//  998   * @brief  Configures the TIMx Internal Trigger as External Clock
//  999   * @param  TIMx: where x can be  1, 2, 3, 4, 5, 9, 12 or 15 to select the TIM peripheral.
// 1000   * @param  TIM_ITRSource: Trigger source.
// 1001   *   This parameter can be one of the following values:
// 1002   * @param  TIM_TS_ITR0: Internal Trigger 0
// 1003   * @param  TIM_TS_ITR1: Internal Trigger 1
// 1004   * @param  TIM_TS_ITR2: Internal Trigger 2
// 1005   * @param  TIM_TS_ITR3: Internal Trigger 3
// 1006   * @retval None
// 1007   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function TIM_ITRxExternalClockConfig
        THUMB
// 1008 void TIM_ITRxExternalClockConfig(TIM_TypeDef *TIMx, uint16_t TIM_InputTriggerSource)
// 1009 {
TIM_ITRxExternalClockConfig:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
// 1010     /* Check the parameters */
// 1011     assert_param(IS_TIM_LIST6_PERIPH(TIMx));
// 1012     assert_param(IS_TIM_INTERNAL_TRIGGER_SELECTION(TIM_InputTriggerSource));
// 1013     /* Select the Internal Trigger */
// 1014     TIM_SelectInputTrigger(TIMx, TIM_InputTriggerSource);
        MOVS     R1,R5
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
          CFI FunCall TIM_SelectInputTrigger
        BL       TIM_SelectInputTrigger
// 1015     /* Select the External clock mode1 */
// 1016     TIMx->SMCR |= TIM_SlaveMode_External1;
        LDRH     R0,[R4, #+8]
        ORRS     R0,R0,#0x7
        STRH     R0,[R4, #+8]
// 1017 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock20
// 1018 
// 1019 /**
// 1020   * @brief  Configures the TIMx Trigger as External Clock
// 1021   * @param  TIMx: where x can be  1, 2, 3, 4, 5, 9, 12 or 15 to select the TIM peripheral.
// 1022   * @param  TIM_TIxExternalCLKSource: Trigger source.
// 1023   *   This parameter can be one of the following values:
// 1024   *     @arg TIM_TIxExternalCLK1Source_TI1ED: TI1 Edge Detector
// 1025   *     @arg TIM_TIxExternalCLK1Source_TI1: Filtered Timer Input 1
// 1026   *     @arg TIM_TIxExternalCLK1Source_TI2: Filtered Timer Input 2
// 1027   * @param  TIM_ICPolarity: specifies the TIx Polarity.
// 1028   *   This parameter can be one of the following values:
// 1029   *     @arg TIM_ICPolarity_Rising
// 1030   *     @arg TIM_ICPolarity_Falling
// 1031   * @param  ICFilter : specifies the filter value.
// 1032   *   This parameter must be a value between 0x0 and 0xF.
// 1033   * @retval None
// 1034   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function TIM_TIxExternalClockConfig
        THUMB
// 1035 void TIM_TIxExternalClockConfig(TIM_TypeDef *TIMx, uint16_t TIM_TIxExternalCLKSource,
// 1036                                 uint16_t TIM_ICPolarity, uint16_t ICFilter)
// 1037 {
TIM_TIxExternalClockConfig:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
// 1038     /* Check the parameters */
// 1039     assert_param(IS_TIM_LIST6_PERIPH(TIMx));
// 1040     assert_param(IS_TIM_TIXCLK_SOURCE(TIM_TIxExternalCLKSource));
// 1041     assert_param(IS_TIM_IC_POLARITY(TIM_ICPolarity));
// 1042     assert_param(IS_TIM_IC_FILTER(ICFilter));
// 1043     /* Configure the Timer Input Clock Source */
// 1044     if (TIM_TIxExternalCLKSource == TIM_TIxExternalCLK1Source_TI2)
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+96
        BNE.N    ??TIM_TIxExternalClockConfig_0
// 1045     {
// 1046         TI2_Config(TIMx, TIM_ICPolarity, TIM_ICSelection_DirectTI, ICFilter);
        MOVS     R3,R7
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVS     R2,#+1
        MOVS     R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
          CFI FunCall TI2_Config
        BL       TI2_Config
        B.N      ??TIM_TIxExternalClockConfig_1
// 1047     }
// 1048     else
// 1049     {
// 1050         TI1_Config(TIMx, TIM_ICPolarity, TIM_ICSelection_DirectTI, ICFilter);
??TIM_TIxExternalClockConfig_0:
        MOVS     R3,R7
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVS     R2,#+1
        MOVS     R1,R6
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
          CFI FunCall TI1_Config
        BL       TI1_Config
// 1051     }
// 1052     /* Select the Trigger source */
// 1053     TIM_SelectInputTrigger(TIMx, TIM_TIxExternalCLKSource);
??TIM_TIxExternalClockConfig_1:
        MOVS     R1,R5
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
          CFI FunCall TIM_SelectInputTrigger
        BL       TIM_SelectInputTrigger
// 1054     /* Select the External clock mode1 */
// 1055     TIMx->SMCR |= TIM_SlaveMode_External1;
        LDRH     R0,[R4, #+8]
        ORRS     R0,R0,#0x7
        STRH     R0,[R4, #+8]
// 1056 }
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock21
// 1057 
// 1058 /**
// 1059   * @brief  Configures the External clock Mode1
// 1060   * @param  TIMx: where x can be  1, 2, 3, 4, 5 or 8 to select the TIM peripheral.
// 1061   * @param  TIM_ExtTRGPrescaler: The external Trigger Prescaler.
// 1062   *   This parameter can be one of the following values:
// 1063   *     @arg TIM_ExtTRGPSC_OFF: ETRP Prescaler OFF.
// 1064   *     @arg TIM_ExtTRGPSC_DIV2: ETRP frequency divided by 2.
// 1065   *     @arg TIM_ExtTRGPSC_DIV4: ETRP frequency divided by 4.
// 1066   *     @arg TIM_ExtTRGPSC_DIV8: ETRP frequency divided by 8.
// 1067   * @param  TIM_ExtTRGPolarity: The external Trigger Polarity.
// 1068   *   This parameter can be one of the following values:
// 1069   *     @arg TIM_ExtTRGPolarity_Inverted: active low or falling edge active.
// 1070   *     @arg TIM_ExtTRGPolarity_NonInverted: active high or rising edge active.
// 1071   * @param  ExtTRGFilter: External Trigger Filter.
// 1072   *   This parameter must be a value between 0x00 and 0x0F
// 1073   * @retval None
// 1074   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI Function TIM_ETRClockMode1Config
        THUMB
// 1075 void TIM_ETRClockMode1Config(TIM_TypeDef *TIMx, uint16_t TIM_ExtTRGPrescaler, uint16_t TIM_ExtTRGPolarity,
// 1076                              uint16_t ExtTRGFilter)
// 1077 {
TIM_ETRClockMode1Config:
        PUSH     {R4-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+24
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
// 1078     uint16_t tmpsmcr = 0;
        MOVS     R8,#+0
// 1079     /* Check the parameters */
// 1080     assert_param(IS_TIM_LIST3_PERIPH(TIMx));
// 1081     assert_param(IS_TIM_EXT_PRESCALER(TIM_ExtTRGPrescaler));
// 1082     assert_param(IS_TIM_EXT_POLARITY(TIM_ExtTRGPolarity));
// 1083     assert_param(IS_TIM_EXT_FILTER(ExtTRGFilter));
// 1084     /* Configure the ETR Clock source */
// 1085     TIM_ETRConfig(TIMx, TIM_ExtTRGPrescaler, TIM_ExtTRGPolarity, ExtTRGFilter);
        MOVS     R3,R7
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R5
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
          CFI FunCall TIM_ETRConfig
        BL       TIM_ETRConfig
// 1086 
// 1087     /* Get the TIMx SMCR register value */
// 1088     tmpsmcr = TIMx->SMCR;
        LDRH     R0,[R4, #+8]
        MOV      R8,R0
// 1089     /* Reset the SMS Bits */
// 1090     tmpsmcr &= (uint16_t)(~((uint16_t)TIM_SMCR_SMS));
        MOVW     R0,#+65528
        ANDS     R8,R0,R8
// 1091     /* Select the External clock mode1 */
// 1092     tmpsmcr |= TIM_SlaveMode_External1;
        ORRS     R8,R8,#0x7
// 1093     /* Select the Trigger selection : ETRF */
// 1094     tmpsmcr &= (uint16_t)(~((uint16_t)TIM_SMCR_TS));
        MOVW     R0,#+65423
        ANDS     R8,R0,R8
// 1095     tmpsmcr |= TIM_TS_ETRF;
        ORRS     R8,R8,#0x70
// 1096     /* Write to TIMx SMCR */
// 1097     TIMx->SMCR = tmpsmcr;
        STRH     R8,[R4, #+8]
// 1098 }
        POP      {R4-R8,PC}       ;; return
          CFI EndBlock cfiBlock22
// 1099 
// 1100 /**
// 1101   * @brief  Configures the External clock Mode2
// 1102   * @param  TIMx: where x can be  1, 2, 3, 4, 5 or 8 to select the TIM peripheral.
// 1103   * @param  TIM_ExtTRGPrescaler: The external Trigger Prescaler.
// 1104   *   This parameter can be one of the following values:
// 1105   *     @arg TIM_ExtTRGPSC_OFF: ETRP Prescaler OFF.
// 1106   *     @arg TIM_ExtTRGPSC_DIV2: ETRP frequency divided by 2.
// 1107   *     @arg TIM_ExtTRGPSC_DIV4: ETRP frequency divided by 4.
// 1108   *     @arg TIM_ExtTRGPSC_DIV8: ETRP frequency divided by 8.
// 1109   * @param  TIM_ExtTRGPolarity: The external Trigger Polarity.
// 1110   *   This parameter can be one of the following values:
// 1111   *     @arg TIM_ExtTRGPolarity_Inverted: active low or falling edge active.
// 1112   *     @arg TIM_ExtTRGPolarity_NonInverted: active high or rising edge active.
// 1113   * @param  ExtTRGFilter: External Trigger Filter.
// 1114   *   This parameter must be a value between 0x00 and 0x0F
// 1115   * @retval None
// 1116   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function TIM_ETRClockMode2Config
        THUMB
// 1117 void TIM_ETRClockMode2Config(TIM_TypeDef *TIMx, uint16_t TIM_ExtTRGPrescaler,
// 1118                              uint16_t TIM_ExtTRGPolarity, uint16_t ExtTRGFilter)
// 1119 {
TIM_ETRClockMode2Config:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
// 1120     /* Check the parameters */
// 1121     assert_param(IS_TIM_LIST3_PERIPH(TIMx));
// 1122     assert_param(IS_TIM_EXT_PRESCALER(TIM_ExtTRGPrescaler));
// 1123     assert_param(IS_TIM_EXT_POLARITY(TIM_ExtTRGPolarity));
// 1124     assert_param(IS_TIM_EXT_FILTER(ExtTRGFilter));
// 1125     /* Configure the ETR Clock source */
// 1126     TIM_ETRConfig(TIMx, TIM_ExtTRGPrescaler, TIM_ExtTRGPolarity, ExtTRGFilter);
        MOVS     R3,R7
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        MOVS     R2,R6
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        MOVS     R1,R5
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MOVS     R0,R4
          CFI FunCall TIM_ETRConfig
        BL       TIM_ETRConfig
// 1127     /* Enable the External clock mode2 */
// 1128     TIMx->SMCR |= TIM_SMCR_ECE;
        LDRH     R0,[R4, #+8]
        ORRS     R0,R0,#0x4000
        STRH     R0,[R4, #+8]
// 1129 }
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock23
// 1130 
// 1131 /**
// 1132   * @brief  Configures the TIMx External Trigger (ETR).
// 1133   * @param  TIMx: where x can be  1, 2, 3, 4, 5 or 8 to select the TIM peripheral.
// 1134   * @param  TIM_ExtTRGPrescaler: The external Trigger Prescaler.
// 1135   *   This parameter can be one of the following values:
// 1136   *     @arg TIM_ExtTRGPSC_OFF: ETRP Prescaler OFF.
// 1137   *     @arg TIM_ExtTRGPSC_DIV2: ETRP frequency divided by 2.
// 1138   *     @arg TIM_ExtTRGPSC_DIV4: ETRP frequency divided by 4.
// 1139   *     @arg TIM_ExtTRGPSC_DIV8: ETRP frequency divided by 8.
// 1140   * @param  TIM_ExtTRGPolarity: The external Trigger Polarity.
// 1141   *   This parameter can be one of the following values:
// 1142   *     @arg TIM_ExtTRGPolarity_Inverted: active low or falling edge active.
// 1143   *     @arg TIM_ExtTRGPolarity_NonInverted: active high or rising edge active.
// 1144   * @param  ExtTRGFilter: External Trigger Filter.
// 1145   *   This parameter must be a value between 0x00 and 0x0F
// 1146   * @retval None
// 1147   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock24 Using cfiCommon0
          CFI Function TIM_ETRConfig
          CFI NoCalls
        THUMB
// 1148 void TIM_ETRConfig(TIM_TypeDef *TIMx, uint16_t TIM_ExtTRGPrescaler, uint16_t TIM_ExtTRGPolarity,
// 1149                    uint16_t ExtTRGFilter)
// 1150 {
TIM_ETRConfig:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
// 1151     uint16_t tmpsmcr = 0;
        MOVS     R4,#+0
// 1152     /* Check the parameters */
// 1153     assert_param(IS_TIM_LIST3_PERIPH(TIMx));
// 1154     assert_param(IS_TIM_EXT_PRESCALER(TIM_ExtTRGPrescaler));
// 1155     assert_param(IS_TIM_EXT_POLARITY(TIM_ExtTRGPolarity));
// 1156     assert_param(IS_TIM_EXT_FILTER(ExtTRGFilter));
// 1157     tmpsmcr = TIMx->SMCR;
        LDRH     R5,[R0, #+8]
        MOVS     R4,R5
// 1158     /* Reset the ETR Bits */
// 1159     tmpsmcr &= SMCR_ETR_Mask;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
// 1160     /* Set the Prescaler, the Filter value and the Polarity */
// 1161     tmpsmcr |= (uint16_t)(TIM_ExtTRGPrescaler | (uint16_t)(TIM_ExtTRGPolarity | (uint16_t)(ExtTRGFilter << (uint16_t)8)));
        ORRS     R5,R2,R3, LSL #+8
        ORRS     R5,R5,R1
        ORRS     R4,R5,R4
// 1162     /* Write to TIMx SMCR */
// 1163     TIMx->SMCR = tmpsmcr;
        STRH     R4,[R0, #+8]
// 1164 }
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock24
// 1165 
// 1166 /**
// 1167   * @brief  Configures the TIMx Prescaler.
// 1168   * @param  TIMx: where x can be 1 to 17 to select the TIM peripheral.
// 1169   * @param  Prescaler: specifies the Prescaler Register value
// 1170   * @param  TIM_PSCReloadMode: specifies the TIM Prescaler Reload mode
// 1171   *   This parameter can be one of the following values:
// 1172   *     @arg TIM_PSCReloadMode_Update: The Prescaler is loaded at the update event.
// 1173   *     @arg TIM_PSCReloadMode_Immediate: The Prescaler is loaded immediately.
// 1174   * @retval None
// 1175   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock25 Using cfiCommon0
          CFI Function TIM_PrescalerConfig
          CFI NoCalls
        THUMB
// 1176 void TIM_PrescalerConfig(TIM_TypeDef *TIMx, uint16_t Prescaler, uint16_t TIM_PSCReloadMode)
// 1177 {
// 1178     /* Check the parameters */
// 1179     assert_param(IS_TIM_ALL_PERIPH(TIMx));
// 1180     assert_param(IS_TIM_PRESCALER_RELOAD(TIM_PSCReloadMode));
// 1181     /* Set the Prescaler value */
// 1182     TIMx->PSC = Prescaler;
TIM_PrescalerConfig:
        STRH     R1,[R0, #+40]
// 1183     /* Set or reset the UG Bit */
// 1184     TIMx->EGR = TIM_PSCReloadMode;
        STRH     R2,[R0, #+20]
// 1185 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock25
// 1186 
// 1187 /**
// 1188   * @brief  Specifies the TIMx Counter Mode to be used.
// 1189   * @param  TIMx: where x can be  1, 2, 3, 4, 5 or 8 to select the TIM peripheral.
// 1190   * @param  TIM_CounterMode: specifies the Counter Mode to be used
// 1191   *   This parameter can be one of the following values:
// 1192   *     @arg TIM_CounterMode_Up: TIM Up Counting Mode
// 1193   *     @arg TIM_CounterMode_Down: TIM Down Counting Mode
// 1194   *     @arg TIM_CounterMode_CenterAligned1: TIM Center Aligned Mode1
// 1195   *     @arg TIM_CounterMode_CenterAligned2: TIM Center Aligned Mode2
// 1196   *     @arg TIM_CounterMode_CenterAligned3: TIM Center Aligned Mode3
// 1197   * @retval None
// 1198   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock26 Using cfiCommon0
          CFI Function TIM_CounterModeConfig
          CFI NoCalls
        THUMB
// 1199 void TIM_CounterModeConfig(TIM_TypeDef *TIMx, uint16_t TIM_CounterMode)
// 1200 {
// 1201     uint16_t tmpcr1 = 0;
TIM_CounterModeConfig:
        MOVS     R2,#+0
// 1202     /* Check the parameters */
// 1203     assert_param(IS_TIM_LIST3_PERIPH(TIMx));
// 1204     assert_param(IS_TIM_COUNTER_MODE(TIM_CounterMode));
// 1205     tmpcr1 = TIMx->CR1;
        LDRH     R3,[R0, #+0]
        MOVS     R2,R3
// 1206     /* Reset the CMS and DIR Bits */
// 1207     tmpcr1 &= (uint16_t)(~((uint16_t)(TIM_CR1_DIR | TIM_CR1_CMS)));
        MOVW     R3,#+65423
        ANDS     R2,R3,R2
// 1208     /* Set the Counter Mode */
// 1209     tmpcr1 |= TIM_CounterMode;
        ORRS     R2,R1,R2
// 1210     /* Write to TIMx CR1 register */
// 1211     TIMx->CR1 = tmpcr1;
        STRH     R2,[R0, #+0]
// 1212 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock26
// 1213 
// 1214 /**
// 1215   * @brief  Selects the Input Trigger source
// 1216   * @param  TIMx: where x can be  1, 2, 3, 4, 5, 8, 9, 12 or 15 to select the TIM peripheral.
// 1217   * @param  TIM_InputTriggerSource: The Input Trigger source.
// 1218   *   This parameter can be one of the following values:
// 1219   *     @arg TIM_TS_ITR0: Internal Trigger 0
// 1220   *     @arg TIM_TS_ITR1: Internal Trigger 1
// 1221   *     @arg TIM_TS_ITR2: Internal Trigger 2
// 1222   *     @arg TIM_TS_ITR3: Internal Trigger 3
// 1223   *     @arg TIM_TS_TI1F_ED: TI1 Edge Detector
// 1224   *     @arg TIM_TS_TI1FP1: Filtered Timer Input 1
// 1225   *     @arg TIM_TS_TI2FP2: Filtered Timer Input 2
// 1226   *     @arg TIM_TS_ETRF: External Trigger input
// 1227   * @retval None
// 1228   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock27 Using cfiCommon0
          CFI Function TIM_SelectInputTrigger
          CFI NoCalls
        THUMB
// 1229 void TIM_SelectInputTrigger(TIM_TypeDef *TIMx, uint16_t TIM_InputTriggerSource)
// 1230 {
// 1231     uint16_t tmpsmcr = 0;
TIM_SelectInputTrigger:
        MOVS     R2,#+0
// 1232     /* Check the parameters */
// 1233     assert_param(IS_TIM_LIST6_PERIPH(TIMx));
// 1234     assert_param(IS_TIM_TRIGGER_SELECTION(TIM_InputTriggerSource));
// 1235     /* Get the TIMx SMCR register value */
// 1236     tmpsmcr = TIMx->SMCR;
        LDRH     R3,[R0, #+8]
        MOVS     R2,R3
// 1237     /* Reset the TS Bits */
// 1238     tmpsmcr &= (uint16_t)(~((uint16_t)TIM_SMCR_TS));
        MOVW     R3,#+65423
        ANDS     R2,R3,R2
// 1239     /* Set the Input Trigger source */
// 1240     tmpsmcr |= TIM_InputTriggerSource;
        ORRS     R2,R1,R2
// 1241     /* Write to TIMx SMCR */
// 1242     TIMx->SMCR = tmpsmcr;
        STRH     R2,[R0, #+8]
// 1243 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock27
// 1244 
// 1245 /**
// 1246   * @brief  Configures the TIMx Encoder Interface.
// 1247   * @param  TIMx: where x can be  1, 2, 3, 4, 5 or 8 to select the TIM peripheral.
// 1248   * @param  TIM_EncoderMode: specifies the TIMx Encoder Mode.
// 1249   *   This parameter can be one of the following values:
// 1250   *     @arg TIM_EncoderMode_TI1: Counter counts on TI1FP1 edge depending on TI2FP2 level.
// 1251   *     @arg TIM_EncoderMode_TI2: Counter counts on TI2FP2 edge depending on TI1FP1 level.
// 1252   *     @arg TIM_EncoderMode_TI12: Counter counts on both TI1FP1 and TI2FP2 edges depending
// 1253   *                                on the level of the other input.
// 1254   * @param  TIM_IC1Polarity: specifies the IC1 Polarity
// 1255   *   This parameter can be one of the following values:
// 1256   *     @arg TIM_ICPolarity_Falling: IC Falling edge.
// 1257   *     @arg TIM_ICPolarity_Rising: IC Rising edge.
// 1258   * @param  TIM_IC2Polarity: specifies the IC2 Polarity
// 1259   *   This parameter can be one of the following values:
// 1260   *     @arg TIM_ICPolarity_Falling: IC Falling edge.
// 1261   *     @arg TIM_ICPolarity_Rising: IC Rising edge.
// 1262   * @retval None
// 1263   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock28 Using cfiCommon0
          CFI Function TIM_EncoderInterfaceConfig
          CFI NoCalls
        THUMB
// 1264 void TIM_EncoderInterfaceConfig(TIM_TypeDef *TIMx, uint16_t TIM_EncoderMode,
// 1265                                 uint16_t TIM_IC1Polarity, uint16_t TIM_IC2Polarity)
// 1266 {
TIM_EncoderInterfaceConfig:
        PUSH     {R4-R7}
          CFI R7 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
// 1267     uint16_t tmpsmcr = 0;
        MOVS     R4,#+0
// 1268     uint16_t tmpccmr1 = 0;
        MOVS     R5,#+0
// 1269     uint16_t tmpccer = 0;
        MOVS     R6,#+0
// 1270 
// 1271     /* Check the parameters */
// 1272     assert_param(IS_TIM_LIST5_PERIPH(TIMx));
// 1273     assert_param(IS_TIM_ENCODER_MODE(TIM_EncoderMode));
// 1274     assert_param(IS_TIM_IC_POLARITY(TIM_IC1Polarity));
// 1275     assert_param(IS_TIM_IC_POLARITY(TIM_IC2Polarity));
// 1276 
// 1277     /* Get the TIMx SMCR register value */
// 1278     tmpsmcr = TIMx->SMCR;
        LDRH     R7,[R0, #+8]
        MOVS     R4,R7
// 1279 
// 1280     /* Get the TIMx CCMR1 register value */
// 1281     tmpccmr1 = TIMx->CCMR1;
        LDRH     R7,[R0, #+24]
        MOVS     R5,R7
// 1282 
// 1283     /* Get the TIMx CCER register value */
// 1284     tmpccer = TIMx->CCER;
        LDRH     R7,[R0, #+32]
        MOVS     R6,R7
// 1285 
// 1286     /* Set the encoder Mode */
// 1287     tmpsmcr &= (uint16_t)(~((uint16_t)TIM_SMCR_SMS));
        MOVW     R7,#+65528
        ANDS     R4,R7,R4
// 1288     tmpsmcr |= TIM_EncoderMode;
        ORRS     R4,R1,R4
// 1289 
// 1290     /* Select the Capture Compare 1 and the Capture Compare 2 as input */
// 1291     tmpccmr1 &= (uint16_t)(((uint16_t)~((uint16_t)TIM_CCMR1_CC1S)) & (uint16_t)(~((uint16_t)TIM_CCMR1_CC2S)));
        MOVW     R7,#+64764
        ANDS     R5,R7,R5
// 1292     tmpccmr1 |= TIM_CCMR1_CC1S_0 | TIM_CCMR1_CC2S_0;
        MOVW     R7,#+257
        ORRS     R5,R7,R5
// 1293 
// 1294     /* Set the TI1 and the TI2 Polarities */
// 1295     tmpccer &= (uint16_t)(((uint16_t)~((uint16_t)TIM_CCER_CC1P)) & ((uint16_t)~((uint16_t)TIM_CCER_CC2P)));
        MOVW     R7,#+65501
        ANDS     R6,R7,R6
// 1296     tmpccer |= (uint16_t)(TIM_IC1Polarity | (uint16_t)(TIM_IC2Polarity << (uint16_t)4));
        ORRS     R7,R2,R3, LSL #+4
        ORRS     R6,R7,R6
// 1297 
// 1298     /* Write to TIMx SMCR */
// 1299     TIMx->SMCR = tmpsmcr;
        STRH     R4,[R0, #+8]
// 1300     /* Write to TIMx CCMR1 */
// 1301     TIMx->CCMR1 = tmpccmr1;
        STRH     R5,[R0, #+24]
// 1302     /* Write to TIMx CCER */
// 1303     TIMx->CCER = tmpccer;
        STRH     R6,[R0, #+32]
// 1304 }
        POP      {R4-R7}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock28
// 1305 
// 1306 /**
// 1307   * @brief  Forces the TIMx output 1 waveform to active or inactive level.
// 1308   * @param  TIMx: where x can be  1 to 17 except 6 and 7 to select the TIM peripheral.
// 1309   * @param  TIM_ForcedAction: specifies the forced Action to be set to the output waveform.
// 1310   *   This parameter can be one of the following values:
// 1311   *     @arg TIM_ForcedAction_Active: Force active level on OC1REF
// 1312   *     @arg TIM_ForcedAction_InActive: Force inactive level on OC1REF.
// 1313   * @retval None
// 1314   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock29 Using cfiCommon0
          CFI Function TIM_ForcedOC1Config
          CFI NoCalls
        THUMB
// 1315 void TIM_ForcedOC1Config(TIM_TypeDef *TIMx, uint16_t TIM_ForcedAction)
// 1316 {
// 1317     uint16_t tmpccmr1 = 0;
TIM_ForcedOC1Config:
        MOVS     R2,#+0
// 1318     /* Check the parameters */
// 1319     assert_param(IS_TIM_LIST8_PERIPH(TIMx));
// 1320     assert_param(IS_TIM_FORCED_ACTION(TIM_ForcedAction));
// 1321     tmpccmr1 = TIMx->CCMR1;
        LDRH     R3,[R0, #+24]
        MOVS     R2,R3
// 1322     /* Reset the OC1M Bits */
// 1323     tmpccmr1 &= (uint16_t)~((uint16_t)TIM_CCMR1_OC1M);
        MOVW     R3,#+65423
        ANDS     R2,R3,R2
// 1324     /* Configure The Forced output Mode */
// 1325     tmpccmr1 |= TIM_ForcedAction;
        ORRS     R2,R1,R2
// 1326     /* Write to TIMx CCMR1 register */
// 1327     TIMx->CCMR1 = tmpccmr1;
        STRH     R2,[R0, #+24]
// 1328 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock29
// 1329 
// 1330 /**
// 1331   * @brief  Forces the TIMx output 2 waveform to active or inactive level.
// 1332   * @param  TIMx: where x can be  1, 2, 3, 4, 5, 8, 9, 12 or 15 to select the TIM peripheral.
// 1333   * @param  TIM_ForcedAction: specifies the forced Action to be set to the output waveform.
// 1334   *   This parameter can be one of the following values:
// 1335   *     @arg TIM_ForcedAction_Active: Force active level on OC2REF
// 1336   *     @arg TIM_ForcedAction_InActive: Force inactive level on OC2REF.
// 1337   * @retval None
// 1338   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock30 Using cfiCommon0
          CFI Function TIM_ForcedOC2Config
          CFI NoCalls
        THUMB
// 1339 void TIM_ForcedOC2Config(TIM_TypeDef *TIMx, uint16_t TIM_ForcedAction)
// 1340 {
// 1341     uint16_t tmpccmr1 = 0;
TIM_ForcedOC2Config:
        MOVS     R2,#+0
// 1342     /* Check the parameters */
// 1343     assert_param(IS_TIM_LIST6_PERIPH(TIMx));
// 1344     assert_param(IS_TIM_FORCED_ACTION(TIM_ForcedAction));
// 1345     tmpccmr1 = TIMx->CCMR1;
        LDRH     R3,[R0, #+24]
        MOVS     R2,R3
// 1346     /* Reset the OC2M Bits */
// 1347     tmpccmr1 &= (uint16_t)~((uint16_t)TIM_CCMR1_OC2M);
        MOVW     R3,#+36863
        ANDS     R2,R3,R2
// 1348     /* Configure The Forced output Mode */
// 1349     tmpccmr1 |= (uint16_t)(TIM_ForcedAction << 8);
        ORRS     R2,R2,R1, LSL #+8
// 1350     /* Write to TIMx CCMR1 register */
// 1351     TIMx->CCMR1 = tmpccmr1;
        STRH     R2,[R0, #+24]
// 1352 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock30
// 1353 
// 1354 /**
// 1355   * @brief  Forces the TIMx output 3 waveform to active or inactive level.
// 1356   * @param  TIMx: where x can be  1, 2, 3, 4, 5 or 8 to select the TIM peripheral.
// 1357   * @param  TIM_ForcedAction: specifies the forced Action to be set to the output waveform.
// 1358   *   This parameter can be one of the following values:
// 1359   *     @arg TIM_ForcedAction_Active: Force active level on OC3REF
// 1360   *     @arg TIM_ForcedAction_InActive: Force inactive level on OC3REF.
// 1361   * @retval None
// 1362   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock31 Using cfiCommon0
          CFI Function TIM_ForcedOC3Config
          CFI NoCalls
        THUMB
// 1363 void TIM_ForcedOC3Config(TIM_TypeDef *TIMx, uint16_t TIM_ForcedAction)
// 1364 {
// 1365     uint16_t tmpccmr2 = 0;
TIM_ForcedOC3Config:
        MOVS     R2,#+0
// 1366     /* Check the parameters */
// 1367     assert_param(IS_TIM_LIST3_PERIPH(TIMx));
// 1368     assert_param(IS_TIM_FORCED_ACTION(TIM_ForcedAction));
// 1369     tmpccmr2 = TIMx->CCMR2;
        LDRH     R3,[R0, #+28]
        MOVS     R2,R3
// 1370     /* Reset the OC1M Bits */
// 1371     tmpccmr2 &= (uint16_t)~((uint16_t)TIM_CCMR2_OC3M);
        MOVW     R3,#+65423
        ANDS     R2,R3,R2
// 1372     /* Configure The Forced output Mode */
// 1373     tmpccmr2 |= TIM_ForcedAction;
        ORRS     R2,R1,R2
// 1374     /* Write to TIMx CCMR2 register */
// 1375     TIMx->CCMR2 = tmpccmr2;
        STRH     R2,[R0, #+28]
// 1376 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock31
// 1377 
// 1378 /**
// 1379   * @brief  Forces the TIMx output 4 waveform to active or inactive level.
// 1380   * @param  TIMx: where x can be  1, 2, 3, 4, 5 or 8 to select the TIM peripheral.
// 1381   * @param  TIM_ForcedAction: specifies the forced Action to be set to the output waveform.
// 1382   *   This parameter can be one of the following values:
// 1383   *     @arg TIM_ForcedAction_Active: Force active level on OC4REF
// 1384   *     @arg TIM_ForcedAction_InActive: Force inactive level on OC4REF.
// 1385   * @retval None
// 1386   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock32 Using cfiCommon0
          CFI Function TIM_ForcedOC4Config
          CFI NoCalls
        THUMB
// 1387 void TIM_ForcedOC4Config(TIM_TypeDef *TIMx, uint16_t TIM_ForcedAction)
// 1388 {
// 1389     uint16_t tmpccmr2 = 0;
TIM_ForcedOC4Config:
        MOVS     R2,#+0
// 1390     /* Check the parameters */
// 1391     assert_param(IS_TIM_LIST3_PERIPH(TIMx));
// 1392     assert_param(IS_TIM_FORCED_ACTION(TIM_ForcedAction));
// 1393     tmpccmr2 = TIMx->CCMR2;
        LDRH     R3,[R0, #+28]
        MOVS     R2,R3
// 1394     /* Reset the OC2M Bits */
// 1395     tmpccmr2 &= (uint16_t)~((uint16_t)TIM_CCMR2_OC4M);
        MOVW     R3,#+36863
        ANDS     R2,R3,R2
// 1396     /* Configure The Forced output Mode */
// 1397     tmpccmr2 |= (uint16_t)(TIM_ForcedAction << 8);
        ORRS     R2,R2,R1, LSL #+8
// 1398     /* Write to TIMx CCMR2 register */
// 1399     TIMx->CCMR2 = tmpccmr2;
        STRH     R2,[R0, #+28]
// 1400 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock32
// 1401 
// 1402 /**
// 1403   * @brief  Enables or disables TIMx peripheral Preload register on ARR.
// 1404   * @param  TIMx: where x can be  1 to 17 to select the TIM peripheral.
// 1405   * @param  NewState: new state of the TIMx peripheral Preload register
// 1406   *   This parameter can be: ENABLE or DISABLE.
// 1407   * @retval None
// 1408   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock33 Using cfiCommon0
          CFI Function TIM_ARRPreloadConfig
          CFI NoCalls
        THUMB
// 1409 void TIM_ARRPreloadConfig(TIM_TypeDef *TIMx, FunctionalState NewState)
// 1410 {
// 1411     /* Check the parameters */
// 1412     assert_param(IS_TIM_ALL_PERIPH(TIMx));
// 1413     assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1414     if (NewState != DISABLE)
TIM_ARRPreloadConfig:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??TIM_ARRPreloadConfig_0
// 1415     {
// 1416         /* Set the ARR Preload Bit */
// 1417         TIMx->CR1 |= TIM_CR1_ARPE;
        LDRH     R2,[R0, #+0]
        ORRS     R2,R2,#0x80
        STRH     R2,[R0, #+0]
        B.N      ??TIM_ARRPreloadConfig_1
// 1418     }
// 1419     else
// 1420     {
// 1421         /* Reset the ARR Preload Bit */
// 1422         TIMx->CR1 &= (uint16_t)~((uint16_t)TIM_CR1_ARPE);
??TIM_ARRPreloadConfig_0:
        LDRH     R2,[R0, #+0]
        MOVW     R3,#+65407
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+0]
// 1423     }
// 1424 }
??TIM_ARRPreloadConfig_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock33
// 1425 
// 1426 /**
// 1427   * @brief  Selects the TIM peripheral Commutation event.
// 1428   * @param  TIMx: where x can be  1, 8, 15, 16 or 17 to select the TIMx peripheral
// 1429   * @param  NewState: new state of the Commutation event.
// 1430   *   This parameter can be: ENABLE or DISABLE.
// 1431   * @retval None
// 1432   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock34 Using cfiCommon0
          CFI Function TIM_SelectCOM
          CFI NoCalls
        THUMB
// 1433 void TIM_SelectCOM(TIM_TypeDef *TIMx, FunctionalState NewState)
// 1434 {
// 1435     /* Check the parameters */
// 1436     assert_param(IS_TIM_LIST2_PERIPH(TIMx));
// 1437     assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1438     if (NewState != DISABLE)
TIM_SelectCOM:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??TIM_SelectCOM_0
// 1439     {
// 1440         /* Set the COM Bit */
// 1441         TIMx->CR2 |= TIM_CR2_CCUS;
        LDRH     R2,[R0, #+4]
        ORRS     R2,R2,#0x4
        STRH     R2,[R0, #+4]
        B.N      ??TIM_SelectCOM_1
// 1442     }
// 1443     else
// 1444     {
// 1445         /* Reset the COM Bit */
// 1446         TIMx->CR2 &= (uint16_t)~((uint16_t)TIM_CR2_CCUS);
??TIM_SelectCOM_0:
        LDRH     R2,[R0, #+4]
        MOVW     R3,#+65531
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+4]
// 1447     }
// 1448 }
??TIM_SelectCOM_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock34
// 1449 
// 1450 /**
// 1451   * @brief  Selects the TIMx peripheral Capture Compare DMA source.
// 1452   * @param  TIMx: where x can be  1, 2, 3, 4, 5, 8, 15, 16 or 17 to select
// 1453   *         the TIM peripheral.
// 1454   * @param  NewState: new state of the Capture Compare DMA source
// 1455   *   This parameter can be: ENABLE or DISABLE.
// 1456   * @retval None
// 1457   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock35 Using cfiCommon0
          CFI Function TIM_SelectCCDMA
          CFI NoCalls
        THUMB
// 1458 void TIM_SelectCCDMA(TIM_TypeDef *TIMx, FunctionalState NewState)
// 1459 {
// 1460     /* Check the parameters */
// 1461     assert_param(IS_TIM_LIST4_PERIPH(TIMx));
// 1462     assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1463     if (NewState != DISABLE)
TIM_SelectCCDMA:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??TIM_SelectCCDMA_0
// 1464     {
// 1465         /* Set the CCDS Bit */
// 1466         TIMx->CR2 |= TIM_CR2_CCDS;
        LDRH     R2,[R0, #+4]
        ORRS     R2,R2,#0x8
        STRH     R2,[R0, #+4]
        B.N      ??TIM_SelectCCDMA_1
// 1467     }
// 1468     else
// 1469     {
// 1470         /* Reset the CCDS Bit */
// 1471         TIMx->CR2 &= (uint16_t)~((uint16_t)TIM_CR2_CCDS);
??TIM_SelectCCDMA_0:
        LDRH     R2,[R0, #+4]
        MOVW     R3,#+65527
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+4]
// 1472     }
// 1473 }
??TIM_SelectCCDMA_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock35
// 1474 
// 1475 /**
// 1476   * @brief  Sets or Resets the TIM peripheral Capture Compare Preload Control bit.
// 1477   * @param  TIMx: where x can be   1, 2, 3, 4, 5, 8 or 15
// 1478   *         to select the TIMx peripheral
// 1479   * @param  NewState: new state of the Capture Compare Preload Control bit
// 1480   *   This parameter can be: ENABLE or DISABLE.
// 1481   * @retval None
// 1482   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock36 Using cfiCommon0
          CFI Function TIM_CCPreloadControl
          CFI NoCalls
        THUMB
// 1483 void TIM_CCPreloadControl(TIM_TypeDef *TIMx, FunctionalState NewState)
// 1484 {
// 1485     /* Check the parameters */
// 1486     assert_param(IS_TIM_LIST5_PERIPH(TIMx));
// 1487     assert_param(IS_FUNCTIONAL_STATE(NewState));
// 1488     if (NewState != DISABLE)
TIM_CCPreloadControl:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??TIM_CCPreloadControl_0
// 1489     {
// 1490         /* Set the CCPC Bit */
// 1491         TIMx->CR2 |= TIM_CR2_CCPC;
        LDRH     R2,[R0, #+4]
        ORRS     R2,R2,#0x1
        STRH     R2,[R0, #+4]
        B.N      ??TIM_CCPreloadControl_1
// 1492     }
// 1493     else
// 1494     {
// 1495         /* Reset the CCPC Bit */
// 1496         TIMx->CR2 &= (uint16_t)~((uint16_t)TIM_CR2_CCPC);
??TIM_CCPreloadControl_0:
        LDRH     R2,[R0, #+4]
        MOVW     R3,#+65534
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+4]
// 1497     }
// 1498 }
??TIM_CCPreloadControl_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock36
// 1499 
// 1500 /**
// 1501   * @brief  Enables or disables the TIMx peripheral Preload register on CCR1.
// 1502   * @param  TIMx: where x can be  1 to 17 except 6 and 7 to select the TIM peripheral.
// 1503   * @param  TIM_OCPreload: new state of the TIMx peripheral Preload register
// 1504   *   This parameter can be one of the following values:
// 1505   *     @arg TIM_OCPreload_Enable
// 1506   *     @arg TIM_OCPreload_Disable
// 1507   * @retval None
// 1508   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock37 Using cfiCommon0
          CFI Function TIM_OC1PreloadConfig
          CFI NoCalls
        THUMB
// 1509 void TIM_OC1PreloadConfig(TIM_TypeDef *TIMx, uint16_t TIM_OCPreload)
// 1510 {
// 1511     uint16_t tmpccmr1 = 0;
TIM_OC1PreloadConfig:
        MOVS     R2,#+0
// 1512     /* Check the parameters */
// 1513     assert_param(IS_TIM_LIST8_PERIPH(TIMx));
// 1514     assert_param(IS_TIM_OCPRELOAD_STATE(TIM_OCPreload));
// 1515     tmpccmr1 = TIMx->CCMR1;
        LDRH     R3,[R0, #+24]
        MOVS     R2,R3
// 1516     /* Reset the OC1PE Bit */
// 1517     tmpccmr1 &= (uint16_t)~((uint16_t)TIM_CCMR1_OC1PE);
        MOVW     R3,#+65527
        ANDS     R2,R3,R2
// 1518     /* Enable or Disable the Output Compare Preload feature */
// 1519     tmpccmr1 |= TIM_OCPreload;
        ORRS     R2,R1,R2
// 1520     /* Write to TIMx CCMR1 register */
// 1521     TIMx->CCMR1 = tmpccmr1;
        STRH     R2,[R0, #+24]
// 1522 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock37
// 1523 
// 1524 /**
// 1525   * @brief  Enables or disables the TIMx peripheral Preload register on CCR2.
// 1526   * @param  TIMx: where x can be  1, 2, 3, 4, 5, 8, 9, 12 or 15 to select
// 1527   *         the TIM peripheral.
// 1528   * @param  TIM_OCPreload: new state of the TIMx peripheral Preload register
// 1529   *   This parameter can be one of the following values:
// 1530   *     @arg TIM_OCPreload_Enable
// 1531   *     @arg TIM_OCPreload_Disable
// 1532   * @retval None
// 1533   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock38 Using cfiCommon0
          CFI Function TIM_OC2PreloadConfig
          CFI NoCalls
        THUMB
// 1534 void TIM_OC2PreloadConfig(TIM_TypeDef *TIMx, uint16_t TIM_OCPreload)
// 1535 {
// 1536     uint16_t tmpccmr1 = 0;
TIM_OC2PreloadConfig:
        MOVS     R2,#+0
// 1537     /* Check the parameters */
// 1538     assert_param(IS_TIM_LIST6_PERIPH(TIMx));
// 1539     assert_param(IS_TIM_OCPRELOAD_STATE(TIM_OCPreload));
// 1540     tmpccmr1 = TIMx->CCMR1;
        LDRH     R3,[R0, #+24]
        MOVS     R2,R3
// 1541     /* Reset the OC2PE Bit */
// 1542     tmpccmr1 &= (uint16_t)~((uint16_t)TIM_CCMR1_OC2PE);
        MOVW     R3,#+63487
        ANDS     R2,R3,R2
// 1543     /* Enable or Disable the Output Compare Preload feature */
// 1544     tmpccmr1 |= (uint16_t)(TIM_OCPreload << 8);
        ORRS     R2,R2,R1, LSL #+8
// 1545     /* Write to TIMx CCMR1 register */
// 1546     TIMx->CCMR1 = tmpccmr1;
        STRH     R2,[R0, #+24]
// 1547 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock38
// 1548 
// 1549 /**
// 1550   * @brief  Enables or disables the TIMx peripheral Preload register on CCR3.
// 1551   * @param  TIMx: where x can be  1, 2, 3, 4, 5 or 8 to select the TIM peripheral.
// 1552   * @param  TIM_OCPreload: new state of the TIMx peripheral Preload register
// 1553   *   This parameter can be one of the following values:
// 1554   *     @arg TIM_OCPreload_Enable
// 1555   *     @arg TIM_OCPreload_Disable
// 1556   * @retval None
// 1557   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock39 Using cfiCommon0
          CFI Function TIM_OC3PreloadConfig
          CFI NoCalls
        THUMB
// 1558 void TIM_OC3PreloadConfig(TIM_TypeDef *TIMx, uint16_t TIM_OCPreload)
// 1559 {
// 1560     uint16_t tmpccmr2 = 0;
TIM_OC3PreloadConfig:
        MOVS     R2,#+0
// 1561     /* Check the parameters */
// 1562     assert_param(IS_TIM_LIST3_PERIPH(TIMx));
// 1563     assert_param(IS_TIM_OCPRELOAD_STATE(TIM_OCPreload));
// 1564     tmpccmr2 = TIMx->CCMR2;
        LDRH     R3,[R0, #+28]
        MOVS     R2,R3
// 1565     /* Reset the OC3PE Bit */
// 1566     tmpccmr2 &= (uint16_t)~((uint16_t)TIM_CCMR2_OC3PE);
        MOVW     R3,#+65527
        ANDS     R2,R3,R2
// 1567     /* Enable or Disable the Output Compare Preload feature */
// 1568     tmpccmr2 |= TIM_OCPreload;
        ORRS     R2,R1,R2
// 1569     /* Write to TIMx CCMR2 register */
// 1570     TIMx->CCMR2 = tmpccmr2;
        STRH     R2,[R0, #+28]
// 1571 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock39
// 1572 
// 1573 /**
// 1574   * @brief  Enables or disables the TIMx peripheral Preload register on CCR4.
// 1575   * @param  TIMx: where x can be  1, 2, 3, 4, 5 or 8 to select the TIM peripheral.
// 1576   * @param  TIM_OCPreload: new state of the TIMx peripheral Preload register
// 1577   *   This parameter can be one of the following values:
// 1578   *     @arg TIM_OCPreload_Enable
// 1579   *     @arg TIM_OCPreload_Disable
// 1580   * @retval None
// 1581   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock40 Using cfiCommon0
          CFI Function TIM_OC4PreloadConfig
          CFI NoCalls
        THUMB
// 1582 void TIM_OC4PreloadConfig(TIM_TypeDef *TIMx, uint16_t TIM_OCPreload)
// 1583 {
// 1584     uint16_t tmpccmr2 = 0;
TIM_OC4PreloadConfig:
        MOVS     R2,#+0
// 1585     /* Check the parameters */
// 1586     assert_param(IS_TIM_LIST3_PERIPH(TIMx));
// 1587     assert_param(IS_TIM_OCPRELOAD_STATE(TIM_OCPreload));
// 1588     tmpccmr2 = TIMx->CCMR2;
        LDRH     R3,[R0, #+28]
        MOVS     R2,R3
// 1589     /* Reset the OC4PE Bit */
// 1590     tmpccmr2 &= (uint16_t)~((uint16_t)TIM_CCMR2_OC4PE);
        MOVW     R3,#+63487
        ANDS     R2,R3,R2
// 1591     /* Enable or Disable the Output Compare Preload feature */
// 1592     tmpccmr2 |= (uint16_t)(TIM_OCPreload << 8);
        ORRS     R2,R2,R1, LSL #+8
// 1593     /* Write to TIMx CCMR2 register */
// 1594     TIMx->CCMR2 = tmpccmr2;
        STRH     R2,[R0, #+28]
// 1595 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock40
// 1596 
// 1597 /**
// 1598   * @brief  Configures the TIMx Output Compare 1 Fast feature.
// 1599   * @param  TIMx: where x can be  1 to 17 except 6 and 7 to select the TIM peripheral.
// 1600   * @param  TIM_OCFast: new state of the Output Compare Fast Enable Bit.
// 1601   *   This parameter can be one of the following values:
// 1602   *     @arg TIM_OCFast_Enable: TIM output compare fast enable
// 1603   *     @arg TIM_OCFast_Disable: TIM output compare fast disable
// 1604   * @retval None
// 1605   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock41 Using cfiCommon0
          CFI Function TIM_OC1FastConfig
          CFI NoCalls
        THUMB
// 1606 void TIM_OC1FastConfig(TIM_TypeDef *TIMx, uint16_t TIM_OCFast)
// 1607 {
// 1608     uint16_t tmpccmr1 = 0;
TIM_OC1FastConfig:
        MOVS     R2,#+0
// 1609     /* Check the parameters */
// 1610     assert_param(IS_TIM_LIST8_PERIPH(TIMx));
// 1611     assert_param(IS_TIM_OCFAST_STATE(TIM_OCFast));
// 1612     /* Get the TIMx CCMR1 register value */
// 1613     tmpccmr1 = TIMx->CCMR1;
        LDRH     R3,[R0, #+24]
        MOVS     R2,R3
// 1614     /* Reset the OC1FE Bit */
// 1615     tmpccmr1 &= (uint16_t)~((uint16_t)TIM_CCMR1_OC1FE);
        MOVW     R3,#+65531
        ANDS     R2,R3,R2
// 1616     /* Enable or Disable the Output Compare Fast Bit */
// 1617     tmpccmr1 |= TIM_OCFast;
        ORRS     R2,R1,R2
// 1618     /* Write to TIMx CCMR1 */
// 1619     TIMx->CCMR1 = tmpccmr1;
        STRH     R2,[R0, #+24]
// 1620 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock41
// 1621 
// 1622 /**
// 1623   * @brief  Configures the TIMx Output Compare 2 Fast feature.
// 1624   * @param  TIMx: where x can be  1, 2, 3, 4, 5, 8, 9, 12 or 15 to select
// 1625   *         the TIM peripheral.
// 1626   * @param  TIM_OCFast: new state of the Output Compare Fast Enable Bit.
// 1627   *   This parameter can be one of the following values:
// 1628   *     @arg TIM_OCFast_Enable: TIM output compare fast enable
// 1629   *     @arg TIM_OCFast_Disable: TIM output compare fast disable
// 1630   * @retval None
// 1631   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock42 Using cfiCommon0
          CFI Function TIM_OC2FastConfig
          CFI NoCalls
        THUMB
// 1632 void TIM_OC2FastConfig(TIM_TypeDef *TIMx, uint16_t TIM_OCFast)
// 1633 {
// 1634     uint16_t tmpccmr1 = 0;
TIM_OC2FastConfig:
        MOVS     R2,#+0
// 1635     /* Check the parameters */
// 1636     assert_param(IS_TIM_LIST6_PERIPH(TIMx));
// 1637     assert_param(IS_TIM_OCFAST_STATE(TIM_OCFast));
// 1638     /* Get the TIMx CCMR1 register value */
// 1639     tmpccmr1 = TIMx->CCMR1;
        LDRH     R3,[R0, #+24]
        MOVS     R2,R3
// 1640     /* Reset the OC2FE Bit */
// 1641     tmpccmr1 &= (uint16_t)~((uint16_t)TIM_CCMR1_OC2FE);
        MOVW     R3,#+64511
        ANDS     R2,R3,R2
// 1642     /* Enable or Disable the Output Compare Fast Bit */
// 1643     tmpccmr1 |= (uint16_t)(TIM_OCFast << 8);
        ORRS     R2,R2,R1, LSL #+8
// 1644     /* Write to TIMx CCMR1 */
// 1645     TIMx->CCMR1 = tmpccmr1;
        STRH     R2,[R0, #+24]
// 1646 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock42
// 1647 
// 1648 /**
// 1649   * @brief  Configures the TIMx Output Compare 3 Fast feature.
// 1650   * @param  TIMx: where x can be  1, 2, 3, 4, 5 or 8 to select the TIM peripheral.
// 1651   * @param  TIM_OCFast: new state of the Output Compare Fast Enable Bit.
// 1652   *   This parameter can be one of the following values:
// 1653   *     @arg TIM_OCFast_Enable: TIM output compare fast enable
// 1654   *     @arg TIM_OCFast_Disable: TIM output compare fast disable
// 1655   * @retval None
// 1656   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock43 Using cfiCommon0
          CFI Function TIM_OC3FastConfig
          CFI NoCalls
        THUMB
// 1657 void TIM_OC3FastConfig(TIM_TypeDef *TIMx, uint16_t TIM_OCFast)
// 1658 {
// 1659     uint16_t tmpccmr2 = 0;
TIM_OC3FastConfig:
        MOVS     R2,#+0
// 1660     /* Check the parameters */
// 1661     assert_param(IS_TIM_LIST3_PERIPH(TIMx));
// 1662     assert_param(IS_TIM_OCFAST_STATE(TIM_OCFast));
// 1663     /* Get the TIMx CCMR2 register value */
// 1664     tmpccmr2 = TIMx->CCMR2;
        LDRH     R3,[R0, #+28]
        MOVS     R2,R3
// 1665     /* Reset the OC3FE Bit */
// 1666     tmpccmr2 &= (uint16_t)~((uint16_t)TIM_CCMR2_OC3FE);
        MOVW     R3,#+65531
        ANDS     R2,R3,R2
// 1667     /* Enable or Disable the Output Compare Fast Bit */
// 1668     tmpccmr2 |= TIM_OCFast;
        ORRS     R2,R1,R2
// 1669     /* Write to TIMx CCMR2 */
// 1670     TIMx->CCMR2 = tmpccmr2;
        STRH     R2,[R0, #+28]
// 1671 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock43
// 1672 
// 1673 /**
// 1674   * @brief  Configures the TIMx Output Compare 4 Fast feature.
// 1675   * @param  TIMx: where x can be  1, 2, 3, 4, 5 or 8 to select the TIM peripheral.
// 1676   * @param  TIM_OCFast: new state of the Output Compare Fast Enable Bit.
// 1677   *   This parameter can be one of the following values:
// 1678   *     @arg TIM_OCFast_Enable: TIM output compare fast enable
// 1679   *     @arg TIM_OCFast_Disable: TIM output compare fast disable
// 1680   * @retval None
// 1681   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock44 Using cfiCommon0
          CFI Function TIM_OC4FastConfig
          CFI NoCalls
        THUMB
// 1682 void TIM_OC4FastConfig(TIM_TypeDef *TIMx, uint16_t TIM_OCFast)
// 1683 {
// 1684     uint16_t tmpccmr2 = 0;
TIM_OC4FastConfig:
        MOVS     R2,#+0
// 1685     /* Check the parameters */
// 1686     assert_param(IS_TIM_LIST3_PERIPH(TIMx));
// 1687     assert_param(IS_TIM_OCFAST_STATE(TIM_OCFast));
// 1688     /* Get the TIMx CCMR2 register value */
// 1689     tmpccmr2 = TIMx->CCMR2;
        LDRH     R3,[R0, #+28]
        MOVS     R2,R3
// 1690     /* Reset the OC4FE Bit */
// 1691     tmpccmr2 &= (uint16_t)~((uint16_t)TIM_CCMR2_OC4FE);
        MOVW     R3,#+64511
        ANDS     R2,R3,R2
// 1692     /* Enable or Disable the Output Compare Fast Bit */
// 1693     tmpccmr2 |= (uint16_t)(TIM_OCFast << 8);
        ORRS     R2,R2,R1, LSL #+8
// 1694     /* Write to TIMx CCMR2 */
// 1695     TIMx->CCMR2 = tmpccmr2;
        STRH     R2,[R0, #+28]
// 1696 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock44
// 1697 
// 1698 /**
// 1699   * @brief  Clears or safeguards the OCREF1 signal on an external event
// 1700   * @param  TIMx: where x can be  1, 2, 3, 4, 5 or 8 to select the TIM peripheral.
// 1701   * @param  TIM_OCClear: new state of the Output Compare Clear Enable Bit.
// 1702   *   This parameter can be one of the following values:
// 1703   *     @arg TIM_OCClear_Enable: TIM Output clear enable
// 1704   *     @arg TIM_OCClear_Disable: TIM Output clear disable
// 1705   * @retval None
// 1706   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock45 Using cfiCommon0
          CFI Function TIM_ClearOC1Ref
          CFI NoCalls
        THUMB
// 1707 void TIM_ClearOC1Ref(TIM_TypeDef *TIMx, uint16_t TIM_OCClear)
// 1708 {
// 1709     uint16_t tmpccmr1 = 0;
TIM_ClearOC1Ref:
        MOVS     R2,#+0
// 1710     /* Check the parameters */
// 1711     assert_param(IS_TIM_LIST3_PERIPH(TIMx));
// 1712     assert_param(IS_TIM_OCCLEAR_STATE(TIM_OCClear));
// 1713 
// 1714     tmpccmr1 = TIMx->CCMR1;
        LDRH     R3,[R0, #+24]
        MOVS     R2,R3
// 1715 
// 1716     /* Reset the OC1CE Bit */
// 1717     tmpccmr1 &= (uint16_t)~((uint16_t)TIM_CCMR1_OC1CE);
        MOVW     R3,#+65407
        ANDS     R2,R3,R2
// 1718     /* Enable or Disable the Output Compare Clear Bit */
// 1719     tmpccmr1 |= TIM_OCClear;
        ORRS     R2,R1,R2
// 1720     /* Write to TIMx CCMR1 register */
// 1721     TIMx->CCMR1 = tmpccmr1;
        STRH     R2,[R0, #+24]
// 1722 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock45
// 1723 
// 1724 /**
// 1725   * @brief  Clears or safeguards the OCREF2 signal on an external event
// 1726   * @param  TIMx: where x can be  1, 2, 3, 4, 5 or 8 to select the TIM peripheral.
// 1727   * @param  TIM_OCClear: new state of the Output Compare Clear Enable Bit.
// 1728   *   This parameter can be one of the following values:
// 1729   *     @arg TIM_OCClear_Enable: TIM Output clear enable
// 1730   *     @arg TIM_OCClear_Disable: TIM Output clear disable
// 1731   * @retval None
// 1732   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock46 Using cfiCommon0
          CFI Function TIM_ClearOC2Ref
          CFI NoCalls
        THUMB
// 1733 void TIM_ClearOC2Ref(TIM_TypeDef *TIMx, uint16_t TIM_OCClear)
// 1734 {
// 1735     uint16_t tmpccmr1 = 0;
TIM_ClearOC2Ref:
        MOVS     R2,#+0
// 1736     /* Check the parameters */
// 1737     assert_param(IS_TIM_LIST3_PERIPH(TIMx));
// 1738     assert_param(IS_TIM_OCCLEAR_STATE(TIM_OCClear));
// 1739     tmpccmr1 = TIMx->CCMR1;
        LDRH     R3,[R0, #+24]
        MOVS     R2,R3
// 1740     /* Reset the OC2CE Bit */
// 1741     tmpccmr1 &= (uint16_t)~((uint16_t)TIM_CCMR1_OC2CE);
        LSLS     R2,R2,#+17       ;; ZeroExtS R2,R2,#+17,#+17
        LSRS     R2,R2,#+17
// 1742     /* Enable or Disable the Output Compare Clear Bit */
// 1743     tmpccmr1 |= (uint16_t)(TIM_OCClear << 8);
        ORRS     R2,R2,R1, LSL #+8
// 1744     /* Write to TIMx CCMR1 register */
// 1745     TIMx->CCMR1 = tmpccmr1;
        STRH     R2,[R0, #+24]
// 1746 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock46
// 1747 
// 1748 /**
// 1749   * @brief  Clears or safeguards the OCREF3 signal on an external event
// 1750   * @param  TIMx: where x can be  1, 2, 3, 4, 5 or 8 to select the TIM peripheral.
// 1751   * @param  TIM_OCClear: new state of the Output Compare Clear Enable Bit.
// 1752   *   This parameter can be one of the following values:
// 1753   *     @arg TIM_OCClear_Enable: TIM Output clear enable
// 1754   *     @arg TIM_OCClear_Disable: TIM Output clear disable
// 1755   * @retval None
// 1756   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock47 Using cfiCommon0
          CFI Function TIM_ClearOC3Ref
          CFI NoCalls
        THUMB
// 1757 void TIM_ClearOC3Ref(TIM_TypeDef *TIMx, uint16_t TIM_OCClear)
// 1758 {
// 1759     uint16_t tmpccmr2 = 0;
TIM_ClearOC3Ref:
        MOVS     R2,#+0
// 1760     /* Check the parameters */
// 1761     assert_param(IS_TIM_LIST3_PERIPH(TIMx));
// 1762     assert_param(IS_TIM_OCCLEAR_STATE(TIM_OCClear));
// 1763     tmpccmr2 = TIMx->CCMR2;
        LDRH     R3,[R0, #+28]
        MOVS     R2,R3
// 1764     /* Reset the OC3CE Bit */
// 1765     tmpccmr2 &= (uint16_t)~((uint16_t)TIM_CCMR2_OC3CE);
        MOVW     R3,#+65407
        ANDS     R2,R3,R2
// 1766     /* Enable or Disable the Output Compare Clear Bit */
// 1767     tmpccmr2 |= TIM_OCClear;
        ORRS     R2,R1,R2
// 1768     /* Write to TIMx CCMR2 register */
// 1769     TIMx->CCMR2 = tmpccmr2;
        STRH     R2,[R0, #+28]
// 1770 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock47
// 1771 
// 1772 /**
// 1773   * @brief  Clears or safeguards the OCREF4 signal on an external event
// 1774   * @param  TIMx: where x can be  1, 2, 3, 4, 5 or 8 to select the TIM peripheral.
// 1775   * @param  TIM_OCClear: new state of the Output Compare Clear Enable Bit.
// 1776   *   This parameter can be one of the following values:
// 1777   *     @arg TIM_OCClear_Enable: TIM Output clear enable
// 1778   *     @arg TIM_OCClear_Disable: TIM Output clear disable
// 1779   * @retval None
// 1780   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock48 Using cfiCommon0
          CFI Function TIM_ClearOC4Ref
          CFI NoCalls
        THUMB
// 1781 void TIM_ClearOC4Ref(TIM_TypeDef *TIMx, uint16_t TIM_OCClear)
// 1782 {
// 1783     uint16_t tmpccmr2 = 0;
TIM_ClearOC4Ref:
        MOVS     R2,#+0
// 1784     /* Check the parameters */
// 1785     assert_param(IS_TIM_LIST3_PERIPH(TIMx));
// 1786     assert_param(IS_TIM_OCCLEAR_STATE(TIM_OCClear));
// 1787     tmpccmr2 = TIMx->CCMR2;
        LDRH     R3,[R0, #+28]
        MOVS     R2,R3
// 1788     /* Reset the OC4CE Bit */
// 1789     tmpccmr2 &= (uint16_t)~((uint16_t)TIM_CCMR2_OC4CE);
        LSLS     R2,R2,#+17       ;; ZeroExtS R2,R2,#+17,#+17
        LSRS     R2,R2,#+17
// 1790     /* Enable or Disable the Output Compare Clear Bit */
// 1791     tmpccmr2 |= (uint16_t)(TIM_OCClear << 8);
        ORRS     R2,R2,R1, LSL #+8
// 1792     /* Write to TIMx CCMR2 register */
// 1793     TIMx->CCMR2 = tmpccmr2;
        STRH     R2,[R0, #+28]
// 1794 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock48
// 1795 
// 1796 /**
// 1797   * @brief  Configures the TIMx channel 1 polarity.
// 1798   * @param  TIMx: where x can be 1 to 17 except 6 and 7 to select the TIM peripheral.
// 1799   * @param  TIM_OCPolarity: specifies the OC1 Polarity
// 1800   *   This parameter can be one of the following values:
// 1801   *     @arg TIM_OCPolarity_High: Output Compare active high
// 1802   *     @arg TIM_OCPolarity_Low: Output Compare active low
// 1803   * @retval None
// 1804   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock49 Using cfiCommon0
          CFI Function TIM_OC1PolarityConfig
          CFI NoCalls
        THUMB
// 1805 void TIM_OC1PolarityConfig(TIM_TypeDef *TIMx, uint16_t TIM_OCPolarity)
// 1806 {
// 1807     uint16_t tmpccer = 0;
TIM_OC1PolarityConfig:
        MOVS     R2,#+0
// 1808     /* Check the parameters */
// 1809     assert_param(IS_TIM_LIST8_PERIPH(TIMx));
// 1810     assert_param(IS_TIM_OC_POLARITY(TIM_OCPolarity));
// 1811     tmpccer = TIMx->CCER;
        LDRH     R3,[R0, #+32]
        MOVS     R2,R3
// 1812     /* Set or Reset the CC1P Bit */
// 1813     tmpccer &= (uint16_t)~((uint16_t)TIM_CCER_CC1P);
        MOVW     R3,#+65533
        ANDS     R2,R3,R2
// 1814     tmpccer |= TIM_OCPolarity;
        ORRS     R2,R1,R2
// 1815     /* Write to TIMx CCER register */
// 1816     TIMx->CCER = tmpccer;
        STRH     R2,[R0, #+32]
// 1817 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock49
// 1818 
// 1819 /**
// 1820   * @brief  Configures the TIMx Channel 1N polarity.
// 1821   * @param  TIMx: where x can be 1, 8, 15, 16 or 17 to select the TIM peripheral.
// 1822   * @param  TIM_OCNPolarity: specifies the OC1N Polarity
// 1823   *   This parameter can be one of the following values:
// 1824   *     @arg TIM_OCNPolarity_High: Output Compare active high
// 1825   *     @arg TIM_OCNPolarity_Low: Output Compare active low
// 1826   * @retval None
// 1827   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock50 Using cfiCommon0
          CFI Function TIM_OC1NPolarityConfig
          CFI NoCalls
        THUMB
// 1828 void TIM_OC1NPolarityConfig(TIM_TypeDef *TIMx, uint16_t TIM_OCNPolarity)
// 1829 {
// 1830     uint16_t tmpccer = 0;
TIM_OC1NPolarityConfig:
        MOVS     R2,#+0
// 1831     /* Check the parameters */
// 1832     assert_param(IS_TIM_LIST2_PERIPH(TIMx));
// 1833     assert_param(IS_TIM_OCN_POLARITY(TIM_OCNPolarity));
// 1834 
// 1835     tmpccer = TIMx->CCER;
        LDRH     R3,[R0, #+32]
        MOVS     R2,R3
// 1836     /* Set or Reset the CC1NP Bit */
// 1837     tmpccer &= (uint16_t)~((uint16_t)TIM_CCER_CC1NP);
        MOVW     R3,#+65527
        ANDS     R2,R3,R2
// 1838     tmpccer |= TIM_OCNPolarity;
        ORRS     R2,R1,R2
// 1839     /* Write to TIMx CCER register */
// 1840     TIMx->CCER = tmpccer;
        STRH     R2,[R0, #+32]
// 1841 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock50
// 1842 
// 1843 /**
// 1844   * @brief  Configures the TIMx channel 2 polarity.
// 1845   * @param  TIMx: where x can be 1, 2, 3, 4, 5, 8, 9, 12 or 15 to select the TIM peripheral.
// 1846   * @param  TIM_OCPolarity: specifies the OC2 Polarity
// 1847   *   This parameter can be one of the following values:
// 1848   *     @arg TIM_OCPolarity_High: Output Compare active high
// 1849   *     @arg TIM_OCPolarity_Low: Output Compare active low
// 1850   * @retval None
// 1851   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock51 Using cfiCommon0
          CFI Function TIM_OC2PolarityConfig
          CFI NoCalls
        THUMB
// 1852 void TIM_OC2PolarityConfig(TIM_TypeDef *TIMx, uint16_t TIM_OCPolarity)
// 1853 {
// 1854     uint16_t tmpccer = 0;
TIM_OC2PolarityConfig:
        MOVS     R2,#+0
// 1855     /* Check the parameters */
// 1856     assert_param(IS_TIM_LIST6_PERIPH(TIMx));
// 1857     assert_param(IS_TIM_OC_POLARITY(TIM_OCPolarity));
// 1858     tmpccer = TIMx->CCER;
        LDRH     R3,[R0, #+32]
        MOVS     R2,R3
// 1859     /* Set or Reset the CC2P Bit */
// 1860     tmpccer &= (uint16_t)~((uint16_t)TIM_CCER_CC2P);
        MOVW     R3,#+65503
        ANDS     R2,R3,R2
// 1861     tmpccer |= (uint16_t)(TIM_OCPolarity << 4);
        ORRS     R2,R2,R1, LSL #+4
// 1862     /* Write to TIMx CCER register */
// 1863     TIMx->CCER = tmpccer;
        STRH     R2,[R0, #+32]
// 1864 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock51
// 1865 
// 1866 /**
// 1867   * @brief  Configures the TIMx Channel 2N polarity.
// 1868   * @param  TIMx: where x can be 1 or 8 to select the TIM peripheral.
// 1869   * @param  TIM_OCNPolarity: specifies the OC2N Polarity
// 1870   *   This parameter can be one of the following values:
// 1871   *     @arg TIM_OCNPolarity_High: Output Compare active high
// 1872   *     @arg TIM_OCNPolarity_Low: Output Compare active low
// 1873   * @retval None
// 1874   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock52 Using cfiCommon0
          CFI Function TIM_OC2NPolarityConfig
          CFI NoCalls
        THUMB
// 1875 void TIM_OC2NPolarityConfig(TIM_TypeDef *TIMx, uint16_t TIM_OCNPolarity)
// 1876 {
// 1877     uint16_t tmpccer = 0;
TIM_OC2NPolarityConfig:
        MOVS     R2,#+0
// 1878     /* Check the parameters */
// 1879     assert_param(IS_TIM_LIST1_PERIPH(TIMx));
// 1880     assert_param(IS_TIM_OCN_POLARITY(TIM_OCNPolarity));
// 1881 
// 1882     tmpccer = TIMx->CCER;
        LDRH     R3,[R0, #+32]
        MOVS     R2,R3
// 1883     /* Set or Reset the CC2NP Bit */
// 1884     tmpccer &= (uint16_t)~((uint16_t)TIM_CCER_CC2NP);
        MOVW     R3,#+65407
        ANDS     R2,R3,R2
// 1885     tmpccer |= (uint16_t)(TIM_OCNPolarity << 4);
        ORRS     R2,R2,R1, LSL #+4
// 1886     /* Write to TIMx CCER register */
// 1887     TIMx->CCER = tmpccer;
        STRH     R2,[R0, #+32]
// 1888 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock52
// 1889 
// 1890 /**
// 1891   * @brief  Configures the TIMx channel 3 polarity.
// 1892   * @param  TIMx: where x can be 1, 2, 3, 4, 5 or 8 to select the TIM peripheral.
// 1893   * @param  TIM_OCPolarity: specifies the OC3 Polarity
// 1894   *   This parameter can be one of the following values:
// 1895   *     @arg TIM_OCPolarity_High: Output Compare active high
// 1896   *     @arg TIM_OCPolarity_Low: Output Compare active low
// 1897   * @retval None
// 1898   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock53 Using cfiCommon0
          CFI Function TIM_OC3PolarityConfig
          CFI NoCalls
        THUMB
// 1899 void TIM_OC3PolarityConfig(TIM_TypeDef *TIMx, uint16_t TIM_OCPolarity)
// 1900 {
// 1901     uint16_t tmpccer = 0;
TIM_OC3PolarityConfig:
        MOVS     R2,#+0
// 1902     /* Check the parameters */
// 1903     assert_param(IS_TIM_LIST3_PERIPH(TIMx));
// 1904     assert_param(IS_TIM_OC_POLARITY(TIM_OCPolarity));
// 1905     tmpccer = TIMx->CCER;
        LDRH     R3,[R0, #+32]
        MOVS     R2,R3
// 1906     /* Set or Reset the CC3P Bit */
// 1907     tmpccer &= (uint16_t)~((uint16_t)TIM_CCER_CC3P);
        MOVW     R3,#+65023
        ANDS     R2,R3,R2
// 1908     tmpccer |= (uint16_t)(TIM_OCPolarity << 8);
        ORRS     R2,R2,R1, LSL #+8
// 1909     /* Write to TIMx CCER register */
// 1910     TIMx->CCER = tmpccer;
        STRH     R2,[R0, #+32]
// 1911 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock53
// 1912 
// 1913 /**
// 1914   * @brief  Configures the TIMx Channel 3N polarity.
// 1915   * @param  TIMx: where x can be 1 or 8 to select the TIM peripheral.
// 1916   * @param  TIM_OCNPolarity: specifies the OC3N Polarity
// 1917   *   This parameter can be one of the following values:
// 1918   *     @arg TIM_OCNPolarity_High: Output Compare active high
// 1919   *     @arg TIM_OCNPolarity_Low: Output Compare active low
// 1920   * @retval None
// 1921   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock54 Using cfiCommon0
          CFI Function TIM_OC3NPolarityConfig
          CFI NoCalls
        THUMB
// 1922 void TIM_OC3NPolarityConfig(TIM_TypeDef *TIMx, uint16_t TIM_OCNPolarity)
// 1923 {
// 1924     uint16_t tmpccer = 0;
TIM_OC3NPolarityConfig:
        MOVS     R2,#+0
// 1925 
// 1926     /* Check the parameters */
// 1927     assert_param(IS_TIM_LIST1_PERIPH(TIMx));
// 1928     assert_param(IS_TIM_OCN_POLARITY(TIM_OCNPolarity));
// 1929 
// 1930     tmpccer = TIMx->CCER;
        LDRH     R3,[R0, #+32]
        MOVS     R2,R3
// 1931     /* Set or Reset the CC3NP Bit */
// 1932     tmpccer &= (uint16_t)~((uint16_t)TIM_CCER_CC3NP);
        MOVW     R3,#+63487
        ANDS     R2,R3,R2
// 1933     tmpccer |= (uint16_t)(TIM_OCNPolarity << 8);
        ORRS     R2,R2,R1, LSL #+8
// 1934     /* Write to TIMx CCER register */
// 1935     TIMx->CCER = tmpccer;
        STRH     R2,[R0, #+32]
// 1936 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock54
// 1937 
// 1938 /**
// 1939   * @brief  Configures the TIMx channel 4 polarity.
// 1940   * @param  TIMx: where x can be 1, 2, 3, 4, 5 or 8 to select the TIM peripheral.
// 1941   * @param  TIM_OCPolarity: specifies the OC4 Polarity
// 1942   *   This parameter can be one of the following values:
// 1943   *     @arg TIM_OCPolarity_High: Output Compare active high
// 1944   *     @arg TIM_OCPolarity_Low: Output Compare active low
// 1945   * @retval None
// 1946   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock55 Using cfiCommon0
          CFI Function TIM_OC4PolarityConfig
          CFI NoCalls
        THUMB
// 1947 void TIM_OC4PolarityConfig(TIM_TypeDef *TIMx, uint16_t TIM_OCPolarity)
// 1948 {
// 1949     uint16_t tmpccer = 0;
TIM_OC4PolarityConfig:
        MOVS     R2,#+0
// 1950     /* Check the parameters */
// 1951     assert_param(IS_TIM_LIST3_PERIPH(TIMx));
// 1952     assert_param(IS_TIM_OC_POLARITY(TIM_OCPolarity));
// 1953     tmpccer = TIMx->CCER;
        LDRH     R3,[R0, #+32]
        MOVS     R2,R3
// 1954     /* Set or Reset the CC4P Bit */
// 1955     tmpccer &= (uint16_t)~((uint16_t)TIM_CCER_CC4P);
        MOVW     R3,#+57343
        ANDS     R2,R3,R2
// 1956     tmpccer |= (uint16_t)(TIM_OCPolarity << 12);
        ORRS     R2,R2,R1, LSL #+12
// 1957     /* Write to TIMx CCER register */
// 1958     TIMx->CCER = tmpccer;
        STRH     R2,[R0, #+32]
// 1959 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock55
// 1960 
// 1961 /**
// 1962   * @brief  Enables or disables the TIM Capture Compare Channel x.
// 1963   * @param  TIMx: where x can be 1 to 17 except 6 and 7 to select the TIM peripheral.
// 1964   * @param  TIM_Channel: specifies the TIM Channel
// 1965   *   This parameter can be one of the following values:
// 1966   *     @arg TIM_Channel_1: TIM Channel 1
// 1967   *     @arg TIM_Channel_2: TIM Channel 2
// 1968   *     @arg TIM_Channel_3: TIM Channel 3
// 1969   *     @arg TIM_Channel_4: TIM Channel 4
// 1970   * @param  TIM_CCx: specifies the TIM Channel CCxE bit new state.
// 1971   *   This parameter can be: TIM_CCx_Enable or TIM_CCx_Disable.
// 1972   * @retval None
// 1973   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock56 Using cfiCommon0
          CFI Function TIM_CCxCmd
          CFI NoCalls
        THUMB
// 1974 void TIM_CCxCmd(TIM_TypeDef *TIMx, uint16_t TIM_Channel, uint16_t TIM_CCx)
// 1975 {
TIM_CCxCmd:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
// 1976     uint16_t tmp = 0;
        MOVS     R3,#+0
// 1977 
// 1978     /* Check the parameters */
// 1979     assert_param(IS_TIM_LIST8_PERIPH(TIMx));
// 1980     assert_param(IS_TIM_CHANNEL(TIM_Channel));
// 1981     assert_param(IS_TIM_CCX(TIM_CCx));
// 1982 
// 1983     tmp = CCER_CCE_Set << TIM_Channel;
        MOVS     R4,#+1
        LSLS     R4,R4,R1
        MOVS     R3,R4
// 1984 
// 1985     /* Reset the CCxE Bit */
// 1986     TIMx->CCER &= (uint16_t)~ tmp;
        LDRH     R4,[R0, #+32]
        BICS     R4,R4,R3
        STRH     R4,[R0, #+32]
// 1987 
// 1988     /* Set or reset the CCxE Bit */
// 1989     TIMx->CCER |=  (uint16_t)(TIM_CCx << TIM_Channel);
        LDRH     R4,[R0, #+32]
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LSLS     R5,R2,R1
        ORRS     R4,R5,R4
        STRH     R4,[R0, #+32]
// 1990 }
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock56
// 1991 
// 1992 /**
// 1993   * @brief  Enables or disables the TIM Capture Compare Channel xN.
// 1994   * @param  TIMx: where x can be 1, 8, 15, 16 or 17 to select the TIM peripheral.
// 1995   * @param  TIM_Channel: specifies the TIM Channel
// 1996   *   This parameter can be one of the following values:
// 1997   *     @arg TIM_Channel_1: TIM Channel 1
// 1998   *     @arg TIM_Channel_2: TIM Channel 2
// 1999   *     @arg TIM_Channel_3: TIM Channel 3
// 2000   * @param  TIM_CCxN: specifies the TIM Channel CCxNE bit new state.
// 2001   *   This parameter can be: TIM_CCxN_Enable or TIM_CCxN_Disable.
// 2002   * @retval None
// 2003   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock57 Using cfiCommon0
          CFI Function TIM_CCxNCmd
          CFI NoCalls
        THUMB
// 2004 void TIM_CCxNCmd(TIM_TypeDef *TIMx, uint16_t TIM_Channel, uint16_t TIM_CCxN)
// 2005 {
TIM_CCxNCmd:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
// 2006     uint16_t tmp = 0;
        MOVS     R3,#+0
// 2007 
// 2008     /* Check the parameters */
// 2009     assert_param(IS_TIM_LIST2_PERIPH(TIMx));
// 2010     assert_param(IS_TIM_COMPLEMENTARY_CHANNEL(TIM_Channel));
// 2011     assert_param(IS_TIM_CCXN(TIM_CCxN));
// 2012 
// 2013     tmp = CCER_CCNE_Set << TIM_Channel;
        MOVS     R4,#+4
        LSLS     R4,R4,R1
        MOVS     R3,R4
// 2014 
// 2015     /* Reset the CCxNE Bit */
// 2016     TIMx->CCER &= (uint16_t) ~tmp;
        LDRH     R4,[R0, #+32]
        BICS     R4,R4,R3
        STRH     R4,[R0, #+32]
// 2017 
// 2018     /* Set or reset the CCxNE Bit */
// 2019     TIMx->CCER |=  (uint16_t)(TIM_CCxN << TIM_Channel);
        LDRH     R4,[R0, #+32]
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        LSLS     R5,R2,R1
        ORRS     R4,R5,R4
        STRH     R4,[R0, #+32]
// 2020 }
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock57
// 2021 
// 2022 /**
// 2023   * @brief  Selects the TIM Output Compare Mode.
// 2024   * @note   This function disables the selected channel before changing the Output
// 2025   *         Compare Mode.
// 2026   *         User has to enable this channel using TIM_CCxCmd and TIM_CCxNCmd functions.
// 2027   * @param  TIMx: where x can be 1 to 17 except 6 and 7 to select the TIM peripheral.
// 2028   * @param  TIM_Channel: specifies the TIM Channel
// 2029   *   This parameter can be one of the following values:
// 2030   *     @arg TIM_Channel_1: TIM Channel 1
// 2031   *     @arg TIM_Channel_2: TIM Channel 2
// 2032   *     @arg TIM_Channel_3: TIM Channel 3
// 2033   *     @arg TIM_Channel_4: TIM Channel 4
// 2034   * @param  TIM_OCMode: specifies the TIM Output Compare Mode.
// 2035   *   This parameter can be one of the following values:
// 2036   *     @arg TIM_OCMode_Timing
// 2037   *     @arg TIM_OCMode_Active
// 2038   *     @arg TIM_OCMode_Toggle
// 2039   *     @arg TIM_OCMode_PWM1
// 2040   *     @arg TIM_OCMode_PWM2
// 2041   *     @arg TIM_ForcedAction_Active
// 2042   *     @arg TIM_ForcedAction_InActive
// 2043   * @retval None
// 2044   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock58 Using cfiCommon0
          CFI Function TIM_SelectOCxM
          CFI NoCalls
        THUMB
// 2045 void TIM_SelectOCxM(TIM_TypeDef *TIMx, uint16_t TIM_Channel, uint16_t TIM_OCMode)
// 2046 {
TIM_SelectOCxM:
        PUSH     {R4-R6}
          CFI R6 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
// 2047     uint32_t tmp = 0;
        MOVS     R4,#+0
// 2048     uint16_t tmp1 = 0;
        MOVS     R3,#+0
// 2049 
// 2050     /* Check the parameters */
// 2051     assert_param(IS_TIM_LIST8_PERIPH(TIMx));
// 2052     assert_param(IS_TIM_CHANNEL(TIM_Channel));
// 2053     assert_param(IS_TIM_OCM(TIM_OCMode));
// 2054 
// 2055     tmp = (uint32_t) TIMx;
        MOVS     R4,R0
// 2056     tmp += CCMR_Offset;
        ADDS     R4,R4,#+24
// 2057 
// 2058     tmp1 = CCER_CCE_Set << (uint16_t)TIM_Channel;
        MOVS     R5,#+1
        LSLS     R5,R5,R1
        MOVS     R3,R5
// 2059 
// 2060     /* Disable the Channel: Reset the CCxE Bit */
// 2061     TIMx->CCER &= (uint16_t) ~tmp1;
        LDRH     R5,[R0, #+32]
        BICS     R5,R5,R3
        STRH     R5,[R0, #+32]
// 2062 
// 2063     if((TIM_Channel == TIM_Channel_1) || (TIM_Channel == TIM_Channel_3))
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+0
        BEQ.N    ??TIM_SelectOCxM_0
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+8
        BNE.N    ??TIM_SelectOCxM_1
// 2064     {
// 2065         tmp += (TIM_Channel >> 1);
??TIM_SelectOCxM_0:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LSRS     R5,R1,#+1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        ADDS     R4,R5,R4
// 2066 
// 2067         /* Reset the OCxM bits in the CCMRx register */
// 2068         *(__IO uint32_t *) tmp &= (uint32_t)~((uint32_t)TIM_CCMR1_OC1M);
        LDR      R5,[R4, #+0]
        BICS     R5,R5,#0x70
        STR      R5,[R4, #+0]
// 2069 
// 2070         /* Configure the OCxM bits in the CCMRx register */
// 2071         *(__IO uint32_t *) tmp |= TIM_OCMode;
        LDR      R5,[R4, #+0]
        UXTH     R2,R2            ;; ZeroExt  R2,R2,#+16,#+16
        ORRS     R5,R2,R5
        STR      R5,[R4, #+0]
        B.N      ??TIM_SelectOCxM_2
// 2072     }
// 2073     else
// 2074     {
// 2075         tmp += (uint16_t)(TIM_Channel - (uint16_t)4) >> (uint16_t)1;
??TIM_SelectOCxM_1:
        SUBS     R5,R1,#+4
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        LSRS     R5,R5,#+1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        ADDS     R4,R5,R4
// 2076 
// 2077         /* Reset the OCxM bits in the CCMRx register */
// 2078         *(__IO uint32_t *) tmp &= (uint32_t)~((uint32_t)TIM_CCMR1_OC2M);
        LDR      R5,[R4, #+0]
        BICS     R5,R5,#0x7000
        STR      R5,[R4, #+0]
// 2079 
// 2080         /* Configure the OCxM bits in the CCMRx register */
// 2081         *(__IO uint32_t *) tmp |= (uint16_t)(TIM_OCMode << 8);
        LDR      R5,[R4, #+0]
        LSLS     R6,R2,#+8
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        ORRS     R5,R6,R5
        STR      R5,[R4, #+0]
// 2082     }
// 2083 }
??TIM_SelectOCxM_2:
        POP      {R4-R6}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock58
// 2084 
// 2085 /**
// 2086   * @brief  Enables or Disables the TIMx Update event.
// 2087   * @param  TIMx: where x can be 1 to 17 to select the TIM peripheral.
// 2088   * @param  NewState: new state of the TIMx UDIS bit
// 2089   *   This parameter can be: ENABLE or DISABLE.
// 2090   * @retval None
// 2091   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock59 Using cfiCommon0
          CFI Function TIM_UpdateDisableConfig
          CFI NoCalls
        THUMB
// 2092 void TIM_UpdateDisableConfig(TIM_TypeDef *TIMx, FunctionalState NewState)
// 2093 {
// 2094     /* Check the parameters */
// 2095     assert_param(IS_TIM_ALL_PERIPH(TIMx));
// 2096     assert_param(IS_FUNCTIONAL_STATE(NewState));
// 2097     if (NewState != DISABLE)
TIM_UpdateDisableConfig:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??TIM_UpdateDisableConfig_0
// 2098     {
// 2099         /* Set the Update Disable Bit */
// 2100         TIMx->CR1 |= TIM_CR1_UDIS;
        LDRH     R2,[R0, #+0]
        ORRS     R2,R2,#0x2
        STRH     R2,[R0, #+0]
        B.N      ??TIM_UpdateDisableConfig_1
// 2101     }
// 2102     else
// 2103     {
// 2104         /* Reset the Update Disable Bit */
// 2105         TIMx->CR1 &= (uint16_t)~((uint16_t)TIM_CR1_UDIS);
??TIM_UpdateDisableConfig_0:
        LDRH     R2,[R0, #+0]
        MOVW     R3,#+65533
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+0]
// 2106     }
// 2107 }
??TIM_UpdateDisableConfig_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock59
// 2108 
// 2109 /**
// 2110   * @brief  Configures the TIMx Update Request Interrupt source.
// 2111   * @param  TIMx: where x can be 1 to 17 to select the TIM peripheral.
// 2112   * @param  TIM_UpdateSource: specifies the Update source.
// 2113   *   This parameter can be one of the following values:
// 2114   *     @arg TIM_UpdateSource_Regular: Source of update is the counter overflow/underflow
// 2115                                        or the setting of UG bit, or an update generation
// 2116                                        through the slave mode controller.
// 2117   *     @arg TIM_UpdateSource_Global: Source of update is counter overflow/underflow.
// 2118   * @retval None
// 2119   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock60 Using cfiCommon0
          CFI Function TIM_UpdateRequestConfig
          CFI NoCalls
        THUMB
// 2120 void TIM_UpdateRequestConfig(TIM_TypeDef *TIMx, uint16_t TIM_UpdateSource)
// 2121 {
// 2122     /* Check the parameters */
// 2123     assert_param(IS_TIM_ALL_PERIPH(TIMx));
// 2124     assert_param(IS_TIM_UPDATE_SOURCE(TIM_UpdateSource));
// 2125     if (TIM_UpdateSource != TIM_UpdateSource_Global)
TIM_UpdateRequestConfig:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+0
        BEQ.N    ??TIM_UpdateRequestConfig_0
// 2126     {
// 2127         /* Set the URS Bit */
// 2128         TIMx->CR1 |= TIM_CR1_URS;
        LDRH     R2,[R0, #+0]
        ORRS     R2,R2,#0x4
        STRH     R2,[R0, #+0]
        B.N      ??TIM_UpdateRequestConfig_1
// 2129     }
// 2130     else
// 2131     {
// 2132         /* Reset the URS Bit */
// 2133         TIMx->CR1 &= (uint16_t)~((uint16_t)TIM_CR1_URS);
??TIM_UpdateRequestConfig_0:
        LDRH     R2,[R0, #+0]
        MOVW     R3,#+65531
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+0]
// 2134     }
// 2135 }
??TIM_UpdateRequestConfig_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock60
// 2136 
// 2137 /**
// 2138   * @brief  Enables or disables the TIMx's Hall sensor interface.
// 2139   * @param  TIMx: where x can be 1, 2, 3, 4, 5 or 8 to select the TIM peripheral.
// 2140   * @param  NewState: new state of the TIMx Hall sensor interface.
// 2141   *   This parameter can be: ENABLE or DISABLE.
// 2142   * @retval None
// 2143   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock61 Using cfiCommon0
          CFI Function TIM_SelectHallSensor
          CFI NoCalls
        THUMB
// 2144 void TIM_SelectHallSensor(TIM_TypeDef *TIMx, FunctionalState NewState)
// 2145 {
// 2146     /* Check the parameters */
// 2147     assert_param(IS_TIM_LIST6_PERIPH(TIMx));
// 2148     assert_param(IS_FUNCTIONAL_STATE(NewState));
// 2149     if (NewState != DISABLE)
TIM_SelectHallSensor:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??TIM_SelectHallSensor_0
// 2150     {
// 2151         /* Set the TI1S Bit */
// 2152         TIMx->CR2 |= TIM_CR2_TI1S;
        LDRH     R2,[R0, #+4]
        ORRS     R2,R2,#0x80
        STRH     R2,[R0, #+4]
        B.N      ??TIM_SelectHallSensor_1
// 2153     }
// 2154     else
// 2155     {
// 2156         /* Reset the TI1S Bit */
// 2157         TIMx->CR2 &= (uint16_t)~((uint16_t)TIM_CR2_TI1S);
??TIM_SelectHallSensor_0:
        LDRH     R2,[R0, #+4]
        MOVW     R3,#+65407
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+4]
// 2158     }
// 2159 }
??TIM_SelectHallSensor_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock61
// 2160 
// 2161 /**
// 2162   * @brief  Selects the TIMx's One Pulse Mode.
// 2163   * @param  TIMx: where x can be 1 to 17 to select the TIM peripheral.
// 2164   * @param  TIM_OPMode: specifies the OPM Mode to be used.
// 2165   *   This parameter can be one of the following values:
// 2166   *     @arg TIM_OPMode_Single
// 2167   *     @arg TIM_OPMode_Repetitive
// 2168   * @retval None
// 2169   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock62 Using cfiCommon0
          CFI Function TIM_SelectOnePulseMode
          CFI NoCalls
        THUMB
// 2170 void TIM_SelectOnePulseMode(TIM_TypeDef *TIMx, uint16_t TIM_OPMode)
// 2171 {
// 2172     /* Check the parameters */
// 2173     assert_param(IS_TIM_ALL_PERIPH(TIMx));
// 2174     assert_param(IS_TIM_OPM_MODE(TIM_OPMode));
// 2175     /* Reset the OPM Bit */
// 2176     TIMx->CR1 &= (uint16_t)~((uint16_t)TIM_CR1_OPM);
TIM_SelectOnePulseMode:
        LDRH     R2,[R0, #+0]
        MOVW     R3,#+65527
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+0]
// 2177     /* Configure the OPM Mode */
// 2178     TIMx->CR1 |= TIM_OPMode;
        LDRH     R2,[R0, #+0]
        ORRS     R2,R1,R2
        STRH     R2,[R0, #+0]
// 2179 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock62
// 2180 
// 2181 /**
// 2182   * @brief  Selects the TIMx Trigger Output Mode.
// 2183   * @param  TIMx: where x can be 1, 2, 3, 4, 5, 6, 7, 8, 9, 12 or 15 to select the TIM peripheral.
// 2184   * @param  TIM_TRGOSource: specifies the Trigger Output source.
// 2185   *   This paramter can be one of the following values:
// 2186   *
// 2187   *  - For all TIMx
// 2188   *     @arg TIM_TRGOSource_Reset:  The UG bit in the TIM_EGR register is used as the trigger output (TRGO).
// 2189   *     @arg TIM_TRGOSource_Enable: The Counter Enable CEN is used as the trigger output (TRGO).
// 2190   *     @arg TIM_TRGOSource_Update: The update event is selected as the trigger output (TRGO).
// 2191   *
// 2192   *  - For all TIMx except TIM6 and TIM7
// 2193   *     @arg TIM_TRGOSource_OC1: The trigger output sends a positive pulse when the CC1IF flag
// 2194   *                              is to be set, as soon as a capture or compare match occurs (TRGO).
// 2195   *     @arg TIM_TRGOSource_OC1Ref: OC1REF signal is used as the trigger output (TRGO).
// 2196   *     @arg TIM_TRGOSource_OC2Ref: OC2REF signal is used as the trigger output (TRGO).
// 2197   *     @arg TIM_TRGOSource_OC3Ref: OC3REF signal is used as the trigger output (TRGO).
// 2198   *     @arg TIM_TRGOSource_OC4Ref: OC4REF signal is used as the trigger output (TRGO).
// 2199   *
// 2200   * @retval None
// 2201   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock63 Using cfiCommon0
          CFI Function TIM_SelectOutputTrigger
          CFI NoCalls
        THUMB
// 2202 void TIM_SelectOutputTrigger(TIM_TypeDef *TIMx, uint16_t TIM_TRGOSource)
// 2203 {
// 2204     /* Check the parameters */
// 2205     assert_param(IS_TIM_LIST7_PERIPH(TIMx));
// 2206     assert_param(IS_TIM_TRGO_SOURCE(TIM_TRGOSource));
// 2207     /* Reset the MMS Bits */
// 2208     TIMx->CR2 &= (uint16_t)~((uint16_t)TIM_CR2_MMS);
TIM_SelectOutputTrigger:
        LDRH     R2,[R0, #+4]
        MOVW     R3,#+65423
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+4]
// 2209     /* Select the TRGO source */
// 2210     TIMx->CR2 |=  TIM_TRGOSource;
        LDRH     R2,[R0, #+4]
        ORRS     R2,R1,R2
        STRH     R2,[R0, #+4]
// 2211 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock63
// 2212 
// 2213 /**
// 2214   * @brief  Selects the TIMx Slave Mode.
// 2215   * @param  TIMx: where x can be 1, 2, 3, 4, 5, 8, 9, 12 or 15 to select the TIM peripheral.
// 2216   * @param  TIM_SlaveMode: specifies the Timer Slave Mode.
// 2217   *   This parameter can be one of the following values:
// 2218   *     @arg TIM_SlaveMode_Reset: Rising edge of the selected trigger signal (TRGI) re-initializes
// 2219   *                               the counter and triggers an update of the registers.
// 2220   *     @arg TIM_SlaveMode_Gated:     The counter clock is enabled when the trigger signal (TRGI) is high.
// 2221   *     @arg TIM_SlaveMode_Trigger:   The counter starts at a rising edge of the trigger TRGI.
// 2222   *     @arg TIM_SlaveMode_External1: Rising edges of the selected trigger (TRGI) clock the counter.
// 2223   * @retval None
// 2224   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock64 Using cfiCommon0
          CFI Function TIM_SelectSlaveMode
          CFI NoCalls
        THUMB
// 2225 void TIM_SelectSlaveMode(TIM_TypeDef *TIMx, uint16_t TIM_SlaveMode)
// 2226 {
// 2227     /* Check the parameters */
// 2228     assert_param(IS_TIM_LIST6_PERIPH(TIMx));
// 2229     assert_param(IS_TIM_SLAVE_MODE(TIM_SlaveMode));
// 2230     /* Reset the SMS Bits */
// 2231     TIMx->SMCR &= (uint16_t)~((uint16_t)TIM_SMCR_SMS);
TIM_SelectSlaveMode:
        LDRH     R2,[R0, #+8]
        MOVW     R3,#+65528
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+8]
// 2232     /* Select the Slave Mode */
// 2233     TIMx->SMCR |= TIM_SlaveMode;
        LDRH     R2,[R0, #+8]
        ORRS     R2,R1,R2
        STRH     R2,[R0, #+8]
// 2234 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock64
// 2235 
// 2236 /**
// 2237   * @brief  Sets or Resets the TIMx Master/Slave Mode.
// 2238   * @param  TIMx: where x can be 1, 2, 3, 4, 5, 8, 9, 12 or 15 to select the TIM peripheral.
// 2239   * @param  TIM_MasterSlaveMode: specifies the Timer Master Slave Mode.
// 2240   *   This parameter can be one of the following values:
// 2241   *     @arg TIM_MasterSlaveMode_Enable: synchronization between the current timer
// 2242   *                                      and its slaves (through TRGO).
// 2243   *     @arg TIM_MasterSlaveMode_Disable: No action
// 2244   * @retval None
// 2245   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock65 Using cfiCommon0
          CFI Function TIM_SelectMasterSlaveMode
          CFI NoCalls
        THUMB
// 2246 void TIM_SelectMasterSlaveMode(TIM_TypeDef *TIMx, uint16_t TIM_MasterSlaveMode)
// 2247 {
// 2248     /* Check the parameters */
// 2249     assert_param(IS_TIM_LIST6_PERIPH(TIMx));
// 2250     assert_param(IS_TIM_MSM_STATE(TIM_MasterSlaveMode));
// 2251     /* Reset the MSM Bit */
// 2252     TIMx->SMCR &= (uint16_t)~((uint16_t)TIM_SMCR_MSM);
TIM_SelectMasterSlaveMode:
        LDRH     R2,[R0, #+8]
        MOVW     R3,#+65407
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+8]
// 2253 
// 2254     /* Set or Reset the MSM Bit */
// 2255     TIMx->SMCR |= TIM_MasterSlaveMode;
        LDRH     R2,[R0, #+8]
        ORRS     R2,R1,R2
        STRH     R2,[R0, #+8]
// 2256 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock65
// 2257 
// 2258 /**
// 2259   * @brief  Sets the TIMx Counter Register value
// 2260   * @param  TIMx: where x can be 1 to 17 to select the TIM peripheral.
// 2261   * @param  Counter: specifies the Counter register new value.
// 2262   * @retval None
// 2263   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock66 Using cfiCommon0
          CFI Function TIM_SetCounter
          CFI NoCalls
        THUMB
// 2264 void TIM_SetCounter(TIM_TypeDef *TIMx, uint16_t Counter)
// 2265 {
// 2266     /* Check the parameters */
// 2267     assert_param(IS_TIM_ALL_PERIPH(TIMx));
// 2268     /* Set the Counter Register value */
// 2269     TIMx->CNT = Counter;
TIM_SetCounter:
        STRH     R1,[R0, #+36]
// 2270 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock66
// 2271 
// 2272 /**
// 2273   * @brief  Sets the TIMx Autoreload Register value
// 2274   * @param  TIMx: where x can be 1 to 17 to select the TIM peripheral.
// 2275   * @param  Autoreload: specifies the Autoreload register new value.
// 2276   * @retval None
// 2277   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock67 Using cfiCommon0
          CFI Function TIM_SetAutoreload
          CFI NoCalls
        THUMB
// 2278 void TIM_SetAutoreload(TIM_TypeDef *TIMx, uint16_t Autoreload)
// 2279 {
// 2280     /* Check the parameters */
// 2281     assert_param(IS_TIM_ALL_PERIPH(TIMx));
// 2282     /* Set the Autoreload Register value */
// 2283     TIMx->ARR = Autoreload;
TIM_SetAutoreload:
        STRH     R1,[R0, #+44]
// 2284 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock67
// 2285 
// 2286 /**
// 2287   * @brief  Sets the TIMx Capture Compare1 Register value
// 2288   * @param  TIMx: where x can be 1 to 17 except 6 and 7 to select the TIM peripheral.
// 2289   * @param  Compare1: specifies the Capture Compare1 register new value.
// 2290   * @retval None
// 2291   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock68 Using cfiCommon0
          CFI Function TIM_SetCompare1
          CFI NoCalls
        THUMB
// 2292 void TIM_SetCompare1(TIM_TypeDef *TIMx, uint16_t Compare1)
// 2293 {
// 2294     /* Check the parameters */
// 2295     assert_param(IS_TIM_LIST8_PERIPH(TIMx));
// 2296     /* Set the Capture Compare1 Register value */
// 2297     TIMx->CCR1 = Compare1;
TIM_SetCompare1:
        STRH     R1,[R0, #+52]
// 2298 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock68
// 2299 
// 2300 /**
// 2301   * @brief  Sets the TIMx Capture Compare2 Register value
// 2302   * @param  TIMx: where x can be 1, 2, 3, 4, 5, 8, 9, 12 or 15 to select the TIM peripheral.
// 2303   * @param  Compare2: specifies the Capture Compare2 register new value.
// 2304   * @retval None
// 2305   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock69 Using cfiCommon0
          CFI Function TIM_SetCompare2
          CFI NoCalls
        THUMB
// 2306 void TIM_SetCompare2(TIM_TypeDef *TIMx, uint16_t Compare2)
// 2307 {
// 2308     /* Check the parameters */
// 2309     assert_param(IS_TIM_LIST6_PERIPH(TIMx));
// 2310     /* Set the Capture Compare2 Register value */
// 2311     TIMx->CCR2 = Compare2;
TIM_SetCompare2:
        STRH     R1,[R0, #+56]
// 2312 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock69
// 2313 
// 2314 /**
// 2315   * @brief  Sets the TIMx Capture Compare3 Register value
// 2316   * @param  TIMx: where x can be 1, 2, 3, 4, 5 or 8 to select the TIM peripheral.
// 2317   * @param  Compare3: specifies the Capture Compare3 register new value.
// 2318   * @retval None
// 2319   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock70 Using cfiCommon0
          CFI Function TIM_SetCompare3
          CFI NoCalls
        THUMB
// 2320 void TIM_SetCompare3(TIM_TypeDef *TIMx, uint16_t Compare3)
// 2321 {
// 2322     /* Check the parameters */
// 2323     assert_param(IS_TIM_LIST3_PERIPH(TIMx));
// 2324     /* Set the Capture Compare3 Register value */
// 2325     TIMx->CCR3 = Compare3;
TIM_SetCompare3:
        STRH     R1,[R0, #+60]
// 2326 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock70
// 2327 
// 2328 /**
// 2329   * @brief  Sets the TIMx Capture Compare4 Register value
// 2330   * @param  TIMx: where x can be 1, 2, 3, 4, 5 or 8 to select the TIM peripheral.
// 2331   * @param  Compare4: specifies the Capture Compare4 register new value.
// 2332   * @retval None
// 2333   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock71 Using cfiCommon0
          CFI Function TIM_SetCompare4
          CFI NoCalls
        THUMB
// 2334 void TIM_SetCompare4(TIM_TypeDef *TIMx, uint16_t Compare4)
// 2335 {
// 2336     /* Check the parameters */
// 2337     assert_param(IS_TIM_LIST3_PERIPH(TIMx));
// 2338     /* Set the Capture Compare4 Register value */
// 2339     TIMx->CCR4 = Compare4;
TIM_SetCompare4:
        STRH     R1,[R0, #+64]
// 2340 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock71
// 2341 
// 2342 /**
// 2343   * @brief  Sets the TIMx Input Capture 1 prescaler.
// 2344   * @param  TIMx: where x can be 1 to 17 except 6 and 7 to select the TIM peripheral.
// 2345   * @param  TIM_ICPSC: specifies the Input Capture1 prescaler new value.
// 2346   *   This parameter can be one of the following values:
// 2347   *     @arg TIM_ICPSC_DIV1: no prescaler
// 2348   *     @arg TIM_ICPSC_DIV2: capture is done once every 2 events
// 2349   *     @arg TIM_ICPSC_DIV4: capture is done once every 4 events
// 2350   *     @arg TIM_ICPSC_DIV8: capture is done once every 8 events
// 2351   * @retval None
// 2352   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock72 Using cfiCommon0
          CFI Function TIM_SetIC1Prescaler
          CFI NoCalls
        THUMB
// 2353 void TIM_SetIC1Prescaler(TIM_TypeDef *TIMx, uint16_t TIM_ICPSC)
// 2354 {
// 2355     /* Check the parameters */
// 2356     assert_param(IS_TIM_LIST8_PERIPH(TIMx));
// 2357     assert_param(IS_TIM_IC_PRESCALER(TIM_ICPSC));
// 2358     /* Reset the IC1PSC Bits */
// 2359     TIMx->CCMR1 &= (uint16_t)~((uint16_t)TIM_CCMR1_IC1PSC);
TIM_SetIC1Prescaler:
        LDRH     R2,[R0, #+24]
        MOVW     R3,#+65523
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+24]
// 2360     /* Set the IC1PSC value */
// 2361     TIMx->CCMR1 |= TIM_ICPSC;
        LDRH     R2,[R0, #+24]
        ORRS     R2,R1,R2
        STRH     R2,[R0, #+24]
// 2362 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock72
// 2363 
// 2364 /**
// 2365   * @brief  Sets the TIMx Input Capture 2 prescaler.
// 2366   * @param  TIMx: where x can be 1, 2, 3, 4, 5, 8, 9, 12 or 15 to select the TIM peripheral.
// 2367   * @param  TIM_ICPSC: specifies the Input Capture2 prescaler new value.
// 2368   *   This parameter can be one of the following values:
// 2369   *     @arg TIM_ICPSC_DIV1: no prescaler
// 2370   *     @arg TIM_ICPSC_DIV2: capture is done once every 2 events
// 2371   *     @arg TIM_ICPSC_DIV4: capture is done once every 4 events
// 2372   *     @arg TIM_ICPSC_DIV8: capture is done once every 8 events
// 2373   * @retval None
// 2374   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock73 Using cfiCommon0
          CFI Function TIM_SetIC2Prescaler
          CFI NoCalls
        THUMB
// 2375 void TIM_SetIC2Prescaler(TIM_TypeDef *TIMx, uint16_t TIM_ICPSC)
// 2376 {
// 2377     /* Check the parameters */
// 2378     assert_param(IS_TIM_LIST6_PERIPH(TIMx));
// 2379     assert_param(IS_TIM_IC_PRESCALER(TIM_ICPSC));
// 2380     /* Reset the IC2PSC Bits */
// 2381     TIMx->CCMR1 &= (uint16_t)~((uint16_t)TIM_CCMR1_IC2PSC);
TIM_SetIC2Prescaler:
        LDRH     R2,[R0, #+24]
        MOVW     R3,#+62463
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+24]
// 2382     /* Set the IC2PSC value */
// 2383     TIMx->CCMR1 |= (uint16_t)(TIM_ICPSC << 8);
        LDRH     R2,[R0, #+24]
        ORRS     R2,R2,R1, LSL #+8
        STRH     R2,[R0, #+24]
// 2384 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock73
// 2385 
// 2386 /**
// 2387   * @brief  Sets the TIMx Input Capture 3 prescaler.
// 2388   * @param  TIMx: where x can be 1, 2, 3, 4, 5 or 8 to select the TIM peripheral.
// 2389   * @param  TIM_ICPSC: specifies the Input Capture3 prescaler new value.
// 2390   *   This parameter can be one of the following values:
// 2391   *     @arg TIM_ICPSC_DIV1: no prescaler
// 2392   *     @arg TIM_ICPSC_DIV2: capture is done once every 2 events
// 2393   *     @arg TIM_ICPSC_DIV4: capture is done once every 4 events
// 2394   *     @arg TIM_ICPSC_DIV8: capture is done once every 8 events
// 2395   * @retval None
// 2396   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock74 Using cfiCommon0
          CFI Function TIM_SetIC3Prescaler
          CFI NoCalls
        THUMB
// 2397 void TIM_SetIC3Prescaler(TIM_TypeDef *TIMx, uint16_t TIM_ICPSC)
// 2398 {
// 2399     /* Check the parameters */
// 2400     assert_param(IS_TIM_LIST3_PERIPH(TIMx));
// 2401     assert_param(IS_TIM_IC_PRESCALER(TIM_ICPSC));
// 2402     /* Reset the IC3PSC Bits */
// 2403     TIMx->CCMR2 &= (uint16_t)~((uint16_t)TIM_CCMR2_IC3PSC);
TIM_SetIC3Prescaler:
        LDRH     R2,[R0, #+28]
        MOVW     R3,#+65523
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+28]
// 2404     /* Set the IC3PSC value */
// 2405     TIMx->CCMR2 |= TIM_ICPSC;
        LDRH     R2,[R0, #+28]
        ORRS     R2,R1,R2
        STRH     R2,[R0, #+28]
// 2406 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock74
// 2407 
// 2408 /**
// 2409   * @brief  Sets the TIMx Input Capture 4 prescaler.
// 2410   * @param  TIMx: where x can be 1, 2, 3, 4, 5 or 8 to select the TIM peripheral.
// 2411   * @param  TIM_ICPSC: specifies the Input Capture4 prescaler new value.
// 2412   *   This parameter can be one of the following values:
// 2413   *     @arg TIM_ICPSC_DIV1: no prescaler
// 2414   *     @arg TIM_ICPSC_DIV2: capture is done once every 2 events
// 2415   *     @arg TIM_ICPSC_DIV4: capture is done once every 4 events
// 2416   *     @arg TIM_ICPSC_DIV8: capture is done once every 8 events
// 2417   * @retval None
// 2418   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock75 Using cfiCommon0
          CFI Function TIM_SetIC4Prescaler
          CFI NoCalls
        THUMB
// 2419 void TIM_SetIC4Prescaler(TIM_TypeDef *TIMx, uint16_t TIM_ICPSC)
// 2420 {
// 2421     /* Check the parameters */
// 2422     assert_param(IS_TIM_LIST3_PERIPH(TIMx));
// 2423     assert_param(IS_TIM_IC_PRESCALER(TIM_ICPSC));
// 2424     /* Reset the IC4PSC Bits */
// 2425     TIMx->CCMR2 &= (uint16_t)~((uint16_t)TIM_CCMR2_IC4PSC);
TIM_SetIC4Prescaler:
        LDRH     R2,[R0, #+28]
        MOVW     R3,#+62463
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+28]
// 2426     /* Set the IC4PSC value */
// 2427     TIMx->CCMR2 |= (uint16_t)(TIM_ICPSC << 8);
        LDRH     R2,[R0, #+28]
        ORRS     R2,R2,R1, LSL #+8
        STRH     R2,[R0, #+28]
// 2428 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock75
// 2429 
// 2430 /**
// 2431   * @brief  Sets the TIMx Clock Division value.
// 2432   * @param  TIMx: where x can be  1 to 17 except 6 and 7 to select
// 2433   *   the TIM peripheral.
// 2434   * @param  TIM_CKD: specifies the clock division value.
// 2435   *   This parameter can be one of the following value:
// 2436   *     @arg TIM_CKD_DIV1: TDTS = Tck_tim
// 2437   *     @arg TIM_CKD_DIV2: TDTS = 2*Tck_tim
// 2438   *     @arg TIM_CKD_DIV4: TDTS = 4*Tck_tim
// 2439   * @retval None
// 2440   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock76 Using cfiCommon0
          CFI Function TIM_SetClockDivision
          CFI NoCalls
        THUMB
// 2441 void TIM_SetClockDivision(TIM_TypeDef *TIMx, uint16_t TIM_CKD)
// 2442 {
// 2443     /* Check the parameters */
// 2444     assert_param(IS_TIM_LIST8_PERIPH(TIMx));
// 2445     assert_param(IS_TIM_CKD_DIV(TIM_CKD));
// 2446     /* Reset the CKD Bits */
// 2447     TIMx->CR1 &= (uint16_t)~((uint16_t)TIM_CR1_CKD);
TIM_SetClockDivision:
        LDRH     R2,[R0, #+0]
        MOVW     R3,#+64767
        ANDS     R2,R3,R2
        STRH     R2,[R0, #+0]
// 2448     /* Set the CKD value */
// 2449     TIMx->CR1 |= TIM_CKD;
        LDRH     R2,[R0, #+0]
        ORRS     R2,R1,R2
        STRH     R2,[R0, #+0]
// 2450 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock76
// 2451 
// 2452 /**
// 2453   * @brief  Gets the TIMx Input Capture 1 value.
// 2454   * @param  TIMx: where x can be 1 to 17 except 6 and 7 to select the TIM peripheral.
// 2455   * @retval Capture Compare 1 Register value.
// 2456   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock77 Using cfiCommon0
          CFI Function TIM_GetCapture1
          CFI NoCalls
        THUMB
// 2457 uint16_t TIM_GetCapture1(TIM_TypeDef *TIMx)
// 2458 {
// 2459     /* Check the parameters */
// 2460     assert_param(IS_TIM_LIST8_PERIPH(TIMx));
// 2461     /* Get the Capture 1 Register value */
// 2462     return TIMx->CCR1;
TIM_GetCapture1:
        LDRH     R0,[R0, #+52]
        BX       LR               ;; return
          CFI EndBlock cfiBlock77
// 2463 }
// 2464 
// 2465 /**
// 2466   * @brief  Gets the TIMx Input Capture 2 value.
// 2467   * @param  TIMx: where x can be 1, 2, 3, 4, 5, 8, 9, 12 or 15 to select the TIM peripheral.
// 2468   * @retval Capture Compare 2 Register value.
// 2469   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock78 Using cfiCommon0
          CFI Function TIM_GetCapture2
          CFI NoCalls
        THUMB
// 2470 uint16_t TIM_GetCapture2(TIM_TypeDef *TIMx)
// 2471 {
// 2472     /* Check the parameters */
// 2473     assert_param(IS_TIM_LIST6_PERIPH(TIMx));
// 2474     /* Get the Capture 2 Register value */
// 2475     return TIMx->CCR2;
TIM_GetCapture2:
        LDRH     R0,[R0, #+56]
        BX       LR               ;; return
          CFI EndBlock cfiBlock78
// 2476 }
// 2477 
// 2478 /**
// 2479   * @brief  Gets the TIMx Input Capture 3 value.
// 2480   * @param  TIMx: where x can be 1, 2, 3, 4, 5 or 8 to select the TIM peripheral.
// 2481   * @retval Capture Compare 3 Register value.
// 2482   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock79 Using cfiCommon0
          CFI Function TIM_GetCapture3
          CFI NoCalls
        THUMB
// 2483 uint16_t TIM_GetCapture3(TIM_TypeDef *TIMx)
// 2484 {
// 2485     /* Check the parameters */
// 2486     assert_param(IS_TIM_LIST3_PERIPH(TIMx));
// 2487     /* Get the Capture 3 Register value */
// 2488     return TIMx->CCR3;
TIM_GetCapture3:
        LDRH     R0,[R0, #+60]
        BX       LR               ;; return
          CFI EndBlock cfiBlock79
// 2489 }
// 2490 
// 2491 /**
// 2492   * @brief  Gets the TIMx Input Capture 4 value.
// 2493   * @param  TIMx: where x can be 1, 2, 3, 4, 5 or 8 to select the TIM peripheral.
// 2494   * @retval Capture Compare 4 Register value.
// 2495   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock80 Using cfiCommon0
          CFI Function TIM_GetCapture4
          CFI NoCalls
        THUMB
// 2496 uint16_t TIM_GetCapture4(TIM_TypeDef *TIMx)
// 2497 {
// 2498     /* Check the parameters */
// 2499     assert_param(IS_TIM_LIST3_PERIPH(TIMx));
// 2500     /* Get the Capture 4 Register value */
// 2501     return TIMx->CCR4;
TIM_GetCapture4:
        LDRH     R0,[R0, #+64]
        BX       LR               ;; return
          CFI EndBlock cfiBlock80
// 2502 }
// 2503 
// 2504 /**
// 2505   * @brief  Gets the TIMx Counter value.
// 2506   * @param  TIMx: where x can be 1 to 17 to select the TIM peripheral.
// 2507   * @retval Counter Register value.
// 2508   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock81 Using cfiCommon0
          CFI Function TIM_GetCounter
          CFI NoCalls
        THUMB
// 2509 uint16_t TIM_GetCounter(TIM_TypeDef *TIMx)
// 2510 {
// 2511     /* Check the parameters */
// 2512     assert_param(IS_TIM_ALL_PERIPH(TIMx));
// 2513     /* Get the Counter Register value */
// 2514     return TIMx->CNT;
TIM_GetCounter:
        LDRH     R0,[R0, #+36]
        BX       LR               ;; return
          CFI EndBlock cfiBlock81
// 2515 }
// 2516 
// 2517 /**
// 2518   * @brief  Gets the TIMx Prescaler value.
// 2519   * @param  TIMx: where x can be 1 to 17 to select the TIM peripheral.
// 2520   * @retval Prescaler Register value.
// 2521   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock82 Using cfiCommon0
          CFI Function TIM_GetPrescaler
          CFI NoCalls
        THUMB
// 2522 uint16_t TIM_GetPrescaler(TIM_TypeDef *TIMx)
// 2523 {
// 2524     /* Check the parameters */
// 2525     assert_param(IS_TIM_ALL_PERIPH(TIMx));
// 2526     /* Get the Prescaler Register value */
// 2527     return TIMx->PSC;
TIM_GetPrescaler:
        LDRH     R0,[R0, #+40]
        BX       LR               ;; return
          CFI EndBlock cfiBlock82
// 2528 }
// 2529 
// 2530 /**
// 2531   * @brief  Checks whether the specified TIM flag is set or not.
// 2532   * @param  TIMx: where x can be 1 to 17 to select the TIM peripheral.
// 2533   * @param  TIM_FLAG: specifies the flag to check.
// 2534   *   This parameter can be one of the following values:
// 2535   *     @arg TIM_FLAG_Update: TIM update Flag
// 2536   *     @arg TIM_FLAG_CC1: TIM Capture Compare 1 Flag
// 2537   *     @arg TIM_FLAG_CC2: TIM Capture Compare 2 Flag
// 2538   *     @arg TIM_FLAG_CC3: TIM Capture Compare 3 Flag
// 2539   *     @arg TIM_FLAG_CC4: TIM Capture Compare 4 Flag
// 2540   *     @arg TIM_FLAG_COM: TIM Commutation Flag
// 2541   *     @arg TIM_FLAG_Trigger: TIM Trigger Flag
// 2542   *     @arg TIM_FLAG_Break: TIM Break Flag
// 2543   *     @arg TIM_FLAG_CC1OF: TIM Capture Compare 1 overcapture Flag
// 2544   *     @arg TIM_FLAG_CC2OF: TIM Capture Compare 2 overcapture Flag
// 2545   *     @arg TIM_FLAG_CC3OF: TIM Capture Compare 3 overcapture Flag
// 2546   *     @arg TIM_FLAG_CC4OF: TIM Capture Compare 4 overcapture Flag
// 2547   * @note
// 2548   *   - TIM6 and TIM7 can have only one update flag.
// 2549   *   - TIM9, TIM12 and TIM15 can have only TIM_FLAG_Update, TIM_FLAG_CC1,
// 2550   *      TIM_FLAG_CC2 or TIM_FLAG_Trigger.
// 2551   *   - TIM10, TIM11, TIM13, TIM14, TIM16 and TIM17 can have TIM_FLAG_Update or TIM_FLAG_CC1.
// 2552   *   - TIM_FLAG_Break is used only with TIM1, TIM8 and TIM15.
// 2553   *   - TIM_FLAG_COM is used only with TIM1, TIM8, TIM15, TIM16 and TIM17.
// 2554   * @retval The new state of TIM_FLAG (SET or RESET).
// 2555   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock83 Using cfiCommon0
          CFI Function TIM_GetFlagStatus
          CFI NoCalls
        THUMB
// 2556 FlagStatus TIM_GetFlagStatus(TIM_TypeDef *TIMx, uint16_t TIM_FLAG)
// 2557 {
TIM_GetFlagStatus:
        MOVS     R2,R0
// 2558     ITStatus bitstatus = RESET;
        MOVS     R0,#+0
// 2559     /* Check the parameters */
// 2560     assert_param(IS_TIM_ALL_PERIPH(TIMx));
// 2561     assert_param(IS_TIM_GET_FLAG(TIM_FLAG));
// 2562 
// 2563     if ((TIMx->SR & TIM_FLAG) != (uint16_t)RESET)
        LDRH     R3,[R2, #+16]
        TST      R3,R1
        BEQ.N    ??TIM_GetFlagStatus_0
// 2564     {
// 2565         bitstatus = SET;
        MOVS     R3,#+1
        MOVS     R0,R3
        B.N      ??TIM_GetFlagStatus_1
// 2566     }
// 2567     else
// 2568     {
// 2569         bitstatus = RESET;
??TIM_GetFlagStatus_0:
        MOVS     R3,#+0
        MOVS     R0,R3
// 2570     }
// 2571     return bitstatus;
??TIM_GetFlagStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
          CFI EndBlock cfiBlock83
// 2572 }
// 2573 
// 2574 /**
// 2575   * @brief  Clears the TIMx's pending flags.
// 2576   * @param  TIMx: where x can be 1 to 17 to select the TIM peripheral.
// 2577   * @param  TIM_FLAG: specifies the flag bit to clear.
// 2578   *   This parameter can be any combination of the following values:
// 2579   *     @arg TIM_FLAG_Update: TIM update Flag
// 2580   *     @arg TIM_FLAG_CC1: TIM Capture Compare 1 Flag
// 2581   *     @arg TIM_FLAG_CC2: TIM Capture Compare 2 Flag
// 2582   *     @arg TIM_FLAG_CC3: TIM Capture Compare 3 Flag
// 2583   *     @arg TIM_FLAG_CC4: TIM Capture Compare 4 Flag
// 2584   *     @arg TIM_FLAG_COM: TIM Commutation Flag
// 2585   *     @arg TIM_FLAG_Trigger: TIM Trigger Flag
// 2586   *     @arg TIM_FLAG_Break: TIM Break Flag
// 2587   *     @arg TIM_FLAG_CC1OF: TIM Capture Compare 1 overcapture Flag
// 2588   *     @arg TIM_FLAG_CC2OF: TIM Capture Compare 2 overcapture Flag
// 2589   *     @arg TIM_FLAG_CC3OF: TIM Capture Compare 3 overcapture Flag
// 2590   *     @arg TIM_FLAG_CC4OF: TIM Capture Compare 4 overcapture Flag
// 2591   * @note
// 2592   *   - TIM6 and TIM7 can have only one update flag.
// 2593   *   - TIM9, TIM12 and TIM15 can have only TIM_FLAG_Update, TIM_FLAG_CC1,
// 2594   *      TIM_FLAG_CC2 or TIM_FLAG_Trigger.
// 2595   *   - TIM10, TIM11, TIM13, TIM14, TIM16 and TIM17 can have TIM_FLAG_Update or TIM_FLAG_CC1.
// 2596   *   - TIM_FLAG_Break is used only with TIM1, TIM8 and TIM15.
// 2597   *   - TIM_FLAG_COM is used only with TIM1, TIM8, TIM15, TIM16 and TIM17.
// 2598   * @retval None
// 2599   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock84 Using cfiCommon0
          CFI Function TIM_ClearFlag
          CFI NoCalls
        THUMB
// 2600 void TIM_ClearFlag(TIM_TypeDef *TIMx, uint16_t TIM_FLAG)
// 2601 {
// 2602     /* Check the parameters */
// 2603     assert_param(IS_TIM_ALL_PERIPH(TIMx));
// 2604     assert_param(IS_TIM_CLEAR_FLAG(TIM_FLAG));
// 2605 
// 2606     /* Clear the flags */
// 2607     TIMx->SR = (uint16_t)~TIM_FLAG;
TIM_ClearFlag:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MVNS     R2,R1
        STRH     R2,[R0, #+16]
// 2608 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock84
// 2609 
// 2610 /**
// 2611   * @brief  Checks whether the TIM interrupt has occurred or not.
// 2612   * @param  TIMx: where x can be 1 to 17 to select the TIM peripheral.
// 2613   * @param  TIM_IT: specifies the TIM interrupt source to check.
// 2614   *   This parameter can be one of the following values:
// 2615   *     @arg TIM_IT_Update: TIM update Interrupt source
// 2616   *     @arg TIM_IT_CC1: TIM Capture Compare 1 Interrupt source
// 2617   *     @arg TIM_IT_CC2: TIM Capture Compare 2 Interrupt source
// 2618   *     @arg TIM_IT_CC3: TIM Capture Compare 3 Interrupt source
// 2619   *     @arg TIM_IT_CC4: TIM Capture Compare 4 Interrupt source
// 2620   *     @arg TIM_IT_COM: TIM Commutation Interrupt source
// 2621   *     @arg TIM_IT_Trigger: TIM Trigger Interrupt source
// 2622   *     @arg TIM_IT_Break: TIM Break Interrupt source
// 2623   * @note
// 2624   *   - TIM6 and TIM7 can generate only an update interrupt.
// 2625   *   - TIM9, TIM12 and TIM15 can have only TIM_IT_Update, TIM_IT_CC1,
// 2626   *      TIM_IT_CC2 or TIM_IT_Trigger.
// 2627   *   - TIM10, TIM11, TIM13, TIM14, TIM16 and TIM17 can have TIM_IT_Update or TIM_IT_CC1.
// 2628   *   - TIM_IT_Break is used only with TIM1, TIM8 and TIM15.
// 2629   *   - TIM_IT_COM is used only with TIM1, TIM8, TIM15, TIM16 and TIM17.
// 2630   * @retval The new state of the TIM_IT(SET or RESET).
// 2631   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock85 Using cfiCommon0
          CFI Function TIM_GetITStatus
          CFI NoCalls
        THUMB
// 2632 ITStatus TIM_GetITStatus(TIM_TypeDef *TIMx, uint16_t TIM_IT)
// 2633 {
TIM_GetITStatus:
        PUSH     {R4,R5}
          CFI R5 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R2,R0
// 2634     ITStatus bitstatus = RESET;
        MOVS     R0,#+0
// 2635     uint16_t itstatus = 0x0, itenable = 0x0;
        MOVS     R3,#+0
        MOVS     R4,#+0
// 2636     /* Check the parameters */
// 2637     assert_param(IS_TIM_ALL_PERIPH(TIMx));
// 2638     assert_param(IS_TIM_GET_IT(TIM_IT));
// 2639 
// 2640     itstatus = TIMx->SR & TIM_IT;
        LDRH     R5,[R2, #+16]
        ANDS     R5,R1,R5
        MOVS     R3,R5
// 2641 
// 2642     itenable = TIMx->DIER & TIM_IT;
        LDRH     R5,[R2, #+12]
        ANDS     R5,R1,R5
        MOVS     R4,R5
// 2643     if ((itstatus != (uint16_t)RESET) && (itenable != (uint16_t)RESET))
        UXTH     R3,R3            ;; ZeroExt  R3,R3,#+16,#+16
        CMP      R3,#+0
        BEQ.N    ??TIM_GetITStatus_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BEQ.N    ??TIM_GetITStatus_0
// 2644     {
// 2645         bitstatus = SET;
        MOVS     R5,#+1
        MOVS     R0,R5
        B.N      ??TIM_GetITStatus_1
// 2646     }
// 2647     else
// 2648     {
// 2649         bitstatus = RESET;
??TIM_GetITStatus_0:
        MOVS     R5,#+0
        MOVS     R0,R5
// 2650     }
// 2651     return bitstatus;
??TIM_GetITStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,R5}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock85
// 2652 }
// 2653 
// 2654 /**
// 2655   * @brief  Clears the TIMx's interrupt pending bits.
// 2656   * @param  TIMx: where x can be 1 to 17 to select the TIM peripheral.
// 2657   * @param  TIM_IT: specifies the pending bit to clear.
// 2658   *   This parameter can be any combination of the following values:
// 2659   *     @arg TIM_IT_Update: TIM1 update Interrupt source
// 2660   *     @arg TIM_IT_CC1: TIM Capture Compare 1 Interrupt source
// 2661   *     @arg TIM_IT_CC2: TIM Capture Compare 2 Interrupt source
// 2662   *     @arg TIM_IT_CC3: TIM Capture Compare 3 Interrupt source
// 2663   *     @arg TIM_IT_CC4: TIM Capture Compare 4 Interrupt source
// 2664   *     @arg TIM_IT_COM: TIM Commutation Interrupt source
// 2665   *     @arg TIM_IT_Trigger: TIM Trigger Interrupt source
// 2666   *     @arg TIM_IT_Break: TIM Break Interrupt source
// 2667   * @note
// 2668   *   - TIM6 and TIM7 can generate only an update interrupt.
// 2669   *   - TIM9, TIM12 and TIM15 can have only TIM_IT_Update, TIM_IT_CC1,
// 2670   *      TIM_IT_CC2 or TIM_IT_Trigger.
// 2671   *   - TIM10, TIM11, TIM13, TIM14, TIM16 and TIM17 can have TIM_IT_Update or TIM_IT_CC1.
// 2672   *   - TIM_IT_Break is used only with TIM1, TIM8 and TIM15.
// 2673   *   - TIM_IT_COM is used only with TIM1, TIM8, TIM15, TIM16 and TIM17.
// 2674   * @retval None
// 2675   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock86 Using cfiCommon0
          CFI Function TIM_ClearITPendingBit
          CFI NoCalls
        THUMB
// 2676 void TIM_ClearITPendingBit(TIM_TypeDef *TIMx, uint16_t TIM_IT)
// 2677 {
// 2678     /* Check the parameters */
// 2679     assert_param(IS_TIM_ALL_PERIPH(TIMx));
// 2680     assert_param(IS_TIM_IT(TIM_IT));
// 2681     /* Clear the IT pending Bit */
// 2682     TIMx->SR = (uint16_t)~TIM_IT;
TIM_ClearITPendingBit:
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        MVNS     R2,R1
        STRH     R2,[R0, #+16]
// 2683 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock86
// 2684 
// 2685 /**
// 2686   * @brief  Configure the TI1 as Input.
// 2687   * @param  TIMx: where x can be 1 to 17 except 6 and 7 to select the TIM peripheral.
// 2688   * @param  TIM_ICPolarity : The Input Polarity.
// 2689   *   This parameter can be one of the following values:
// 2690   *     @arg TIM_ICPolarity_Rising
// 2691   *     @arg TIM_ICPolarity_Falling
// 2692   * @param  TIM_ICSelection: specifies the input to be used.
// 2693   *   This parameter can be one of the following values:
// 2694   *     @arg TIM_ICSelection_DirectTI: TIM Input 1 is selected to be connected to IC1.
// 2695   *     @arg TIM_ICSelection_IndirectTI: TIM Input 1 is selected to be connected to IC2.
// 2696   *     @arg TIM_ICSelection_TRC: TIM Input 1 is selected to be connected to TRC.
// 2697   * @param  TIM_ICFilter: Specifies the Input Capture Filter.
// 2698   *   This parameter must be a value between 0x00 and 0x0F.
// 2699   * @retval None
// 2700   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock87 Using cfiCommon0
          CFI Function TI1_Config
          CFI NoCalls
        THUMB
// 2701 static void TI1_Config(TIM_TypeDef *TIMx, uint16_t TIM_ICPolarity, uint16_t TIM_ICSelection,
// 2702                        uint16_t TIM_ICFilter)
// 2703 {
TI1_Config:
        PUSH     {R4-R7}
          CFI R7 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
// 2704     uint16_t tmpccmr1 = 0, tmpccer = 0;
        MOVS     R5,#+0
        MOVS     R4,#+0
// 2705     /* Disable the Channel 1: Reset the CC1E Bit */
// 2706     TIMx->CCER &= (uint16_t)~((uint16_t)TIM_CCER_CC1E);
        LDRH     R6,[R0, #+32]
        MOVW     R7,#+65534
        ANDS     R6,R7,R6
        STRH     R6,[R0, #+32]
// 2707     tmpccmr1 = TIMx->CCMR1;
        LDRH     R6,[R0, #+24]
        MOVS     R5,R6
// 2708     tmpccer = TIMx->CCER;
        LDRH     R6,[R0, #+32]
        MOVS     R4,R6
// 2709     /* Select the Input and set the filter */
// 2710     tmpccmr1 &= (uint16_t)(((uint16_t)~((uint16_t)TIM_CCMR1_CC1S)) & ((uint16_t)~((uint16_t)TIM_CCMR1_IC1F)));
        MOVW     R6,#+65292
        ANDS     R5,R6,R5
// 2711     tmpccmr1 |= (uint16_t)(TIM_ICSelection | (uint16_t)(TIM_ICFilter << (uint16_t)4));
        ORRS     R6,R2,R3, LSL #+4
        ORRS     R5,R6,R5
// 2712 
// 2713     if((TIMx == TIM1) || (TIMx == TIM8) || (TIMx == TIM2) || (TIMx == TIM3) ||
// 2714             (TIMx == TIM4) || (TIMx == TIM5))
        LDR.N    R6,??DataTable7  ;; 0x40012c00
        CMP      R0,R6
        BEQ.N    ??TI1_Config_0
        LDR.N    R6,??DataTable8_2  ;; 0x40013400
        CMP      R0,R6
        BEQ.N    ??TI1_Config_0
        CMP      R0,#+1073741824
        BEQ.N    ??TI1_Config_0
        LDR.N    R6,??DataTable7_1  ;; 0x40000400
        CMP      R0,R6
        BEQ.N    ??TI1_Config_0
        LDR.N    R6,??DataTable7_2  ;; 0x40000800
        CMP      R0,R6
        BEQ.N    ??TI1_Config_0
        LDR.N    R6,??DataTable7_3  ;; 0x40000c00
        CMP      R0,R6
        BNE.N    ??TI1_Config_1
// 2715     {
// 2716         /* Select the Polarity and set the CC1E Bit */
// 2717         tmpccer &= (uint16_t)~((uint16_t)(TIM_CCER_CC1P));
??TI1_Config_0:
        MOVW     R6,#+65533
        ANDS     R4,R6,R4
// 2718         tmpccer |= (uint16_t)(TIM_ICPolarity | (uint16_t)TIM_CCER_CC1E);
        ORRS     R6,R1,#0x1
        ORRS     R4,R6,R4
        B.N      ??TI1_Config_2
// 2719     }
// 2720     else
// 2721     {
// 2722         /* Select the Polarity and set the CC1E Bit */
// 2723         tmpccer &= (uint16_t)~((uint16_t)(TIM_CCER_CC1P | TIM_CCER_CC1NP));
??TI1_Config_1:
        MOVW     R6,#+65525
        ANDS     R4,R6,R4
// 2724         tmpccer |= (uint16_t)(TIM_ICPolarity | (uint16_t)TIM_CCER_CC1E);
        ORRS     R6,R1,#0x1
        ORRS     R4,R6,R4
// 2725     }
// 2726 
// 2727     /* Write to TIMx CCMR1 and CCER registers */
// 2728     TIMx->CCMR1 = tmpccmr1;
??TI1_Config_2:
        STRH     R5,[R0, #+24]
// 2729     TIMx->CCER = tmpccer;
        STRH     R4,[R0, #+32]
// 2730 }
        POP      {R4-R7}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock87

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     0x40012c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     0x40000400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     0x40000800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     0x40000c00
// 2731 
// 2732 /**
// 2733   * @brief  Configure the TI2 as Input.
// 2734   * @param  TIMx: where x can be 1, 2, 3, 4, 5, 8, 9, 12 or 15 to select the TIM peripheral.
// 2735   * @param  TIM_ICPolarity : The Input Polarity.
// 2736   *   This parameter can be one of the following values:
// 2737   *     @arg TIM_ICPolarity_Rising
// 2738   *     @arg TIM_ICPolarity_Falling
// 2739   * @param  TIM_ICSelection: specifies the input to be used.
// 2740   *   This parameter can be one of the following values:
// 2741   *     @arg TIM_ICSelection_DirectTI: TIM Input 2 is selected to be connected to IC2.
// 2742   *     @arg TIM_ICSelection_IndirectTI: TIM Input 2 is selected to be connected to IC1.
// 2743   *     @arg TIM_ICSelection_TRC: TIM Input 2 is selected to be connected to TRC.
// 2744   * @param  TIM_ICFilter: Specifies the Input Capture Filter.
// 2745   *   This parameter must be a value between 0x00 and 0x0F.
// 2746   * @retval None
// 2747   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock88 Using cfiCommon0
          CFI Function TI2_Config
          CFI NoCalls
        THUMB
// 2748 static void TI2_Config(TIM_TypeDef *TIMx, uint16_t TIM_ICPolarity, uint16_t TIM_ICSelection,
// 2749                        uint16_t TIM_ICFilter)
// 2750 {
TI2_Config:
        PUSH     {R4-R7}
          CFI R7 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
// 2751     uint16_t tmpccmr1 = 0, tmpccer = 0, tmp = 0;
        MOVS     R6,#+0
        MOVS     R4,#+0
        MOVS     R5,#+0
// 2752     /* Disable the Channel 2: Reset the CC2E Bit */
// 2753     TIMx->CCER &= (uint16_t)~((uint16_t)TIM_CCER_CC2E);
        LDRH     R7,[R0, #+32]
        MOVW     R12,#+65519
        ANDS     R7,R12,R7
        STRH     R7,[R0, #+32]
// 2754     tmpccmr1 = TIMx->CCMR1;
        LDRH     R7,[R0, #+24]
        MOVS     R6,R7
// 2755     tmpccer = TIMx->CCER;
        LDRH     R7,[R0, #+32]
        MOVS     R4,R7
// 2756     tmp = (uint16_t)(TIM_ICPolarity << 4);
        LSLS     R7,R1,#+4
        MOVS     R5,R7
// 2757     /* Select the Input and set the filter */
// 2758     tmpccmr1 &= (uint16_t)(((uint16_t)~((uint16_t)TIM_CCMR1_CC2S)) & ((uint16_t)~((uint16_t)TIM_CCMR1_IC2F)));
        MOVW     R7,#+3327
        ANDS     R6,R7,R6
// 2759     tmpccmr1 |= (uint16_t)(TIM_ICFilter << 12);
        ORRS     R6,R6,R3, LSL #+12
// 2760     tmpccmr1 |= (uint16_t)(TIM_ICSelection << 8);
        ORRS     R6,R6,R2, LSL #+8
// 2761 
// 2762     if((TIMx == TIM1) || (TIMx == TIM8) || (TIMx == TIM2) || (TIMx == TIM3) ||
// 2763             (TIMx == TIM4) || (TIMx == TIM5))
        LDR.N    R7,??DataTable10_4  ;; 0x40012c00
        CMP      R0,R7
        BEQ.N    ??TI2_Config_0
        LDR.N    R7,??DataTable8_2  ;; 0x40013400
        CMP      R0,R7
        BEQ.N    ??TI2_Config_0
        CMP      R0,#+1073741824
        BEQ.N    ??TI2_Config_0
        LDR.N    R7,??DataTable10_5  ;; 0x40000400
        CMP      R0,R7
        BEQ.N    ??TI2_Config_0
        LDR.N    R7,??DataTable10_6  ;; 0x40000800
        CMP      R0,R7
        BEQ.N    ??TI2_Config_0
        LDR.N    R7,??DataTable10_7  ;; 0x40000c00
        CMP      R0,R7
        BNE.N    ??TI2_Config_1
// 2764     {
// 2765         /* Select the Polarity and set the CC2E Bit */
// 2766         tmpccer &= (uint16_t)~((uint16_t)(TIM_CCER_CC2P));
??TI2_Config_0:
        MOVW     R7,#+65503
        ANDS     R4,R7,R4
// 2767         tmpccer |=  (uint16_t)(tmp | (uint16_t)TIM_CCER_CC2E);
        ORRS     R7,R5,#0x10
        ORRS     R4,R7,R4
        B.N      ??TI2_Config_2
// 2768     }
// 2769     else
// 2770     {
// 2771         /* Select the Polarity and set the CC2E Bit */
// 2772         tmpccer &= (uint16_t)~((uint16_t)(TIM_CCER_CC2P | TIM_CCER_CC2NP));
??TI2_Config_1:
        MOVW     R7,#+65375
        ANDS     R4,R7,R4
// 2773         tmpccer |= (uint16_t)(TIM_ICPolarity | (uint16_t)TIM_CCER_CC2E);
        ORRS     R7,R1,#0x10
        ORRS     R4,R7,R4
// 2774     }
// 2775 
// 2776     /* Write to TIMx CCMR1 and CCER registers */
// 2777     TIMx->CCMR1 = tmpccmr1 ;
??TI2_Config_2:
        STRH     R6,[R0, #+24]
// 2778     TIMx->CCER = tmpccer;
        STRH     R4,[R0, #+32]
// 2779 }
        POP      {R4-R7}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock88

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     0x40001000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     0x40001400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     0x40013400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     0x40014c00
// 2780 
// 2781 /**
// 2782   * @brief  Configure the TI3 as Input.
// 2783   * @param  TIMx: where x can be 1, 2, 3, 4, 5 or 8 to select the TIM peripheral.
// 2784   * @param  TIM_ICPolarity : The Input Polarity.
// 2785   *   This parameter can be one of the following values:
// 2786   *     @arg TIM_ICPolarity_Rising
// 2787   *     @arg TIM_ICPolarity_Falling
// 2788   * @param  TIM_ICSelection: specifies the input to be used.
// 2789   *   This parameter can be one of the following values:
// 2790   *     @arg TIM_ICSelection_DirectTI: TIM Input 3 is selected to be connected to IC3.
// 2791   *     @arg TIM_ICSelection_IndirectTI: TIM Input 3 is selected to be connected to IC4.
// 2792   *     @arg TIM_ICSelection_TRC: TIM Input 3 is selected to be connected to TRC.
// 2793   * @param  TIM_ICFilter: Specifies the Input Capture Filter.
// 2794   *   This parameter must be a value between 0x00 and 0x0F.
// 2795   * @retval None
// 2796   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock89 Using cfiCommon0
          CFI Function TI3_Config
          CFI NoCalls
        THUMB
// 2797 static void TI3_Config(TIM_TypeDef *TIMx, uint16_t TIM_ICPolarity, uint16_t TIM_ICSelection,
// 2798                        uint16_t TIM_ICFilter)
// 2799 {
TI3_Config:
        PUSH     {R4-R7}
          CFI R7 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
// 2800     uint16_t tmpccmr2 = 0, tmpccer = 0, tmp = 0;
        MOVS     R6,#+0
        MOVS     R4,#+0
        MOVS     R5,#+0
// 2801     /* Disable the Channel 3: Reset the CC3E Bit */
// 2802     TIMx->CCER &= (uint16_t)~((uint16_t)TIM_CCER_CC3E);
        LDRH     R7,[R0, #+32]
        MOVW     R12,#+65279
        ANDS     R7,R12,R7
        STRH     R7,[R0, #+32]
// 2803     tmpccmr2 = TIMx->CCMR2;
        LDRH     R7,[R0, #+28]
        MOVS     R6,R7
// 2804     tmpccer = TIMx->CCER;
        LDRH     R7,[R0, #+32]
        MOVS     R4,R7
// 2805     tmp = (uint16_t)(TIM_ICPolarity << 8);
        LSLS     R7,R1,#+8
        MOVS     R5,R7
// 2806     /* Select the Input and set the filter */
// 2807     tmpccmr2 &= (uint16_t)(((uint16_t)~((uint16_t)TIM_CCMR2_CC3S)) & ((uint16_t)~((uint16_t)TIM_CCMR2_IC3F)));
        MOVW     R7,#+65292
        ANDS     R6,R7,R6
// 2808     tmpccmr2 |= (uint16_t)(TIM_ICSelection | (uint16_t)(TIM_ICFilter << (uint16_t)4));
        ORRS     R7,R2,R3, LSL #+4
        ORRS     R6,R7,R6
// 2809 
// 2810     if((TIMx == TIM1) || (TIMx == TIM8) || (TIMx == TIM2) || (TIMx == TIM3) ||
// 2811             (TIMx == TIM4) || (TIMx == TIM5))
        LDR.N    R7,??DataTable10_4  ;; 0x40012c00
        CMP      R0,R7
        BEQ.N    ??TI3_Config_0
        LDR.N    R7,??DataTable10_3  ;; 0x40013400
        CMP      R0,R7
        BEQ.N    ??TI3_Config_0
        CMP      R0,#+1073741824
        BEQ.N    ??TI3_Config_0
        LDR.N    R7,??DataTable10_5  ;; 0x40000400
        CMP      R0,R7
        BEQ.N    ??TI3_Config_0
        LDR.N    R7,??DataTable10_6  ;; 0x40000800
        CMP      R0,R7
        BEQ.N    ??TI3_Config_0
        LDR.N    R7,??DataTable10_7  ;; 0x40000c00
        CMP      R0,R7
        BNE.N    ??TI3_Config_1
// 2812     {
// 2813         /* Select the Polarity and set the CC3E Bit */
// 2814         tmpccer &= (uint16_t)~((uint16_t)(TIM_CCER_CC3P));
??TI3_Config_0:
        MOVW     R7,#+65023
        ANDS     R4,R7,R4
// 2815         tmpccer |= (uint16_t)(tmp | (uint16_t)TIM_CCER_CC3E);
        MOV      R7,#+256
        ORRS     R7,R7,R5
        ORRS     R4,R7,R4
        B.N      ??TI3_Config_2
// 2816     }
// 2817     else
// 2818     {
// 2819         /* Select the Polarity and set the CC3E Bit */
// 2820         tmpccer &= (uint16_t)~((uint16_t)(TIM_CCER_CC3P | TIM_CCER_CC3NP));
??TI3_Config_1:
        MOVW     R7,#+62975
        ANDS     R4,R7,R4
// 2821         tmpccer |= (uint16_t)(TIM_ICPolarity | (uint16_t)TIM_CCER_CC3E);
        MOV      R7,#+256
        ORRS     R7,R7,R1
        ORRS     R4,R7,R4
// 2822     }
// 2823 
// 2824     /* Write to TIMx CCMR2 and CCER registers */
// 2825     TIMx->CCMR2 = tmpccmr2;
??TI3_Config_2:
        STRH     R6,[R0, #+28]
// 2826     TIMx->CCER = tmpccer;
        STRH     R4,[R0, #+32]
// 2827 }
        POP      {R4-R7}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock89

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     0x40015000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     0x40015400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     0x40001800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DC32     0x40001c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_4:
        DC32     0x40002000
// 2828 
// 2829 /**
// 2830   * @brief  Configure the TI4 as Input.
// 2831   * @param  TIMx: where x can be 1, 2, 3, 4, 5 or 8 to select the TIM peripheral.
// 2832   * @param  TIM_ICPolarity : The Input Polarity.
// 2833   *   This parameter can be one of the following values:
// 2834   *     @arg TIM_ICPolarity_Rising
// 2835   *     @arg TIM_ICPolarity_Falling
// 2836   * @param  TIM_ICSelection: specifies the input to be used.
// 2837   *   This parameter can be one of the following values:
// 2838   *     @arg TIM_ICSelection_DirectTI: TIM Input 4 is selected to be connected to IC4.
// 2839   *     @arg TIM_ICSelection_IndirectTI: TIM Input 4 is selected to be connected to IC3.
// 2840   *     @arg TIM_ICSelection_TRC: TIM Input 4 is selected to be connected to TRC.
// 2841   * @param  TIM_ICFilter: Specifies the Input Capture Filter.
// 2842   *   This parameter must be a value between 0x00 and 0x0F.
// 2843   * @retval None
// 2844   */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock90 Using cfiCommon0
          CFI Function TI4_Config
          CFI NoCalls
        THUMB
// 2845 static void TI4_Config(TIM_TypeDef *TIMx, uint16_t TIM_ICPolarity, uint16_t TIM_ICSelection,
// 2846                        uint16_t TIM_ICFilter)
// 2847 {
TI4_Config:
        PUSH     {R4-R7}
          CFI R7 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
// 2848     uint16_t tmpccmr2 = 0, tmpccer = 0, tmp = 0;
        MOVS     R6,#+0
        MOVS     R4,#+0
        MOVS     R5,#+0
// 2849 
// 2850     /* Disable the Channel 4: Reset the CC4E Bit */
// 2851     TIMx->CCER &= (uint16_t)~((uint16_t)TIM_CCER_CC4E);
        LDRH     R7,[R0, #+32]
        MOVW     R12,#+61439
        ANDS     R7,R12,R7
        STRH     R7,[R0, #+32]
// 2852     tmpccmr2 = TIMx->CCMR2;
        LDRH     R7,[R0, #+28]
        MOVS     R6,R7
// 2853     tmpccer = TIMx->CCER;
        LDRH     R7,[R0, #+32]
        MOVS     R4,R7
// 2854     tmp = (uint16_t)(TIM_ICPolarity << 12);
        LSLS     R7,R1,#+12
        MOVS     R5,R7
// 2855     /* Select the Input and set the filter */
// 2856     tmpccmr2 &= (uint16_t)((uint16_t)(~(uint16_t)TIM_CCMR2_CC4S) & ((uint16_t)~((uint16_t)TIM_CCMR2_IC4F)));
        MOVW     R7,#+3327
        ANDS     R6,R7,R6
// 2857     tmpccmr2 |= (uint16_t)(TIM_ICSelection << 8);
        ORRS     R6,R6,R2, LSL #+8
// 2858     tmpccmr2 |= (uint16_t)(TIM_ICFilter << 12);
        ORRS     R6,R6,R3, LSL #+12
// 2859 
// 2860     if((TIMx == TIM1) || (TIMx == TIM8) || (TIMx == TIM2) || (TIMx == TIM3) ||
// 2861             (TIMx == TIM4) || (TIMx == TIM5))
        LDR.N    R7,??DataTable10_4  ;; 0x40012c00
        CMP      R0,R7
        BEQ.N    ??TI4_Config_0
        LDR.N    R7,??DataTable10_3  ;; 0x40013400
        CMP      R0,R7
        BEQ.N    ??TI4_Config_0
        CMP      R0,#+1073741824
        BEQ.N    ??TI4_Config_0
        LDR.N    R7,??DataTable10_5  ;; 0x40000400
        CMP      R0,R7
        BEQ.N    ??TI4_Config_0
        LDR.N    R7,??DataTable10_6  ;; 0x40000800
        CMP      R0,R7
        BEQ.N    ??TI4_Config_0
        LDR.N    R7,??DataTable10_7  ;; 0x40000c00
        CMP      R0,R7
        BNE.N    ??TI4_Config_1
// 2862     {
// 2863         /* Select the Polarity and set the CC4E Bit */
// 2864         tmpccer &= (uint16_t)~((uint16_t)(TIM_CCER_CC4P));
??TI4_Config_0:
        MOVW     R7,#+57343
        ANDS     R4,R7,R4
// 2865         tmpccer |= (uint16_t)(tmp | (uint16_t)TIM_CCER_CC4E);
        ORRS     R7,R5,#0x1000
        ORRS     R4,R7,R4
        B.N      ??TI4_Config_2
// 2866     }
// 2867     else
// 2868     {
// 2869         /* Select the Polarity and set the CC4E Bit */
// 2870         tmpccer &= (uint16_t)~((uint16_t)(TIM_CCER_CC3P | TIM_CCER_CC4NP));
??TI4_Config_1:
        MOVW     R7,#+32255
        ANDS     R4,R7,R4
// 2871         tmpccer |= (uint16_t)(TIM_ICPolarity | (uint16_t)TIM_CCER_CC4E);
        ORRS     R7,R1,#0x1000
        ORRS     R4,R7,R4
// 2872     }
// 2873     /* Write to TIMx CCMR2 and CCER registers */
// 2874     TIMx->CCMR2 = tmpccmr2;
??TI4_Config_2:
        STRH     R6,[R0, #+28]
// 2875     TIMx->CCER = tmpccer;
        STRH     R4,[R0, #+32]
// 2876 }
        POP      {R4-R7}
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock90

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     0x40014000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     0x40014400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DC32     0x40014800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_3:
        DC32     0x40013400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_4:
        DC32     0x40012c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_5:
        DC32     0x40000400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_6:
        DC32     0x40000800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_7:
        DC32     0x40000c00

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 2877 
// 2878 /**
// 2879   * @}
// 2880   */
// 2881 
// 2882 /**
// 2883   * @}
// 2884   */
// 2885 
// 2886 /**
// 2887   * @}
// 2888   */
// 2889 
// 2890 /******************* (C) COPYRIGHT 2011 STMicroelectronics *****END OF FILE****/
// 
// 3 720 bytes in section .text
// 
// 3 720 bytes of CODE memory
//
//Errors: none
//Warnings: none

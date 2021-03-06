/******************** (C) COPYRIGHT 2011 APTENON ********************
 * File Name          : includes.h
 * Author             : edwin kang
 * Version            : V0.0
 * Date               : 09/8/2011
 * Description        : Main include head file.
 *******************************************************************************/


#ifndef __INCLUDES_H__
#define __INCLUDES_H__
#include "stm32f10x.h"
#include "libr.h"

//#include "stm32_eval.h"
//#include "type.h"
#include "stm32f10x_it.h"
//#include "stm32f10x_lib.h"
//#include "platform_config.h"
#include "type.h"
#include "touch.h"
#include "GPS.h"

#include "menu.h"

#include "main.h"
#include "port.h"
#include "SPIOSD.h"

#include "system_function.h"
#include "Tw8836_func.h"
#include "Pannel.h"
#include "i2c_driver.h"
#include "canbus.h"
#include "radiofm.h"
#include "arm.h"
#include "arm_driver.h"
#include "com.h"
#include "MTN5.h"

#include "system_config.h"
#include "uart_fun.h"

#include "can_config.h" //Miller.Tao2014-09-10
#include "avsw.h"
#include "CanbusSend.h"


#include "stm32f10x_gpio.h"
#include "stm32f10x_adc.h"
#include "stm32f10x_usart.h"
#include "stm32f10x_tim.h"
#include "stm32f10x_spi.h"
#include "stm32f10x_bkp.h"
#include "stm32f10x_pwr.h"
#include "stm32f10x_rcc.h"
#include "stm32f10x_exti.h"
#include "stm32f10x_dma.h"
#include "stm32f10x_rtc.h"
#include "stm32f10x_iwdg.h"
#include "stm32f10x_can.h"
#include "stm32f10x_flash.h"
#include "misc.h"



#endif

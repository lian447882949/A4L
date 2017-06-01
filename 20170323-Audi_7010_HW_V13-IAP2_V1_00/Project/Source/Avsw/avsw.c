/* 这份源代码文件已被未注册的SourceFormatX格式化过 */
/* 如果您想不再添加此类信息，请您注册这个共享软件  */
/* 更多相关信息请访问网站: http://cn.textrush.com  */

/******************** (C) COPYRIGHT 2011 APTENON ********************
 * File Name          : avsw.c
 * Author             : edwin kang
 * Version            : V0.0
 * Date               : 11/30/2011
 * Description        : avsw  file.
 *******************************************************************************/
#define _AVSW_C_
#include "includes.h"
/*lint -e830 -e831 -e534 */ //return val
/*lint  -e525 -e725 -e539 */ //shuojin
/*lint -e528 -e750 -e753 -e749 */

static BYTE AV_i2c_SendByte(BYTE ucVal);

/**************************************************************************/
/*                                                                        */
/**************************************************************************/


static const unsigned char InputSourceTable[] =
{
    0x00,  // TUNER
    0x20,  // CD
    0x40,  // MD
    0x60,  // CDC
    0x80,  // AUX
    0xA0,  // NAVI
    0xC0,  // AC3
    0xE0,  // FULL MUTE
};
/**********************************************************************************************/
#define INPUT_SFMUTE_A_MASK  0xFD
#define INPUT_SFMUTE_B_MASK  0xFB
#define INPUT_SFMUTE_C_MASK  0xF7
#define INPUT_MD_MASK        0xBF
#define INPUT_FC_MASK        0x7F
#define INPUT_SFMUTE_A_ON    0x02
#define INPUT_SFMUTE_B_ON    0x04
#define INPUT_SFMUTE_C_ON    0x08
#define INPUT_SFMUTE_A_OFF   0x00
#define INPUT_SFMUTE_B_OFF   0x00
#define INPUT_SFMUTE_C_OFF   0x00
#define INPUT_MD_MONO        0x40
#define INPUT_MD_STERO       0x00
#define INPUT_FC_R           0x00
#define INPUT_FC_E           0x80
/**********************************************************************************************/
#define OUT_PATH_0_INSOUR_MASK        0xFC
#define OUT_PATH_0_INSOUR_RINT_MASK   0xF3
#define OUT_PATH_0_INSOUR_LINT_MASK   0xCF
#define OUT_PATH_0_INSOUR_INTPRE_MASK 0x7F
enum E_OUTPATH0SOURCE
{
    E_OUTPATH0SOURCE_MAIN,  //Main Path
    E_OUTPATH0SOURCE_AC0,  //AC0
    E_OUTPATH0SOURCE_AC3,  //AC3
    E_OUTPATH0SOURCE_PRETONE  //Main Pre-Tone
};
enum
{
    E_OUTPATH0INTR_NOUSE,  //not allowed
    E_OUTPATH0INTR_INT_EN,  //AC0
    E_OUTPATH0INTR_INT_HALF,  //AC3
    E_OUTPATH0INTR_NORMAL  //Main Pre-Tone
};
enum
{
    E_OUTPATH0INTL_NOUSE,  //not allowed
    E_OUTPATH0INTL_INT_EN,  //AC0
    E_OUTPATH0INTL_INT_HALF,  //AC3
    E_OUTPATH0INTL_NORMAL  //Main Pre-Tone
};
static const unsigned char OutPath0SourceTable[] =
{
    0x00,  //Main Path
    0x01,  //AC0
    0x02,  //AC3
    0x03,  //Main Pre-Tone
};

/**********************************************************************************************/
#define OUTPATH1SOURCE_MASK         0xFC
#define OUTPATH1INTR_MASK           0xFB
#define OUTPATH1INTL_MASK           0xF7
#define OUTPATH2SOURCE_MASK         0xCF
#define OUTPATH2INTR_MASK           0xBF
#define OUTPATH2INTL_MASK           0x7F
enum
{
    E_OUTPATH1SOURCE_MAIN, E_OUTPATH1SOURCE_AC1, E_OUTPATH1SOURCE_AC3, E_OUTPATH1SOURCE_MAIN_PRETONE
};
enum
{
    E_OUTPATH2SOURCE_MAIN, E_OUTPATH2SOURCE_AC1, E_OUTPATH2SOURCE_AC3, E_OUTPATH2SOURCE_MAIN_PRETONE
};
static const unsigned char OutPath1SourceTable[] =
{
    0x00,  //Main Path
    0x01,  //AC1
    0x02,  //AC3
    0x03,  //Main Pre-Tone
};


/**********************************************************************************************/
#define OUT_BUSMUTE_PATH_0_R_MASK    0xFD
#define OUT_BUSMUTE_PATH_0_L_MASK    0xFB
#define OUT_BUSMUTE_PATH_1_R_MASK    0xF7
#define OUT_BUSMUTE_PATH_1_L_MASK    0xEF
#define OUT_BUSMUTE_PATH_2_R_MASK    0xDF
#define OUT_BUSMUTE_PATH_2_L_MASK    0xBF
/**********************************************************************************************/
#define DC_LINE_GAIN_MASK     0xFE
#define DC_PAOUT0_MUTE_MASK   0xFD
#define DC_PAOUT1_MUTE_MASK   0xFB
#define DC_ERROR_MASK         0xF7
static const unsigned char VolTable[] =
{
    0x7F,  // mute// 0
    0x6F,  // -79dB
    0x6E,  // -78dB
    0x6D,  // -77dB
    0x6C,  // -76dB
    0x6B,  // -75dB
    0x6A,  // -74dB
    0x69,  // -73dB
    0x68,  // -72dB
    0x67,  // -71dB
    0x66,  // -70dB// 10
    0x65,  // -69dB
    0x64,  // -68dB
    0x63,  // -67dB
    0x62,  // -66dB
    0x61,  // -65dB
    0x60,  // -64dB
    0x5F,  // -63dB
    0x5E,  // -62dB
    0x5D,  // -61dB
    0x5C,  // -60dB// 20
    0x5B,  // -59dB
    0x5A,  // -58dB
    0x59,  // -57dB
    0x58,  // -56dB
    0x57,  // -55dB
    0x56,  // -54dB
    0x55,  // -53dB
    0x54,  // -52dB
    0x53,  // -51dB
    0x52,  // -50dB// 30
    0x51,  // -49dB
    0x50,  // -48dB
    0x4F,  // -47dB
    0x4E,  // -46dB
    0x4D,  // -45dB
    0x4C,  // -44dB
    0x4B,  // -43dB
    0x4A,  // -42dB
    0x49,  // -41dB
    0x48,  // -40dB// 40
    0x47,  // -39dB
    0x46,  // -38dB
    0x45,  // -37dB
    0x44,  // -36dB
    0x43,  // -35dB
    0x42,  // -34dB
    0x41,  // -33dB
    0x40,  // -32dB
    0x3F,  // -31dB
    0x3E,  // -30dB// 50
    0x3D,  // -29dB
    0x3C,  // -28dB
    0x3B,  // -27dB
    0x3A,  // -26dB
    0x39,  // -25dB
    0x38,  // -24dB
    0x37,  // -23dB
    0x36,  // -22dB
    0x35,  // -21dB
    0x34,  // -20dB// 60
    0x33,  // -19dB
    0x32,  // -18dB
    0x31,  // -17dB
    0x30,  // -16dB
    0x2F,  // -15dB
    0x2E,  // -14dB
    0x2D,  // -13dB
    0x2C,  // -12dB
    0x2B,  // -11dB
    0x2A,  // -10dB// 70
    0x29,  // -9dB
    0x28,  // -8dB
    0x27,  // -7dB
    0x26,  // -6dB
    0x25,  // -5dB
    0x24,  // -4dB
    0x23,  // -3dB
    0x22,  // -2dB
    0x21,  // -1dB
    0x20,  // -0dB// 80
    0x10,  // +0dB
    0x11,  // +1dB
    0x12,  // +2dB
    0x13,  // +3dB
    0x14,  // +4dB
    0x15,  // +5dB
    0x16,  // +6dB
    0x17,  // +7dB
    0x18,  // +8dB
    0x19,  // +9dB
    0x1A,  // +10dB
    0x1B,  // +11dB
    0x1C,  // +12dB
    0x1D,  // +13dB
    0x1E,  // +14dB
    0x1F,  // +15dB
    0x00,  // +16dB
    0x01,  // +17dB
    0x02,  // +18dB
    0x03,  // +19dB
    0x04,  // +20dB
    0x05,  // +21dB
    0x06,  // +22dB
    0x07,  // +23dB
    0x08,  // +24dB
    0x09,  // +25dB
};

static void AV_i2c_Delay(void);
static BYTE AV_i2c_SendByte(BYTE ucVal);
static bool AV_i2c_Start(void);
static void AV_i2c_Stop(void);
static void AV_A_CheckI2CStart(BYTE ucSubAdr);
static void AV_V_CheckI2CStart(BYTE ucSubAdr);
static bool AV_i2c_AccessStart(BYTE ucSlaveAdr, I2C_Direction trans_t);
//static unsigned char A_I2CIn8Bit(void);

/**************************************************************************/
/*                                                                        */
/**************************************************************************/
static void AV_i2cSetSCL_Chk(BYTE bSet);
static void AV_i2cSetSDA_Chk(BYTE bSet);
/////////////////////////////////////////
// Set I2C SCL pin high/low.
//
// Arguments: bSet - high/low bit
/////////////////////////////////////////
static void AV_i2cSetSCL_Chk(BYTE bSet)
{
    WORD ucDummy; // loop dummy
    AV_i2cSetSCL(bSet); // set SCL pin
    if (bSet == _HIGH)
        // if set pin high
    {
        ucDummy = I2C_CHECK_PIN_DUMMY; // initialize dummy
        while ((!AV_i2cSCL_PIN_STATUS()) && (ucDummy--))
            ;
        // check SCL pull high
    }
    else
    {
        ucDummy = I2C_CHECK_PIN_DUMMY; // initialize dummy
        while (AV_i2cSCL_PIN_STATUS() && (ucDummy--))
            ;
    }
}

/////////////////////////////////////////
// Set I2C SDA pin high/low
//
// Arguments: bSet - high/low bit
/////////////////////////////////////////
static void AV_i2cSetSDA_Chk(BYTE bSet)
{
    WORD ucDummy; // loop dummy
    AV_i2cSetSDA(bSet); // set SDA pin
    if (bSet == _HIGH)
        // if set pin high
    {
        ucDummy = I2C_CHECK_PIN_DUMMY; // initialize dummy
        while ((!AV_i2cSDA_PIN_STATUS()) && (ucDummy--))
            ;
        // check SDA pull high
    }
    else
    {
        ucDummy = I2C_CHECK_PIN_DUMMY; // initialize dummy
        while (AV_i2cSDA_PIN_STATUS() && (ucDummy--))
            ;
        // check SDA pull high

    }
}

static void AV_i2c_Delay(void)
{
    u32 i = 50;
    while (i--)
    {

    }
}

/*********************************************
Function:		A_I2CStart
Description:
Write/Modify:	Perry.Liang
Time:		2004-11-11- 12:14:50
 *********************************************/

static bool AV_i2c_Start(void)
{
    bool bStatus = TRUE; // success status
    AV_i2cSetSDA_Chk(_HIGH);
    AV_i2c_Delay();
    AV_i2cSetSCL_Chk(_HIGH);
    AV_i2c_Delay();
    if ((AV_i2cSCL_PIN_STATUS() == _LOW) || (AV_i2cSDA_PIN_STATUS() == _LOW))
    {
        bStatus = FALSE;
    }
    else
    {
        AV_i2cSetSDA(_LOW);
        AV_i2c_Delay();
        AV_i2cSetSCL(_LOW);
    }
    return bStatus;
}

/*********************************************
Function:		AV_i2c_Stop
Description:
Write/Modify:	Perry.Liang
Time:		2004-11-11- 12:14:54
 *********************************************/


static void AV_i2c_Stop(void)
{
    AV_i2cSetSCL(_LOW);
    AV_i2c_Delay();
    AV_i2cSetSDA(_LOW);
    AV_i2c_Delay();
    AV_i2cSetSCL(_HIGH);
    AV_i2c_Delay();
    AV_i2cSetSDA(_HIGH);
}

/*********************************************
Function:		AV_i2c_SendByte
Description:
Write/Modify:	Perry.Liang
Time:		2004-11-11- 12:14:59
 *********************************************/
static BYTE AV_i2c_SendByte(BYTE ucVal)
{
    BYTE ucMask = 0x80;
    BYTE bAck; // acknowledge bit
    while (ucMask)
    {
        if (ucVal & ucMask)
        {
            AV_i2cSetSDA_Chk(_HIGH);
        }
        else
        {
            AV_i2cSetSDA_Chk(_LOW);
        }
        AV_i2c_Delay();
        AV_i2cSetSCL_Chk(_HIGH); // clock
        AV_i2c_Delay();
        AV_i2cSetSCL(_LOW);
        AV_i2c_Delay();
        ucMask >>= 1; // next
    } // while
    // recieve acknowledge
    AV_i2cSetSDA(_HIGH);
    AV_i2c_Delay();
    AV_i2cSetSCL(_HIGH);
    AV_i2c_Delay();
    if (AV_i2cSDA_PIN_STATUS())
    {
        bAck = _HIGH;
    }
    //no ack
    else
    {
        bAck = _LOW;
    }
    // recieve acknowlege
    AV_i2cSetSCL(_LOW);
    return (bAck);
}

//////////////////////////////////////////////////////////////////////////
// I2C access start.
//
// Arguments: ucSlaveAdr - slave address
//            trans_t - I2C_TRANS_WRITE/I2C_TRANS_READ
//////////////////////////////////////////////////////////////////////////
static bool AV_i2c_AccessStart(BYTE ucSlaveAdr, I2C_Direction trans_t)
{
    WORD ucDummy; // loop dummy
    if (trans_t == I2C_READ)
        // check i2c read or write
    {
        ucSlaveAdr = I2C_DEVICE_ADR_READ(ucSlaveAdr);
    }
    // read
    else
    {
        ucSlaveAdr = I2C_DEVICE_ADR_WRITE(ucSlaveAdr);
    }
    // write
    ucDummy = I2C_ACCESS_DUMMY_TIME;
    while (ucDummy--)
    {

        if (AV_i2c_Start() == FALSE)
        {
            continue;
        }
        if (AV_i2c_SendByte(ucSlaveAdr) == I2C_ACKNOWLEDGE)
            // check acknowledge
        {
            return TRUE;
        }
        //printf("ucSlaveAdr====%x", ucSlaveAdr);
        AV_i2c_Stop();
        Delay_1ms(2);
        AV_i2c_Delay();
    }
    return FALSE;
}

static void AV_A_CheckI2CStart(BYTE ucSubAdr)
{
    WORD ucDummy; // loop dummy
    ucDummy = I2C_ACCESS_DUMMY_TIME;
    while (ucDummy--)
    {
        if (AV_i2c_AccessStart(AV_A_SLAVE_ADD, I2C_WRITE) == FALSE)
        {
            continue;
        }
        if (AV_i2c_SendByte(ucSubAdr) == I2C_NON_ACKNOWLEDGE)
            // check non-acknowledge
        {
            continue;
        }
        break;
    } // while
}
static void AV_TDA7719_CheckI2CStart(BYTE ucSubAdr)
{
    WORD ucDummy; // loop dummy
    ucDummy = I2C_ACCESS_DUMMY_TIME;
    while (ucDummy--)
    {
        if (AV_i2c_AccessStart(AV_TDA7719_SLAVE_ADD, I2C_WRITE) == FALSE)
        {
            continue;
        }
        if (AV_i2c_SendByte(ucSubAdr) == I2C_NON_ACKNOWLEDGE)
            // check non-acknowledge
        {
            continue;
        }
        break;
    } // while
}

static void AV_V_CheckI2CStart(BYTE ucSubAdr)
{
    WORD ucDummy; // loop dummy
    ucDummy = I2C_ACCESS_DUMMY_TIME;
    while (ucDummy--)
    {
        if (AV_i2c_AccessStart(AV_V_SLAVE_ADD, I2C_WRITE) == FALSE)
        {
            continue;
        }
        if (AV_i2c_SendByte(ucSubAdr) == I2C_NON_ACKNOWLEDGE)
            // check non-acknowledge
        {
            continue;
        }
        break;
    } // while
}



/**************************************************************************/
/*                                                                        */
/**************************************************************************/

void De_Audio_SetGpsVol(u8 vol)
{
    u8 i;



    //AudioI2CBuf[15] &= 0x80;
    //AudioI2CBuf[16] &= 0x80;

    if (vol >= VOL_MAX)
    {
        vol = VOL_MAX;
    }
    AudioI2CBuf[15] = VolTable[vol + 50]; //Output section, Volume 1L,    // 改变用户反映的噪音，没改变前为52
    AudioI2CBuf[16] = VolTable[vol + 50];


    AV_A_CheckI2CStart(15 | 0x20);
    for (i = 15; i <= 16; i++)
    {
        AV_i2c_SendByte(AudioI2CBuf[i]);
    }
    AV_i2c_Stop();

}
void ChipLevelAudioMainSource_TDA7719(BYTE MainSource_iput, BYTE Source_output)
{
    switch(MainSource_iput)
    {
    case CH_IN0:
        AudioI2CBuf[0] &= 0xF8;
        AudioI2CBuf[0] |=CH_IN0 ;//InputSourceTable[0];
        break;
    case CH_IN1:
        AudioI2CBuf[0] &= 0xF8;
        AudioI2CBuf[0] |=CH_IN1 ;//InputSourceTable[0];
        break;
    case CH_IN2:
        AudioI2CBuf[0] &= 0xF8;
        AudioI2CBuf[0] |=CH_IN2 ;//InputSourceTable[0];
        break;
    case CH_IN3:
        AudioI2CBuf[0] &= 0xF8;
        AudioI2CBuf[0] |=CH_IN3 ;//InputSourceTable[0];
        break;
    case CH_IN4:
        AudioI2CBuf[0] &= 0xF8;
        AudioI2CBuf[0] |=CH_IN4 ;//InputSourceTable[0];
        break;
    case CH_IN5:
        AudioI2CBuf[0] &= 0xF8;
        AudioI2CBuf[0] |=CH_IN5 ;//InputSourceTable[0];
        break;
    case CH_IN6:
        AudioI2CBuf[0] &= 0xF8;
        AudioI2CBuf[0] |=CH_IN6 ;//InputSourceTable[0];
        break;
    case CH_IN7:
        AudioI2CBuf[0] &= 0xF8;
        AudioI2CBuf[0] |=CH_IN7 ;//InputSourceTable[0];
        break;
    default:
        AudioI2CBuf[0] &= 0xF8;
        AudioI2CBuf[0] |=CH_IN0 ;//InputSourceTable[0];
        break;

    }

    switch(Source_output)
    {
    case OUT_MAIN_PATH:
        \
        AudioI2CBuf[3] &= 0xEF;
        AudioI2CBuf[3] |=OUT_MAIN_PATH ;//InputSourceTable[0];
        break;
    case OUT_DIRC_PATH:
        AudioI2CBuf[3] &= 0xEF;
        AudioI2CBuf[3] |=OUT_DIRC_PATH ;//InputSourceTable[0];
        break;
    default:
        AudioI2CBuf[3] &= 0xEF;
        AudioI2CBuf[3] |=OUT_MAIN_PATH ;
        break;

    }
    AV_TDA7719_CheckI2CStart(0x00 | 0x00);
    AV_i2c_SendByte(AudioI2CBuf[0x00]);
    AV_i2c_Stop();

    AV_TDA7719_CheckI2CStart(3 | 0x00);
    AV_i2c_SendByte(AudioI2CBuf[3]);
    AV_i2c_Stop();
}
#define VOL_N15_dB 0x00
#define VOL_N14_dB 0x01
#define VOL_N13_dB 0x02
#define VOL_N12_dB 0x03
#define VOL_N11_dB 0x04
#define VOL_N10_dB 0x05
#define VOL_N9_dB 0x06
#define VOL_N8_dB 0x07
#define VOL_N7_dB 0x08
#define VOL_N6_dB 0x09
#define VOL_N5_dB 0x0A
#define VOL_N4_dB 0x0B
#define VOL_N3_dB 0x0C
#define VOL_N2_dB 0x0D
#define VOL_N1_dB 0x0E
#define VOL_N0_dB 0x0F
#define VOL_P0_dB 0x1F
#define VOL_P1_dB 0x1E
#define VOL_P2_dB 0x1D
#define VOL_P3_dB 0x1C
#define VOL_P4_dB 0x1B
#define VOL_P5_dB 0x1A
#define VOL_P6_dB 0x19
#define VOL_P7_dB 0x18
#define VOL_P8_dB 0x17
#define VOL_P9_dB 0x16
#define VOL_P10_dB 0x15
#define VOL_P11_dB 0x14
#define VOL_P12_dB 0x13
#define VOL_P13_dB 0x12
#define VOL_P14_dB 0x11
#define VOL_P15_dB 0x10

/*
*disable navi out 
*
*
*/
void DisableNaviAudiout(void)
{
   if(Audio_IC_Addr==AV_TDA7719_SLAVE_ADD)
   {

       AudioI2CBuf[3] = 0xFF;
   		AV_TDA7719_CheckI2CStart(3 | 0x00);
		//for (i = 13; i <= 16; i++)
		{
			AV_i2c_SendByte(AudioI2CBuf[3]);
		}
		AV_i2c_Stop();
   }
}
/*
*enable navi out 
*
*
*/
void EnableNaviAudiout(void)
{
   if(Audio_IC_Addr==AV_TDA7719_SLAVE_ADD)
   {

       AudioI2CBuf[3] = 0xF0;
   		AV_TDA7719_CheckI2CStart(3 | 0x00);
		//for (i = 13; i <= 16; i++)
		{
			AV_i2c_SendByte(AudioI2CBuf[3]);
		}
		AV_i2c_Stop();
   }
}

void De_Audio_SetVol(u8 Gpsvol, u8 uAdjVolMode)
{
    u8 i;
    if(Audio_IC_Addr==AV_TDA7719_SLAVE_ADD)
    {

        //AudioI2CBuf[13] &= 0x80;
        //AudioI2CBuf[14] &= 0x80;
        //AudioI2CBuf[15] &= 0x80;
        //AudioI2CBuf[16] &= 0x80;

        if (Gpsvol >= VOL_MAX)
        {
            Gpsvol = VOL_MAX;
        }
        //AudioI2CBuf[15] = 0x7F;//VolTable[Gpsvol + 48]; //0x17//Output section, Volume 1L,    // 改变用户反映的噪音，没改变前为52
        //AudioI2CBuf[16] =0x7F;//VolTable[Gpsvol + 48];//+50

        AudioI2CBuf[17] = 0x00;//VolTable[Gpsvol + 48]; //0x17//Output section, Volume 1L,    // 改变用户反映的噪音，没改变前为52
        AudioI2CBuf[18] = 0x00;//VolTable[Gpsvol + 48];//+50
        //AudioI2CBuf[15] |= VolTable[vol + 42]; //Output section, Volume 1L,	 // 改变用户反映的噪音，没改变前为52
        //AudioI2CBuf[16] |= VolTable[vol + 42]; //Output section, Volume 1R,
        //AudioI2CBuf[13] = 0x38;//VolTable[77]; //Output section, Volume 0L,
        //AudioI2CBuf[14] = 0x38;//VolTable[77]; //Output section, Volume 0R,
        //---------------------------------------------------------
        if (uAdjVolMode == SYSTEM_MODE_IN_BT)
        {
            //AudioI2CBuf[13] = 0x27;// VolTable[77]; //Output section, Volume 0L,
            //AudioI2CBuf[14] = 0x27;// VolTable[77]; //Output section, Volume 0R,
            AudioI2CBuf[8] &= 0xE0;// VolTable[77]; //Output section, Volume 0L,
            AudioI2CBuf[8] |= VOL_P12_dB;
            //AudioI2CBuf[14] = 0x08;// VolTable[77]; //Output section, Volume 0R,	   //导航带蓝牙

            AV_TDA7719_CheckI2CStart(8 | 0x00);
            //for (i = 13; i <= 16; i++)
            {
                AV_i2c_SendByte(AudioI2CBuf[8]);
            }
            AV_i2c_Stop();
        }
        else if (uAdjVolMode == SYSTEM_MODE_IN_NAVI)
        {
            //AudioI2CBuf[13] = 0x08;// VolTable[77]; //Output section, Volume 0L,
            //AudioI2CBuf[14] = 0x08;// VolTable[77]; //Output section, Volume 0R,

            AudioI2CBuf[8] &= 0xE0;// VolTable[77]; //Output section, Volume 0L,
            AudioI2CBuf[8] |= VOL_P14_dB;//VOL_P12_dB;
            AV_TDA7719_CheckI2CStart(8 | 0x00);
            //for (i = 13; i <= 16; i++)
            {
                AV_i2c_SendByte(AudioI2CBuf[8]);
            }
            AV_i2c_Stop();
        }
        else if (uAdjVolMode == SYSTEM_MODE_IN_DVD)
        {
            //AudioI2CBuf[13] =0x7f;//0x28;//0x2C;//0x25;//0x29;//0x22;//0x25;//0x10 ;//0x19;//0x1E;//0x27;//0x38;//VolTable[77]; //Output section, Volume 0L,
            //AudioI2CBuf[14] =0x7f;//0x28;//0x2C;//0x25;//0x29;//0x22;//0x25;//0x10 ;//0x19;//0x1E;//0x27;//VolTable[77]; //Output section, Volume 0R,
            AudioI2CBuf[8] &= 0xE0;// VolTable[77]; //Output section, Volume 0L,
            if(Sys.FS_select.car_type_onoff_id==0x02)
                AudioI2CBuf[8] |= VOL_P9_dB;//VOL_P13_dB;//VOL_P15_dB;//
            else
                AudioI2CBuf[8] |= VOL_P13_dB;
            AV_TDA7719_CheckI2CStart(8| 0x00);
            //for (i = 13; i <= 16; i++)
            {
                AV_i2c_SendByte(AudioI2CBuf[8]);
            }
            AV_i2c_Stop();
        }
#if 0//miller.tao20151211
        else if (uAdjVolMode == SYSTEM_MODE_IN_InterPhone)
        {
            //AudioI2CBuf[13] =0x28;//0x2C;//0x25;//0x29;//0x22;//0x25;//0x10 ;//0x19;//0x1E;//0x27;//0x38;//VolTable[77]; //Output section, Volume 0L,
            //AudioI2CBuf[14] =0x28;//0x2C;//0x25;//0x29;//0x22;//0x25;//0x10 ;//0x19;//0x1E;//0x27;//VolTable[77]; //Output section, Volume 0R,
            //15kuan =0x2C;13kuan = 0x25
            AudioI2CBuf[8] &= 0xE0;// VolTable[77]; //Output section, Volume 0L,
            AudioI2CBuf[8] |= VOL_P9_dB;
            AV_TDA7719_CheckI2CStart(8 | 0x00);
            //for (i = 13; i <= 16; i++)
            {
                AV_i2c_SendByte(AudioI2CBuf[8]);
            }
            AV_i2c_Stop();
        }
#endif
        else if (uAdjVolMode == SYSTEM_MODE_IN_SD)
        {
            //AudioI2CBuf[13] = 0x25;//0x10;//0x19;//0x27;// VolTable[77]; //Output section, Volume 0L,
            //AudioI2CBuf[14] = 0x25;//0x10;//0x19;//0x27;// VolTable[77]; //Output section, Volume 0R,
            AudioI2CBuf[8] &= 0xE0;// VolTable[77]; //Output section, Volume 0L,
            AudioI2CBuf[8] |= VOL_P12_dB;
            AV_TDA7719_CheckI2CStart(8 | 0x00);
            //for (i = 13; i <= 16; i++)
            {
                AV_i2c_SendByte(AudioI2CBuf[8]);
            }
            AV_i2c_Stop();
        }
        else if (uAdjVolMode == SYSTEM_MODE_IN_USB)
        {
            //AudioI2CBuf[13] = 0x25;//0x10;//0x19;//0x2d;// VolTable[77]; //Output section, Volume 0L,
            //AudioI2CBuf[14] = 0x25;//0x10;//0x19;//0x2d;// VolTable[77]; //Output section, Volume 0R,
            AudioI2CBuf[8] &= 0xE0;// VolTable[77]; //Output section, Volume 0L,
            AudioI2CBuf[8] |= VOL_P12_dB;
            AV_TDA7719_CheckI2CStart(8 | 0x00);
            //for (i = 13; i <= 16; i++)
            {
                AV_i2c_SendByte(AudioI2CBuf[8]);
            }
            AV_i2c_Stop();
        }

        else if (uAdjVolMode == SYSTEM_MODE_IN_TV)
        {
            //AudioI2CBuf[13] = 0x22;//0x10;//0x15;//0x38;// VolTable[77]; //Output section, Volume 0L,
            //AudioI2CBuf[14] = 0x22;//0x10;//0x15;//0x38;// VolTable[77]; //Output section, Volume 0R,
            AudioI2CBuf[8] &= 0xE0;// VolTable[77]; //Output section, Volume 0L,
            AudioI2CBuf[8] |= VOL_P12_dB;
            AV_TDA7719_CheckI2CStart(8 | 0x00);
            //for (i = 13; i <= 16; i++)
            {
                AV_i2c_SendByte(AudioI2CBuf[8]);
            }
            AV_i2c_Stop();
        }
        else if ((uAdjVolMode == SYSTEM_MODE_IN_AUX)||(uAdjVolMode == SYSTEM_MODE_IN_mp5_music))
        {
            //AudioI2CBuf[13] = 0x08;//0x25;//0x10;//0x19;// VolTable[77]; //Output section, Volume 0L,
            //AudioI2CBuf[14] = 0x08;//0x25;//0x10;//0x19;// VolTable[77]; //Output section, Volume 0R,
            AudioI2CBuf[8] &= 0xE0;// VolTable[77]; //Output section, Volume 0L,
            AudioI2CBuf[8] |= VOL_P12_dB;
            AV_TDA7719_CheckI2CStart(8 | 0x00);
            //for (i = 13; i <= 16; i++)
            {
                AV_i2c_SendByte(AudioI2CBuf[8]);
            }
            AV_i2c_Stop();
        }
        else if (uAdjVolMode == SYSTEM_MODE_IN_REAR)
        {

        }
        else if (uAdjVolMode == SYSTEM_MODE_IN_CAR_MEDIA)
        {

        }

        else
        {
            //AudioI2CBuf[13] = 0x19;//0x1E;//0x27;//0x38;//VolTable[77]; //Output section, Volume 0L,
            //AudioI2CBuf[14] = 0x19;//0x1E;//0x27;//VolTable[77]; //Output section, Volume 0R,
            AudioI2CBuf[8] &= 0xE0;// VolTable[77]; //Output section, Volume 0L,
            AudioI2CBuf[8] |= VOL_P12_dB;
            AV_TDA7719_CheckI2CStart(8 | 0x00);
            //for (i = 13; i <= 16; i++)
            {
                AV_i2c_SendByte(AudioI2CBuf[8]);
            }
            AV_i2c_Stop();

        }

        AV_TDA7719_CheckI2CStart(17 | 0x20);
        for (i = 17; i <= 18; i++)
        {
            AV_i2c_SendByte(AudioI2CBuf[i]);
        }
        AV_i2c_Stop();
    }
    else
    {
        //AudioI2CBuf[13] &= 0x80;
        //AudioI2CBuf[14] &= 0x80;
        //AudioI2CBuf[15] &= 0x80;
        //AudioI2CBuf[16] &= 0x80;

        if (Gpsvol >= VOL_MAX)
        {
            Gpsvol = VOL_MAX;
        }
        AudioI2CBuf[15] = VolTable[Gpsvol + 52]; //0x17//Output section, Volume 1L,    // 改变用户反映的噪音，没改变前为52
        AudioI2CBuf[16] = VolTable[Gpsvol + 52];//+50

        //AudioI2CBuf[15] |= VolTable[vol + 42]; //Output section, Volume 1L,    // 改变用户反映的噪音，没改变前为52
        //AudioI2CBuf[16] |= VolTable[vol + 42]; //Output section, Volume 1R,
        //AudioI2CBuf[13] = 0x38;//VolTable[77]; //Output section, Volume 0L,
        //AudioI2CBuf[14] = 0x38;//VolTable[77]; //Output section, Volume 0R,
        //---------------------------------------------------------
        if (uAdjVolMode == SYSTEM_MODE_IN_BT)
        {
            //AudioI2CBuf[13] = 0x27;// VolTable[77]; //Output section, Volume 0L,
            //AudioI2CBuf[14] = 0x27;// VolTable[77]; //Output section, Volume 0R,
            AudioI2CBuf[13] = 0x08;// VolTable[77]; //Output section, Volume 0L,
            AudioI2CBuf[14] = 0x08;// VolTable[77]; //Output section, Volume 0R,       //导航带蓝牙

            AV_A_CheckI2CStart(13 | 0x20);
            for (i = 13; i <= 16; i++)
            {
                AV_i2c_SendByte(AudioI2CBuf[i]);
            }
            AV_i2c_Stop();
        }
        else if (uAdjVolMode == SYSTEM_MODE_IN_NAVI)
        {
            AudioI2CBuf[13] = 0x08;// VolTable[77]; //Output section, Volume 0L,
            AudioI2CBuf[14] = 0x08;// VolTable[77]; //Output section, Volume 0R,

            AV_A_CheckI2CStart(13 | 0x20);
            for (i = 13; i <= 16; i++)
            {
                AV_i2c_SendByte(AudioI2CBuf[i]);
            }
            AV_i2c_Stop();
        }
        else if (uAdjVolMode == SYSTEM_MODE_IN_DVD)
        {
            if(gCarTypeCode==0xf1)
            {
                AudioI2CBuf[13] =0x20;//0x19;//0x10 ;//0x19;//0x1E;//0x27;//0x38;//VolTable[77]; //Output section, Volume 0L,
                AudioI2CBuf[14] =0x20;//0x19;//0x10 ;//0x19;//0x1E;//0x27;//VolTable[77]; //Output section, Volume 0R,
            }
            else
            {
                AudioI2CBuf[13] =0x17;//0x19;//0x10 ;//0x19;//0x1E;//0x27;//0x38;//VolTable[77]; //Output section, Volume 0L,
                AudioI2CBuf[14] =0x17;//0x19;//0x10 ;//0x19;//0x1E;//0x27;//VolTable[77]; //Output section, Volume 0R,
            }
            AV_A_CheckI2CStart(13 | 0x20);
            for (i = 13; i <= 16; i++)
            {
                AV_i2c_SendByte(AudioI2CBuf[i]);
            }
            AV_i2c_Stop();
        }
        else if (uAdjVolMode == SYSTEM_MODE_IN_SD)
        {
            AudioI2CBuf[13] = 0x25;//0x10;//0x19;//0x27;// VolTable[77]; //Output section, Volume 0L,
            AudioI2CBuf[14] = 0x25;//0x10;//0x19;//0x27;// VolTable[77]; //Output section, Volume 0R,

            AV_A_CheckI2CStart(13 | 0x20);
            for (i = 13; i <= 16; i++)
            {
                AV_i2c_SendByte(AudioI2CBuf[i]);
            }
            AV_i2c_Stop();
        }
        else if (uAdjVolMode == SYSTEM_MODE_IN_USB)
        {
            AudioI2CBuf[13] = 0x25;//0x10;//0x19;//0x2d;// VolTable[77]; //Output section, Volume 0L,
            AudioI2CBuf[14] = 0x25;//0x10;//0x19;//0x2d;// VolTable[77]; //Output section, Volume 0R,

            AV_A_CheckI2CStart(13 | 0x20);
            for (i = 13; i <= 16; i++)
            {
                AV_i2c_SendByte(AudioI2CBuf[i]);
            }
            AV_i2c_Stop();
        }

        else if (uAdjVolMode == SYSTEM_MODE_IN_TV)
        {
            AudioI2CBuf[13] = 0x15;//0x10;//0x15;//0x38;// VolTable[77]; //Output section, Volume 0L,
            AudioI2CBuf[14] = 0x15;//0x10;//0x15;//0x38;// VolTable[77]; //Output section, Volume 0R,

            AV_A_CheckI2CStart(13 | 0x20);
            for (i = 13; i <= 16; i++)
            {
                AV_i2c_SendByte(AudioI2CBuf[i]);
            }
            AV_i2c_Stop();
        }
        else if ((uAdjVolMode == SYSTEM_MODE_IN_AUX)||(uAdjVolMode == SYSTEM_MODE_IN_mp5_music))
        {
            AudioI2CBuf[13] = 0x08;//0x25;//0x10;//0x19;// VolTable[77]; //Output section, Volume 0L,
            AudioI2CBuf[14] = 0x08;//0x25;//0x10;//0x19;// VolTable[77]; //Output section, Volume 0R,

            AV_A_CheckI2CStart(13 | 0x20);
            for (i = 13; i <= 16; i++)
            {
                AV_i2c_SendByte(AudioI2CBuf[i]);
            }
            AV_i2c_Stop();
        }
        else if (uAdjVolMode == SYSTEM_MODE_IN_REAR)
        {

        }
        else if (uAdjVolMode == SYSTEM_MODE_IN_CAR_MEDIA)
        {

        }

        else
        {
            AudioI2CBuf[13] = 0x19;//0x1E;//0x27;//0x38;//VolTable[77]; //Output section, Volume 0L,
            AudioI2CBuf[14] = 0x19;//0x1E;//0x27;//VolTable[77]; //Output section, Volume 0R,

            AV_A_CheckI2CStart(13 | 0x20);
            for (i = 13; i <= 16; i++)
            {
                AV_i2c_SendByte(AudioI2CBuf[i]);
            }
            AV_i2c_Stop();

        }

        AV_A_CheckI2CStart(15 | 0x20);
        for (i = 15; i <= 16; i++)
        {
            AV_i2c_SendByte(AudioI2CBuf[i]);
        }
        AV_i2c_Stop();
    }

}
/**************************************************************************/
/*                                                                        */
/**************************************************************************/
void ChipLevelAudioMainSource(BYTE MainSource_A, BYTE SubSource_0)
{



    switch (MainSource_A) //Input section, signal paths A
    {
    case E_INPUT_SOURCE_TUNER:
        AudioI2CBuf[6] &= 0x1F;
        AudioI2CBuf[6] |= InputSourceTable[0];
        break;
    case E_INPUT_SOURCE_CD:
        AudioI2CBuf[6] &= 0x1F;
        AudioI2CBuf[6] |= InputSourceTable[1];
        break;
    case E_INPUT_SOURCE_MD:
        AudioI2CBuf[6] &= 0x1F;
        AudioI2CBuf[6] |= InputSourceTable[2];
        break;
    case E_INPUT_SOURCE_CDC:
        AudioI2CBuf[6] &= 0x1F;
        AudioI2CBuf[6] |= InputSourceTable[3];
        break;
    case E_INPUT_SOURCE_AUX:
        AudioI2CBuf[6] &= 0x1F;
        AudioI2CBuf[6] |= InputSourceTable[4];
        break;
    case E_INPUT_SOURCE_NAVI:
        AudioI2CBuf[6] &= 0x1F;
        AudioI2CBuf[6] |= InputSourceTable[5];
        break;
    case E_INPUT_SOURCE_AC3:
        AudioI2CBuf[6] &= 0x1F;
        AudioI2CBuf[6] |= InputSourceTable[6];
        break;
    case E_INPUT_SOURCE_MUTE:
        AudioI2CBuf[6] &= 0x1F;
        AudioI2CBuf[6] |= InputSourceTable[7];
        break;
    default:
        AudioI2CBuf[6] &= 0x1F;
        AudioI2CBuf[6] |= InputSourceTable[7];
        break;
    }




    //----------------------------------------------------



    switch (SubSource_0) //Output section, signal path 1
    {
    case E_INPUT_SUBSOURCE_MAIN:
        AudioI2CBuf[10] = 0x00;
        AudioI2CBuf[10] |= 0x7C;
        AudioI2CBuf[10] |= OutPath0SourceTable[0];
        break;
    case E_INPUT_SUBSOURCE_AC0:
        AudioI2CBuf[10] = 0x00;
        AudioI2CBuf[10] |= 0x7C;
        AudioI2CBuf[10] |= OutPath0SourceTable[1];
        break;
    case E_INPUT_SUBSOURCE_AC1:
        AudioI2CBuf[10] = 0x00;
        AudioI2CBuf[10] |= 0x7C;
        AudioI2CBuf[10] |= OutPath0SourceTable[1];
        break;
    case E_INPUT_SUBSOURCE_AC3:
        AudioI2CBuf[10] = 0x00;
        AudioI2CBuf[10] |= 0x7C;
        AudioI2CBuf[10] |= OutPath0SourceTable[2];
        break;
    case E_INPUT_SUBSOURCE_PRE:
        AudioI2CBuf[10] = 0x00;
        AudioI2CBuf[10] |= 0x7C;
        AudioI2CBuf[10] |= OutPath0SourceTable[3];
        break;
    default:
        AudioI2CBuf[10] = 0x00;
        AudioI2CBuf[10] |= 0x7C;
        AudioI2CBuf[10] |= OutPath0SourceTable[3];
        break;
    }

    AV_A_CheckI2CStart(0x06 | 0x00);
    AV_i2c_SendByte(AudioI2CBuf[0x06]);
    AV_i2c_Stop();

    AV_A_CheckI2CStart(10 | 0x00);
    AV_i2c_SendByte(AudioI2CBuf[10]);
    AV_i2c_Stop();





}


/**************************************************************************/
/*                                                                        */
/**************************************************************************/
void ChipLevelAudioSPKSource(BYTE MainSource_A, BYTE SubSource_1)
{

    //-----------------------------------------------

    switch (MainSource_A) //Input section, signal paths A
    {
    case E_INPUT_SOURCE_TUNER:
    case E_INPUT_SOURCE_CD:
    case E_INPUT_SOURCE_CDC:
    case E_INPUT_SOURCE_MD:
    case E_INPUT_SOURCE_MUTE:
    case E_INPUT_SOURCE_AC3://close gps sound
        AudioI2CBuf[11] = 0x00;

        AudioI2CBuf[11] &= 0xFC;//pre sel as input
        AudioI2CBuf[11] |= OutPath1SourceTable[3];
        //
        AudioI2CBuf[11] |= 0x3C;//interrup close


        break;
    case E_INPUT_SOURCE_AUX:
        AudioI2CBuf[11] = 0x00;

        AudioI2CBuf[11] &= 0xFC;//pre sel as input
        AudioI2CBuf[11] |= OutPath1SourceTable[3];
        //


        AudioI2CBuf[11] = 0x33;//interrup open
        break;
    default:
        AudioI2CBuf[11] = 0x00;

        AudioI2CBuf[11] &= 0xFC;//pre sel as input
        AudioI2CBuf[11] |= OutPath1SourceTable[3];
        //
        AudioI2CBuf[11] |= 0x3C;//interrup close
        break;
    }


    AV_A_CheckI2CStart(11 | 0x00);
    AV_i2c_SendByte(AudioI2CBuf[11]);
    AV_i2c_Stop();


}

/**************************************************************************/
/*                                                                        */
/**************************************************************************/
void ChipLevelAudioAUX1Source(BYTE MainSource_B)
{
    if (MainSource_B != E_INPUT_SOURCE_NUM)
    {

        switch (MainSource_B) //Input section, signal paths B
        {
        case E_INPUT_SOURCE_TUNER:
            AudioI2CBuf[7] &= 0x1F;
            AudioI2CBuf[7] |= InputSourceTable[0];
            break;
        case E_INPUT_SOURCE_CD:
            AudioI2CBuf[7] &= 0x1F;
            AudioI2CBuf[7] |= InputSourceTable[1];
            break;
        case E_INPUT_SOURCE_MD:
            AudioI2CBuf[7] &= 0x1F;
            AudioI2CBuf[7] |= InputSourceTable[2];
            break;
        case E_INPUT_SOURCE_CDC:
            AudioI2CBuf[7] &= 0x1F;
            AudioI2CBuf[7] |= InputSourceTable[3];
            break;
        case E_INPUT_SOURCE_AUX:
            AudioI2CBuf[7] &= 0x1F;
            AudioI2CBuf[7] |= InputSourceTable[4];
            break;
        case E_INPUT_SOURCE_NAVI:
            AudioI2CBuf[7] &= 0x1F;
            AudioI2CBuf[7] |= InputSourceTable[5];
            break;
        case E_INPUT_SOURCE_AC3:
            AudioI2CBuf[7] &= 0x1F;
            AudioI2CBuf[7] |= InputSourceTable[6];
            break;
        case E_INPUT_SOURCE_MUTE:
            AudioI2CBuf[7] &= 0x1F;
            AudioI2CBuf[7] |= InputSourceTable[7];
            break;
        default:
            AudioI2CBuf[7] &= 0x1F;
            AudioI2CBuf[7] |= InputSourceTable[7];
            break;
        }

        AV_A_CheckI2CStart(7 | 0x00);
        AV_i2c_SendByte(AudioI2CBuf[7]);
        AV_i2c_Stop();
    }
}

/**************************************************************************/
/*                                                                        */
/**************************************************************************/
void ChipLevelAudioAUX2Source(BYTE MainSource_C)
{
    if (MainSource_C != E_INPUT_SOURCE_NUM)
    {

        switch (MainSource_C) //Input section, signal paths C
        {
        case E_INPUT_SOURCE_TUNER:
            AudioI2CBuf[8] &= 0x1F;
            AudioI2CBuf[8] |= InputSourceTable[0];
            break;
        case E_INPUT_SOURCE_CD:
            AudioI2CBuf[8] &= 0x1F;
            AudioI2CBuf[8] |= InputSourceTable[1];
            break;
        case E_INPUT_SOURCE_MD:
            AudioI2CBuf[8] &= 0x1F;
            AudioI2CBuf[8] |= InputSourceTable[2];
            break;
        case E_INPUT_SOURCE_CDC:
            AudioI2CBuf[8] &= 0x1F;
            AudioI2CBuf[8] |= InputSourceTable[3];
            break;
        case E_INPUT_SOURCE_AUX:
            AudioI2CBuf[8] &= 0x1F;
            AudioI2CBuf[8] |= InputSourceTable[4];
            break;
        case E_INPUT_SOURCE_NAVI:
            AudioI2CBuf[8] &= 0x1F;
            AudioI2CBuf[8] |= InputSourceTable[5];
            break;
        case E_INPUT_SOURCE_AC3:
            AudioI2CBuf[8] &= 0x1F;
            AudioI2CBuf[8] |= InputSourceTable[6];
            break;
        case E_INPUT_SOURCE_MUTE:
            AudioI2CBuf[8] &= 0x1F;
            AudioI2CBuf[8] |= InputSourceTable[7];
            break;
        default:
            AudioI2CBuf[8] &= 0x1F;
            AudioI2CBuf[8] |= InputSourceTable[7];
            break;
        }
        AV_A_CheckI2CStart(8 | 0x00);
        AV_i2c_SendByte(AudioI2CBuf[8]);
        AV_i2c_Stop();
    }
}

/**************************************************************************/
/*                                                                        */
/**************************************************************************/
void AudioMainSource(BYTE source)
{

    if(Audio_IC_Addr==AV_TDA7719_SLAVE_ADD)
    {


        switch (source)
        {
        case E_AUDIO_SOURCE_CMMB_DVB_TV:
            //ChipLevelAudioMainSource(E_INPUT_SOURCE_TUNER, E_INPUT_SUBSOURCE_PRE);
            //ChipLevelAudioMainSource_TDA7719(E_INPUT_SOURCE_CD, E_INPUT_SUBSOURCE_PRE);
            ChipLevelAudioMainSource_TDA7719(CH_IN0, OUT_MAIN_PATH);
            break;
        case E_AUDIO_SOURCE_IPOD:
            ChipLevelAudioMainSource_TDA7719(CH_IN0, OUT_MAIN_PATH);
            break;
        case E_AUDIO_SOURCE_SPK:
            ChipLevelAudioMainSource_TDA7719(CH_IN4, OUT_MAIN_PATH);
            break;
        case E_AUDIO_SOURCE_AV:
#ifdef BMW_MAIN_BOARD_VER_3
#ifdef  AUDI_A4_TFT_NEW_BOARD
            ChipLevelAudioMainSource_TDA7719(E_INPUT_SOURCE_AC3, E_INPUT_SUBSOURCE_PRE);
#else
            ChipLevelAudioMainSource_TDA7719(E_INPUT_SOURCE_CDC, E_INPUT_SUBSOURCE_PRE);
            //ChipLevelAudioMainSource(E_INPUT_SOURCE_CD, E_INPUT_SUBSOURCE_PRE);
#endif
#else
            ChipLevelAudioMainSource_TDA7719(CH_IN0, OUT_MAIN_PATH);
#endif
            break;
        case E_AUDIO_SOURCE_GPS:
            ChipLevelAudioMainSource_TDA7719(CH_IN6, OUT_MAIN_PATH);// 2
            break;
        case E_AUDIO_SOURCE_DVD:
#ifdef BMW_MAIN_BOARD_VER_3
#ifdef  AUDI_A4_TFT_NEW_BOARD
            ChipLevelAudioMainSource_TDA7719(E_INPUT_SOURCE_CDC, E_INPUT_SUBSOURCE_PRE);
            //ChipLevelAudioMainSource(E_INPUT_SOURCE_CD, E_INPUT_SUBSOURCE_PRE);
#else
            ChipLevelAudioMainSource_TDA7719(E_INPUT_SOURCE_AC3, E_INPUT_SUBSOURCE_PRE);
#endif
#else
            //ChipLevelAudioMainSource(E_INPUT_SOURCE_AC3, E_INPUT_SUBSOURCE_PRE);//Miller.Tao20150129
            //ChipLevelAudioMainSource_TDA7719(CH_IN5, OUT_MAIN_PATH);

            ChipLevelAudioMainSource_TDA7719(CH_IN5, OUT_DIRC_PATH);
#endif


            break;
        case E_AUDIO_SOURCE_MUTE:

            //ChipLevelAudioMainSource_TDA7719(E_INPUT_SOURCE_MUTE, E_INPUT_SUBSOURCE_AC0);
            break;
        case E_AUDIO_SOURCE_CAM3:

            ChipLevelAudioMainSource_TDA7719(CH_IN1, OUT_MAIN_PATH);

            break;
        default:
            break;
        }
    }
    else
    {
        switch (source)
        {
        case E_AUDIO_SOURCE_CMMB_DVB_TV:
            ChipLevelAudioMainSource(E_INPUT_SOURCE_TUNER, E_INPUT_SUBSOURCE_PRE);

            break;
        case E_AUDIO_SOURCE_IPOD:
            ChipLevelAudioMainSource(E_INPUT_SOURCE_CD, E_INPUT_SUBSOURCE_PRE);
            break;
        case E_AUDIO_SOURCE_SPK:
            ChipLevelAudioMainSource(E_INPUT_SOURCE_MD, E_INPUT_SUBSOURCE_PRE);
            break;
        case E_AUDIO_SOURCE_AV:
#ifdef BMW_MAIN_BOARD_VER_3
#ifdef  AUDI_A4_TFT_NEW_BOARD
            ChipLevelAudioMainSource(E_INPUT_SOURCE_AC3, E_INPUT_SUBSOURCE_PRE);
#else
            ChipLevelAudioMainSource(E_INPUT_SOURCE_CDC, E_INPUT_SUBSOURCE_PRE);
            //ChipLevelAudioMainSource(E_INPUT_SOURCE_CD, E_INPUT_SUBSOURCE_PRE);
#endif
#else
            ChipLevelAudioMainSource(E_INPUT_SOURCE_CD, E_INPUT_SUBSOURCE_PRE);
#endif
            break;
        case E_AUDIO_SOURCE_GPS:
            ChipLevelAudioMainSource(E_INPUT_SOURCE_AUX, E_INPUT_SUBSOURCE_PRE);
            break;
        case E_AUDIO_SOURCE_DVD:
#ifdef BMW_MAIN_BOARD_VER_3
#ifdef  AUDI_A4_TFT_NEW_BOARD
            ChipLevelAudioMainSource(E_INPUT_SOURCE_CDC, E_INPUT_SUBSOURCE_PRE);
            //ChipLevelAudioMainSource(E_INPUT_SOURCE_CD, E_INPUT_SUBSOURCE_PRE);
#else
            ChipLevelAudioMainSource(E_INPUT_SOURCE_AC3, E_INPUT_SUBSOURCE_PRE);
#endif
#else
            //ChipLevelAudioMainSource(E_INPUT_SOURCE_AC3, E_INPUT_SUBSOURCE_PRE);//Miller.Tao20150129
            ChipLevelAudioMainSource(E_INPUT_SOURCE_AC3, E_INPUT_SUBSOURCE_PRE);
#endif


            break;
        case E_AUDIO_SOURCE_MUTE:

            ChipLevelAudioMainSource(E_INPUT_SOURCE_MUTE, E_INPUT_SUBSOURCE_AC0);
            break;
        case E_AUDIO_SOURCE_CAM3:

            ChipLevelAudioMainSource(E_INPUT_SOURCE_TUNER, E_INPUT_SUBSOURCE_PRE);

            break;
        default:
            break;
        }
    }
}

/**************************************************************************/
/*                                                                        */
/**************************************************************************/
void AudioMainSPKSource(BYTE Rearource)
{

    if(Audio_IC_Addr==AV_TDA7719_SLAVE_ADD)
    {

    }
    else
    {
        switch (Rearource)
        {
        case E_AUDIO_SOURCE_CMMB_DVB_TV:

            ChipLevelAudioSPKSource(E_INPUT_SOURCE_TUNER, E_INPUT_SUBSOURCE_PRE);
            break;
        case E_AUDIO_SOURCE_CMMB_MP5:

            ChipLevelAudioSPKSource(E_INPUT_SOURCE_TUNER, E_INPUT_SUBSOURCE_PRE);
            break;
        case E_AUDIO_SOURCE_CAM3:

            ChipLevelAudioSPKSource(E_INPUT_SOURCE_TUNER, E_INPUT_SUBSOURCE_PRE);
            break;
        case E_AUDIO_SOURCE_IPOD:

            ChipLevelAudioSPKSource(E_INPUT_SOURCE_CD, E_INPUT_SUBSOURCE_PRE);
            break;
        case E_AUDIO_SOURCE_SPK:

            ChipLevelAudioSPKSource(E_INPUT_SOURCE_MD, E_INPUT_SUBSOURCE_PRE);
            break;
        case E_AUDIO_SOURCE_AV:

            ChipLevelAudioSPKSource(E_INPUT_SOURCE_CDC, E_INPUT_SUBSOURCE_PRE);
            break;
        case E_AUDIO_SOURCE_GPS:

            ChipLevelAudioSPKSource(E_INPUT_SOURCE_AUX, E_INPUT_SUBSOURCE_PRE);
            break;
        case E_AUDIO_SOURCE_DVD:

            ChipLevelAudioSPKSource(E_INPUT_SOURCE_AC3, E_INPUT_SUBSOURCE_PRE);
            break;
        case E_AUDIO_SOURCE_MUTE:

            ChipLevelAudioSPKSource(E_INPUT_SOURCE_MUTE, E_INPUT_SUBSOURCE_PRE);
            break;
        default:
            break;
        }
    }
}

/**************************************************************************/
/*                                                                        */
/**************************************************************************/
void AudioAUX1Source(BYTE subsource1)
{
    switch (subsource1)
    {
    case E_AUDIO_SOURCE_CMMB_DVB_TV:
        ChipLevelAudioAUX1Source(E_INPUT_SOURCE_TUNER);
        break;
    case E_AUDIO_SOURCE_CMMB_MP5:
        ChipLevelAudioAUX1Source(E_INPUT_SOURCE_TUNER);
        break;
    case E_AUDIO_SOURCE_CAM3:
        ChipLevelAudioAUX1Source(E_INPUT_SOURCE_TUNER);
        break;
    case E_AUDIO_SOURCE_IPOD:
        ChipLevelAudioAUX1Source(E_INPUT_SOURCE_CD);
        break;
    case E_AUDIO_SOURCE_SPK:
        ChipLevelAudioAUX1Source(E_INPUT_SOURCE_MD);
        break;
    case E_AUDIO_SOURCE_AV:
        ChipLevelAudioAUX1Source(E_INPUT_SOURCE_CDC);
        break;
    case E_AUDIO_SOURCE_GPS:
        ChipLevelAudioAUX1Source(E_INPUT_SOURCE_AUX);
        break;
    case E_AUDIO_SOURCE_DVD:
        ChipLevelAudioAUX1Source(E_INPUT_SOURCE_AC3);
        break;
    case E_AUDIO_SOURCE_MUTE:
        ChipLevelAudioAUX1Source(E_INPUT_SOURCE_MUTE);
        break;
    default:
        break;
    }
}

/**************************************************************************/
/*                                                                        */
/**************************************************************************/

void AudioAUX2Source(BYTE subsource2)
{
    switch (subsource2)
    {
    case E_AUDIO_SOURCE_CMMB_DVB_TV:
        ChipLevelAudioAUX2Source(E_INPUT_SOURCE_TUNER);
        break;
    case E_AUDIO_SOURCE_CMMB_MP5:
        ChipLevelAudioAUX2Source(E_INPUT_SOURCE_TUNER);
        break;
    case E_AUDIO_SOURCE_CAM3:
        ChipLevelAudioAUX2Source(E_INPUT_SOURCE_TUNER);
        break;
    case E_AUDIO_SOURCE_IPOD:
        ChipLevelAudioAUX2Source(E_INPUT_SOURCE_CD);
        break;
    case E_AUDIO_SOURCE_SPK:
        ChipLevelAudioAUX2Source(E_INPUT_SOURCE_MD);
        break;
    case E_AUDIO_SOURCE_AV:
        ChipLevelAudioAUX2Source(E_INPUT_SOURCE_CDC);
        break;
    case E_AUDIO_SOURCE_GPS:
        ChipLevelAudioAUX2Source(E_INPUT_SOURCE_AUX);
        break;
    case E_AUDIO_SOURCE_DVD:
        ChipLevelAudioAUX2Source(E_INPUT_SOURCE_AC3);
        break;
    case E_AUDIO_SOURCE_MUTE:
        ChipLevelAudioAUX2Source(E_INPUT_SOURCE_MUTE);
        break;
    default:
        break;
    }
}

/*********************************************
Function:		De_Audio_Init
Description:
Write/Modify:	Edwin Kang
Time:		2009-12-16- 16:47:40
 *********************************************/
void Audio_Init(void)
{
    unsigned char i;
    //
    if(Audio_IC_Addr==AV_TDA7719_SLAVE_ADD)
    {
        //AudioI2CBuf[0] = CFG2|MS_FG_MD2|CH_IN0|MS_INPUT_GAIN_0dB; //MainInGainTable[16];//main path
        AudioI2CBuf[0] = CFG2|MS_FG_MD2|CH_IN2|MS_INPUT_GAIN_0dB;
        //
        AudioI2CBuf[1] = 0xfa;//0xFA;//direct path
        AudioI2CBuf[2] =0x74;//0x74;////mix source	test
        AudioI2CBuf[3] = 0xf0;//0xF0;//mix control
        AudioI2CBuf[4] = 0xfd;//0xfd;//fd,soft mute
        AudioI2CBuf[5] = 0x00;//0xFF;//softstep I
        //
        AudioI2CBuf[6] = 0xe0;//0xeF;//0xEF; //softstep II
        AudioI2CBuf[7] =0x00 ;//0x40; //0xFe,Loudness
        AudioI2CBuf[8] =0x56;// 0x56;//0xDE; //volume
        //
        AudioI2CBuf[9] = 0x7E;//treble
        //
        AudioI2CBuf[10] = 0x7F; //Middle
        AudioI2CBuf[11] = 0x7F; //0x33,bass
        //
        AudioI2CBuf[12] = 0xD6;//subwoofer,bass,middle center fre,cutoff
        //
        AudioI2CBuf[13] = 0x7F;//0x00;//VolTable[0];//speaker attenuation set :13 to 16 addr
        AudioI2CBuf[14] = 0x7F;//0;//VolTable[0];//
        AudioI2CBuf[15] =0x7F;//0;// VolTable[0];
        AudioI2CBuf[16] =0x7F;//0;// VolTable[0];
        //
        AudioI2CBuf[17] = 0x7F;//0;//VolTable[0];//subwoofer attenuation:17,18 addr
        //
        AudioI2CBuf[18] = 0x7F;//0;//VolTable[0];
        AudioI2CBuf[19] =0x60;//VolTable[70];
        //
        AudioI2CBuf[20] = 0;//0x80;
        //
        //AudioI2CBuf[21] = 0xF8;
        //AudioI2CBuf[22] = 0xFE;
        //AudioI2CBuf[23] = 0xF6;

        AV_TDA7719_CheckI2CStart(0x20);
        // for (i = 0; i <= 23; i++)
        for (i = 0; i <= 20; i++)
        {
            AV_i2c_SendByte(AudioI2CBuf[i]);
        }
        AV_i2c_Stop();
    }
    else
    {
        AudioI2CBuf[0] = 0xFF; //MainInGainTable[16];//main path
        //
        AudioI2CBuf[1] = 0xEF;//BASS
        AudioI2CBuf[2] = 0x8E;
        AudioI2CBuf[3] = 0xF0;
        AudioI2CBuf[4] = 0x90;

        AudioI2CBuf[5] = 0x82;
        //
        AudioI2CBuf[6] = 0xFF; //InputLevTable[6];//A
        AudioI2CBuf[7] = 0xFF; //InputLevTable[6];//B
        AudioI2CBuf[8] = 0xFF; //InputLevTable[6];//C
        //
        AudioI2CBuf[9] = 0x80;
        //
        AudioI2CBuf[10] = 0x7F; //path0 output
        AudioI2CBuf[11] = 0xFF; //path1,2 output
        //
        AudioI2CBuf[12] = 0x00;
        //
        AudioI2CBuf[13] = VolTable[0];//VolTable[70];
        AudioI2CBuf[14] = VolTable[0];//VolTable[70];
        AudioI2CBuf[15] = VolTable[0];
        AudioI2CBuf[16] = VolTable[0];
        //
        AudioI2CBuf[17] = 0x06;
        //
        AudioI2CBuf[18] = VolTable[70];
        AudioI2CBuf[19] = VolTable[70];
        //
        AudioI2CBuf[20] = 0x80;
        //
        AudioI2CBuf[21] = 0xF8;
        AudioI2CBuf[22] = 0xFE;
        AudioI2CBuf[23] = 0xF6;

        AV_A_CheckI2CStart(0x20);
        for (i = 0; i <= 23; i++)
        {
            AV_i2c_SendByte(AudioI2CBuf[i]);
        }
        AV_i2c_Stop();

    }

}

/**************************************************************************/
/*                                                                        */
/**************************************************************************/

void Audio_Checked(void)
{
    if (AV_i2c_AccessStart(AV_A_SLAVE_ADD, I2C_WRITE) == FALSE)
    {
        Delay_1ms(10);
        if (AV_i2c_AccessStart(AV_TDA7719_SLAVE_ADD, I2C_WRITE) == TRUE)
            Audio_IC_Addr=AV_TDA7719_SLAVE_ADD;
    }
    else
    {
        Delay_1ms(10);
        if (AV_i2c_AccessStart(AV_A_SLAVE_ADD, I2C_WRITE) == TRUE)
            Audio_IC_Addr=AV_A_SLAVE_ADD;
    }
}


void SysMainModeAudioLoad(BYTE mode)
{

  //  SysModeMemory(mode);

    switch (mode)
    {

    case SYSTEM_MODE_IN_RADIO:

        AudioMainSource(E_AUDIO_SOURCE_RAD);
        break;
    case SYSTEM_MODE_IN_DVD:
        AudioMainSource(E_AUDIO_SOURCE_DVD);

        break;
    case SYSTEM_MODE_IN_SD:
        AudioMainSource(E_AUDIO_SOURCE_DVD);

        break;
    case SYSTEM_MODE_IN_USB:
        AudioMainSource(E_AUDIO_SOURCE_DVD);

        break;
    case SYSTEM_MODE_IN_TV:
        AudioMainSource(E_AUDIO_SOURCE_CMMB_DVB_TV);

        break;
    case SYSTEM_MODE_IN_IPOD:

        AudioMainSource(E_AUDIO_SOURCE_IPOD);
        break;
    case SYSTEM_MODE_IN_BT:
        //AudioMainSource(E_AUDIO_SOURCE_SPK);
        AudioMainSource(E_AUDIO_SOURCE_GPS);

        break;
    case SYSTEM_MODE_IN_NAVI:
#if 0//miller.tao20160303
        if(gPIP_Status.PIP_Switch==1)
        {
            if(gPIP_Status.PIP_SRC==1)//TV
            {
                AudioMainSource(E_AUDIO_SOURCE_CMMB_DVB_TV);
                if(gSysDvdStatus==1)
                {
                    DVD_DirSendPowerOff();
                }
#if ENABLE_ANDROID_DEBUG
                gtest2=1;
#endif


            }
            else//dvd
            {
                AudioMainSource(E_AUDIO_SOURCE_DVD);
                if(gSysDvdStatus==0)
                {
                    DVD_DirSendPowerOn();
                }
#if ENABLE_ANDROID_DEBUG
                gtest2=2;
#endif

            }
        }
        else
        {
            if((gNaviStatus==2)||(gNaviStatus==3)||(gNaviStatus==7)||(gNaviStatus==8)||(gNaviStatus==10))
            {
                AudioMainSource(E_AUDIO_SOURCE_GPS);
                if(gSysDvdStatus==1)
                {
                    DVD_DirSendPowerOff();
                }
#if ENABLE_ANDROID_DEBUG
                gtest2=3;
#endif
            }
        }
#else
       
            AudioMainSource(E_AUDIO_SOURCE_GPS);
#endif
        break;
    case SYSTEM_MODE_IN_AUX:
        //AudioMainSource(E_AUDIO_SOURCE_SPK);//E_AUDIO_SOURCE_AV//2014
        AudioMainSource(E_AUDIO_SOURCE_GPS);//Miller.Tao20141129
        break;
    case SYSTEM_MODE_IN_REAR:
        //SysMainMode_Enter_Back();
        break;
    case SYSTEM_MODE_IN_CARREC:

        AudioMainSource(E_AUDIO_SOURCE_MUTE);
        break;
    case SYSTEM_MODE_IN_mp5_music:
        AudioMainSource(E_AUDIO_SOURCE_GPS);
        //AudioMainSource(E_AUDIO_SOURCE_SPK);//Miller.Tao20141129
        break;

    default:
        break;
    }

#if 0
    if(g_stuSYSINFO.sys_main.uMainMode == SYSTEM_MODE_IN_NAVI)
    {
#if 1//miller.tao20160303
        if(gPIP_Status.PIP_Switch==1)//open
        {
            if(gPIP_Status.PIP_SRC==1)//TV
            {
                De_Audio_SetVol(g_stuSYSINFO.NaviVolume, SYSTEM_MODE_IN_TV);
            }
            else//dvd
            {
                De_Audio_SetVol(g_stuSYSINFO.NaviVolume, SYSTEM_MODE_IN_DVD);
            }
        }
        else//closed
        {
            if((gNaviStatus==2)||(gNaviStatus==3)||(gNaviStatus==7)||(gNaviStatus==8)||(gNaviStatus==10))
                De_Audio_SetVol(g_stuSYSINFO.NaviVolume, SYSTEM_MODE_IN_NAVI);
        }
#else
        if(audio_source_in_navi)
            De_Audio_SetVol(g_stuSYSINFO.NaviVolume, SYSTEM_MODE_IN_NAVI);
        else if (g_stuSYSINFO.NaviBgAudio)
            De_Audio_SetVol(g_stuSYSINFO.NaviVolume, SysGetNaviBgMode());
        else
            De_Audio_SetVol(g_stuSYSINFO.NaviVolume, SYSTEM_MODE_IN_NAVI);
#endif
    }
    else
    {

        De_Audio_SetVol(g_stuSYSINFO.NaviVolume, g_stuSYSINFO.sys_main.uMainMode);
    }
#else
	De_Audio_SetVol(Sys.NaviVolum, mode);
#endif
}

void AduioSwitchTask(void)
{
	if(Sys.Main_Source == SRC_NAVI)
	{
		if(Sys.Audio_Source != SYSTEM_MODE_IN_NAVI)
		{
			if((gNaviStatus==2)||(gNaviStatus==3)||(gNaviStatus==7)||(gNaviStatus==8)||(gNaviStatus==9)||(gNaviStatus==10))
            {
				if(gSyncToCarAux==0)	//原车切到AUX
                {
                    gSyncToCarAux=1;
                    m_BMW_CAN.uAuxSendSn=__SN0_;
                }
				McuSetNaviMuteOn();
				Sys.Audio_Source = SYSTEM_MODE_IN_NAVI;
				SysMainModeAudioLoad(SYSTEM_MODE_IN_NAVI);	//ch6
				McuSetNaviMuteOff();
			}
		}
	}
	else if(Sys.Main_Source == SRC_TV)
	{
		if(Sys.Audio_Source != SYSTEM_MODE_IN_TV)
		{
			if(gNaviStatus==6)
            {
				if(gSyncToCarAux==0)	//原车切到AUX
                {
                    gSyncToCarAux=1;
                    m_BMW_CAN.uAuxSendSn=__SN0_;
                }
				McuSetNaviMuteOn();
				Sys.Audio_Source = SYSTEM_MODE_IN_TV;
				SysMainModeAudioLoad(SYSTEM_MODE_IN_TV);	//ch0
				McuSetNaviMuteOff();
			}
		}
	}
	else if(Sys.Main_Source == SRC_CarMedia)
	{
		if(Sys.Audio_Source != SYSTEM_MODE_IN_CAR_MEDIA)
		{
			gSyncToCarAux = 0;
			Sys.Audio_Source = SYSTEM_MODE_IN_CAR_MEDIA;
		}
	}
	if(g_stuSYSSRC.soft_mute_Delay==1)
	{
		g_stuSYSSRC.soft_mute_Delay=0;
		McuSetNaviMuteOff();
		EnableNaviAudiout();
	}
}

/**************************************************************************/
/*                                                                        */
/**************************************************************************/
/**************************************************************************/
/*                                                                        */
/**************************************************************************/
void Video_Init(void)
{
    //init video device
    VideoI2CBuf[0] = 0x03;
    VideoI2CBuf[1] = 0x30;
    VideoI2CBuf[2] = 0x00;
    VideoI2CBuf[3] = 0xFF;
    VideoI2CBuf[4] = 0x00;
    AV_V_CheckI2CStart(0x03);
    AV_i2c_SendByte(VideoI2CBuf[3]);
    AV_i2c_Stop();
    AV_V_CheckI2CStart(0x04);
    AV_i2c_SendByte(VideoI2CBuf[4]);
    AV_i2c_Stop();
    AV_V_CheckI2CStart(0x00);
    AV_i2c_SendByte(VideoI2CBuf[0]);
    AV_i2c_Stop();
    AV_V_CheckI2CStart(0x01);
    AV_i2c_SendByte(VideoI2CBuf[1]);
    AV_i2c_Stop();
    AV_V_CheckI2CStart(0x02);
    AV_i2c_SendByte(VideoI2CBuf[2]);
    AV_i2c_Stop();
    VideoAux2Source(E_VIDEO_SOURCE_MUTE);
    VideoAux1Source(E_VIDEO_SOURCE_MUTE);
    VideoMainSource(E_VIDEO_SOURCE_MUTE);
}

void VideoMainSource(BYTE Mainsource)
{

    switch (Mainsource)
    {
    case E_VIDEO_SOURCE_CMMB_GPS_MP5:
        AV_V_CheckI2CStart(0X02);
        VideoI2CBuf[0X02] = (VideoI2CBuf[0X02] & 0x0F) | 0x01;
        AV_i2c_SendByte(VideoI2CBuf[0X02]);
        AV_i2c_Stop();
        break;
    case E_VIDEO_SOURCE_CAM1:  //rear view
        AV_V_CheckI2CStart(0X02);
        VideoI2CBuf[0X02] = (VideoI2CBuf[0X02] & 0x0F) | 0x50;
        AV_i2c_SendByte(VideoI2CBuf[0X02]);
        AV_i2c_Stop();
        break;
    case E_VIDEO_SOURCE_CAM2:
        AV_V_CheckI2CStart(0X02);
        VideoI2CBuf[0X02] = (VideoI2CBuf[0X02] & 0x0F) | 0x01;
        AV_i2c_SendByte(VideoI2CBuf[0X02]);
        AV_i2c_Stop();
        break;
    case E_VIDEO_SOURCE_CAM3:   //car rec
        AV_V_CheckI2CStart(0X02);
        VideoI2CBuf[0X02] = (VideoI2CBuf[0X02] & 0x0F) | 0x40;//0x40;//0x10
        AV_i2c_SendByte(VideoI2CBuf[0X02]);
        AV_i2c_Stop();
        break;
    case E_VIDEO_SOURCE_AV:
        AV_V_CheckI2CStart(0X02);
        VideoI2CBuf[0X02] = (VideoI2CBuf[0X02] & 0x0F) | 0x10;
        AV_i2c_SendByte(VideoI2CBuf[0X02]);
        AV_i2c_Stop();
        break;
    case E_VIDEO_SOURCE_CMMB_DVB_TV:
        AV_V_CheckI2CStart(0X02);
        VideoI2CBuf[0X02] = (VideoI2CBuf[0X02] & 0x0F) | 0x60;
        AV_i2c_SendByte(VideoI2CBuf[0X02]);
        AV_i2c_Stop();
        break;
    case E_VIDEO_SOURCE_NEWDVD:
        AV_V_CheckI2CStart(0X02);
        VideoI2CBuf[0X02] = (VideoI2CBuf[0X02] & 0x0F) | 0x30;
        AV_i2c_SendByte(VideoI2CBuf[0X02]);
        AV_i2c_Stop();
        break;
    case E_VIDEO_SOURCE_NEWIPOD:
        AV_V_CheckI2CStart(0X02);
        VideoI2CBuf[0X02] = (VideoI2CBuf[0X02] & 0x0F) | 0x01;
        AV_i2c_SendByte(VideoI2CBuf[0X02]);
        AV_i2c_Stop();
        break;
    case E_VIDEO_SOURCE_MUTE:
        AV_V_CheckI2CStart(0X02);
        VideoI2CBuf[0X02] = (VideoI2CBuf[0X02] & 0x0F) | 0x01;
        AV_i2c_SendByte(VideoI2CBuf[0X02]);
        AV_i2c_Stop();
        break;
    default:
        break;
    }
}

/**************************************************************************/
/*                                                                        */
/**************************************************************************/



void VideoAux1Source(BYTE Subsource1)
{
    switch (Subsource1)
    {
    case E_VIDEO_SOURCE_CMMB_GPS_MP5:
        AV_V_CheckI2CStart(0x00);
        VideoI2CBuf[0x00] = (VideoI2CBuf[0x00] & 0xF0) | 0x01;
        AV_i2c_SendByte(VideoI2CBuf[0x00]);
        AV_i2c_Stop();
        break;
    case E_VIDEO_SOURCE_CAM1: //rear view
        AV_V_CheckI2CStart(0x00);
        VideoI2CBuf[0x00] = (VideoI2CBuf[0x00] & 0xF0) | 0x05;
        AV_i2c_SendByte(VideoI2CBuf[0x00]);
        AV_i2c_Stop();
        break;
    case E_VIDEO_SOURCE_CAM2:
        AV_V_CheckI2CStart(0x00);
        VideoI2CBuf[0x00] = (VideoI2CBuf[0x00] & 0xF0) | 0x01;
        AV_i2c_SendByte(VideoI2CBuf[0x00]);
        AV_i2c_Stop();
        break;
    case E_VIDEO_SOURCE_CAM3://car rec
        AV_V_CheckI2CStart(0x00);
        VideoI2CBuf[0x00] = (VideoI2CBuf[0x00] & 0xF0) | 0x04;
        AV_i2c_SendByte(VideoI2CBuf[0x00]);
        AV_i2c_Stop();
        break;
    case E_VIDEO_SOURCE_AV:
        AV_V_CheckI2CStart(0x00);
        VideoI2CBuf[0x00] = (VideoI2CBuf[0x00] & 0xF0) | 0x01;
        AV_i2c_SendByte(VideoI2CBuf[0x00]);
        AV_i2c_Stop();
        break;
    case E_VIDEO_SOURCE_CMMB_DVB_TV:
        AV_V_CheckI2CStart(0x00);
        VideoI2CBuf[0x00] = (VideoI2CBuf[0x00] & 0xF0) | 0x06;
        AV_i2c_SendByte(VideoI2CBuf[0x00]);
        AV_i2c_Stop();
        break;
    case E_VIDEO_SOURCE_NEWDVD:
        AV_V_CheckI2CStart(0x00);
        VideoI2CBuf[0x00] = (VideoI2CBuf[0x00] & 0xF0) | 0x03;
        AV_i2c_SendByte(VideoI2CBuf[0x00]);
        AV_i2c_Stop();
        break;
    case E_VIDEO_SOURCE_NEWIPOD:
        AV_V_CheckI2CStart(0x00);
        VideoI2CBuf[0x00] = (VideoI2CBuf[0x00] & 0xF0) | 0x01;
        AV_i2c_SendByte(VideoI2CBuf[0x00]);
        AV_i2c_Stop();
        break;
    case E_VIDEO_SOURCE_MUTE:
        AV_V_CheckI2CStart(0x00);
        VideoI2CBuf[0x00] = (VideoI2CBuf[0x00] & 0xF0) | 0x00;
        AV_i2c_SendByte(VideoI2CBuf[0x00]);
        AV_i2c_Stop();
        break;
    default:
        break;
    }
}

/**************************************************************************/
/*                                                                        */
/**************************************************************************/
void VideoAux2Source(BYTE Subsource2)
{
    switch (Subsource2)
    {
    case E_VIDEO_SOURCE_CMMB_GPS_MP5:
        AV_V_CheckI2CStart(0x00);
        VideoI2CBuf[0x00] = (VideoI2CBuf[0x00] & 0x0F) | 0x10;
        AV_i2c_SendByte(VideoI2CBuf[0x00]);
        AV_i2c_Stop();
        break;
    case E_VIDEO_SOURCE_CAM1:  //rear view
        AV_V_CheckI2CStart(0x00);
        VideoI2CBuf[0x00] = (VideoI2CBuf[0x00] & 0x0F) | 0x50;
        AV_i2c_SendByte(VideoI2CBuf[0x00]);
        AV_i2c_Stop();
        break;
    case E_VIDEO_SOURCE_CAM2:
        AV_V_CheckI2CStart(0x00);
        VideoI2CBuf[0x00] = (VideoI2CBuf[0x00] & 0x0F) | 0x10;
        AV_i2c_SendByte(VideoI2CBuf[0x00]);
        AV_i2c_Stop();
        break;
    case E_VIDEO_SOURCE_CAM3: // car rec
        AV_V_CheckI2CStart(0x00);
        VideoI2CBuf[0x00] = (VideoI2CBuf[0x00] & 0x0F) | 0x40;
        AV_i2c_SendByte(VideoI2CBuf[0x00]);
        AV_i2c_Stop();
        break;
    case E_VIDEO_SOURCE_AV:
        AV_V_CheckI2CStart(0x00);
        VideoI2CBuf[0x00] = (VideoI2CBuf[0x00] & 0x0F) | 0x10;
        AV_i2c_SendByte(VideoI2CBuf[0x00]);
        AV_i2c_Stop();
        break;
    case E_VIDEO_SOURCE_CMMB_DVB_TV:
        AV_V_CheckI2CStart(0x00);
        VideoI2CBuf[0x00] = (VideoI2CBuf[0x00] & 0x0F) | 0x60;
        AV_i2c_SendByte(VideoI2CBuf[0x00]);
        AV_i2c_Stop();
        break;
    case E_VIDEO_SOURCE_NEWDVD:
        AV_V_CheckI2CStart(0x00);
        VideoI2CBuf[0x00] = (VideoI2CBuf[0x00] & 0x0F) | 0x30;
        AV_i2c_SendByte(VideoI2CBuf[0x00]);
        AV_i2c_Stop();
        break;
    case E_VIDEO_SOURCE_NEWIPOD:
        AV_V_CheckI2CStart(0x00);
        VideoI2CBuf[0x00] = (VideoI2CBuf[0x00] & 0x0F) | 0x10;
        AV_i2c_SendByte(VideoI2CBuf[0x00]);
        AV_i2c_Stop();
        break;
    case E_VIDEO_SOURCE_MUTE:
        AV_V_CheckI2CStart(0x00);
        VideoI2CBuf[0x00] = (VideoI2CBuf[0x00] & 0x0F) | 0x00;
        AV_i2c_SendByte(VideoI2CBuf[0x00]);
        AV_i2c_Stop();
        break;
    default:
        break;
    }
}





/**************************************************************************/
/*                                                                        */
/**************************************************************************/
void VideoSwitch(void)
{
    switch (g_stuSYSTEM_INPUT_SOURCE.uCurMainInputSource)
    {
    case E_SYSTEM_INPUTSOURCE_RADIO:
        VideoMainSource(E_VIDEO_SOURCE_MUTE);
        break;
    case E_SYSTEM_INPUTSOURCE_GPS:
        VideoMainSource(E_VIDEO_SOURCE_MUTE);
        break;
    case E_SYSTEM_INPUTSOURCE_CMMB_GPS_MP5:
        VideoMainSource(E_VIDEO_SOURCE_CMMB_GPS_MP5);
        break;
    case E_SYSTEM_INPUTSOURCE_CAM1:
        VideoMainSource(E_VIDEO_SOURCE_CAM1);
        break;
    case E_SYSTEM_INPUTSOURCE_CAM2:
        VideoMainSource(E_VIDEO_SOURCE_CAM2);
        break;
    case E_SYSTEM_INPUTSOURCE_CAM3:
        VideoMainSource(E_VIDEO_SOURCE_CAM3);
        break;
    case E_SYSTEM_INPUTSOURCE_AV:
        VideoMainSource(E_VIDEO_SOURCE_AV);
        break;
    case E_SYSTEM_INPUTSOURCE_CMMB_DVB_TV:
        VideoMainSource(E_VIDEO_SOURCE_CMMB_DVB_TV);
        break;
    case E_SYSTEM_INPUTSOURCE_NEWDVD:
        VideoMainSource(E_VIDEO_SOURCE_NEWDVD);
        break;
    case E_SYSTEM_INPUTSOURCE_NEWIPOD:
        VideoMainSource(E_VIDEO_SOURCE_NEWIPOD);
        break;
    case E_SYSTEM_INPUTSOURCE_BT:
        VideoMainSource(E_VIDEO_SOURCE_MUTE);
        break;
    case E_SYSTEM_INPUTSOURCE_MUTE:
        VideoMainSource(E_VIDEO_SOURCE_MUTE);
        break;
    default:
        break;
    }

}

/**************************************************************************/
/*                                                                        */
/**************************************************************************/
#undef _AVSW_C_

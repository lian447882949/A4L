#ifndef _COMPILE_H_
#define _COMPILE_H_

#define watch_dog
#define sd_upgrade

//
//#define FLASH_EEROM_DEBUG
//#define TW8823_DEBUG
#define HannStar07
//#define araba_digi_tv      //������ֵ���ģ��(tw)


#define _ENABL_CES


		#define MCU_VER_Part1  01
		#define MCU_VER_Part2  01
		#define MCU_VER_Part3  01
		#define MCU_VER_Part4  01
//#define    MCU_VERSION     "0001"

//#define HIT2_TUNER // TDA7706

#ifndef sd_upgrade		
#define MCU_VERSION  "MT02"
#else
#define MCU_VERSION  "0003"
#endif
#define IAP_VERSION  "0002"

#define WINCA 		C802//C004//CE8904//



#define HDWARE_NO_VERSION  "V100"

#define HDWARE_VERSION  "V1.3"
enum			//	Sys.custom_sel
{
	CUSTOMER_WINCA=0,
	CUSTOMER_UKRAINE_MK=1,
	CUSTOMER_RUSSIA_VDS=2,
	CUSTOMER_JAVIER=3,
	CUSTOMER_SAUDI_AVLON=4,//#if S100_Saudi_Aulon_TEST     //lxg20130329  ɳ��ɳ���ͻ�
};

//#define	ADAU1401_EN		//	ADAU1401 ����ʹ��		LZS 		2012-9-3

//#define PANEL_TYPE			Panelhannstar07_DT	
//************************************************
//-----------------------------------
#define C001			1     
#define C004			4
#define C064			64     
#define C065			65    
#define C072			72
#define C059			59    
#define C098			98    
#define C138			138    
#define C145			145    

#define C802			802     

#define C999			999     

#define C209                  209   // 
#define C210                  210   // 
#define C237                  237   // 
#define C224                  224   // 
//20120924
#define C026			26
#define C169			169
#define C227			227
#define C229			229
#define C254			254
#define C777			777
#define C280			280
#define C228			228


/*
//#define CE5906			1                            
//#define CE5908			2
#define CE5628			3
#define CE8903			4//FORD
#define CE8904			5//����
#define CE8906			6//�ִ�����
#define CE8908			7//�ִ���ʤ��
#define CE8909			8//CRV
#define CE8910			9//CROWN
#define CE8912			10//MAZIDA
#define CE8913			11///4he1
#define CE8915			12//CHERY
#define CE8916			13//PASSAT
#define CE8917			14//��־307
#define CE8918			15//RAV4
#define CE8929			16//SUZUKI weitela
#define CE6903			17//
#define CE8901			18//NISIAN
#define CE8919			19//opel
#define CE8920			20//�¾���
#define CE8921			21//ͨ��GMC
#define CE8923			22//����ͼ

#define CE8928			23//TOYOTA  ����˹
#define CE3626			24//
#define CE8902			25//corrola
#define CE8932			26//��8901���
#define CE8933			27//������
#define CE8936			28//�ִ��ö�
#define CE8942			29//����;��
#define CE8935			30//������
#define CE8939			31//���ؿ�����
#define CE8938			32//���Ǹ����
#define CE8941			33//����--������
#define CE8946			34//����--������ͼ
#define CE8947			35//�ִ�IX35
#define CE8943			36//�ִ�I 30
//#define CE8940			37//FORD WDLY
#define CE8944			38//˼��-����
#define CE8945			39//��³��ѩ����//--------------------------------------------------
#define CE8948			40//����-����
#define CE8949			41//A3
#define CE8950			42//A4
//#define CE8951			43//�Ÿ���
#define CE8952			44//����C3
//#define CE8954			45//����-�ղ�
#define CE8956			46//ŷ��������
#define CE8957			47//B50
#define CE8958			48//B70
#define CE8959			49//��ŵ/÷����
#define CE8999			50//HONDA
#define CE8953                    51//��ľ
#define CE8934                    52//���Դ�3  
#define CE8905			53//˹�´�����
#define CE8962                    54//ɭ����
#define CE8963			55//���￨����
#define CE8965                    56//���� �°Ե�
#define CE8960                    57//���¿�·��
#define CE8974                    58//����
#define CE8964                    59//�¿�����
#define CE8968                    60//����A B��
#define CE8961                    61//����ʨ
#define CE8967                   62//�����ִ�(����)
#define CE8980                    63//BMC
#define CE8971			64//�����»���
#define CE8966			65// ����350
#define CE8979			66//����  A3
#define CE8978			67//�µ�TT
#define CE8981			68// 2011������
#define CE8977                  69 //����C30
#define CE8969                 70 //����H5
#define CE8982                 71 //����E39
#define CE8970             72 //�ղ����
#define CE8975            73//�ִ�������
#define CE8976            74//����//�������1-17
#define CE8984            75//������־
#define CE8922            76//����C30
#define CE8983           77//��־408
#define CE8924          78//�ִ�
#define CE8987         79//����
#define CE8988       80//ѩ��������
#define CE8986     81//����CEED
#define CE8991     82//����K5
#define CE8990     83//����E��
#define CE8972    84//Ӣ��
#define CE8925             85//��������
#define CE8985      86//��־206
#define CE8926     87//���⾢��
#define CE8931             88//����RUSH
#define CE8993             89//����C��
#define CE8930             90//�ִ�I20
#define CE8927            91//��˿�Խ
#define CE8905_2			92//˹�´�����
#define CE8937     93//������ɪ
#define CE8995                 94 //����320I
#define CE8992               95 //�ִ��ö�
#define CE8952_1			96//����C3
#define CE8997		97//����C3.
*/


//-----------------------------------
/*#define	No_cantype	       0  //
#define	tuguan_cantype	       1  //CE8904
#define	opel_cantype 	       2  // CE8919
#define	VW_simple_cantype	 3    //CE8904
#define	cruze_simple_cantype	         4   //CE8945
#define	VW_hechi_cantype	5   //CE8904
#define	prodo_cantype	        6    //ce8910   CE8965
#define	accord_cantype	        7   
#define	ix35_cantype	      8  //IX35  2.4L �Ŵ�����CE8947
#define	B50_cantype	       9  //CE8957
#define	ix35_hechi_cantype	10   //CE8947
#define	mazda3_cantype  	11   //CE8934
#define	Megane_cantype  	12 //÷����
#define	Benz_cantype  	13 //����B200
#define	bz408_cantype	         14   //CE8919
#define	bz206_cantype	         15   //CE8985
#define	L200_cantype	         16   //L200
#define	civic_cantype	         17   //
#define	B70_cantype	       18  //CE8958		
#define	BMW3_cantype	       19  //CE8995	
#define	camry_cantype	       20  //CE8964
#define	Azera_cantype	       21  //CE8964 ����
#define	Mondeo_cantype	         22   //CE8903  
#define	Focus_cantype	       23  //CEA150	
*/
//����S100 ͨ��Э�鶨��
#define No_cantype	  				0x00  	//
#define tuguan_cantype  				0x01  	//����
#define cruze_simple_cantype  		0x02 	//ͨ��
#define hyundai_cantype   			0x03	//�ִ�&���� 
#define prado_cantype   				0x04	//������
#define jeep_cantype  				0x05 	//���㼪�գ�����
#define opel_cantype     				0x06   	//���Դ�ɿ�ŷ��
#define fiesta_cantype  				0x07 	//���ؼ��껪
#define outlander_cantype  			0x08   	// ŷ����

#define AudiA3A4_cantype  			0x09   	//XX

#define B50_cantype     				0x0A     	// ����B50
#define Megane2_cantype				0x0B    	//÷����2 
#define mazda3_cantype  				0x0C   	//���Դ�3
#define AudiQ5_cantype  				0x0d  	//�µ�Q5
#define civic_cantype   				0x0E   	//12����˼��
#define Azera_cantype				0x0f	//�ִ�����  lts20121203
#define Null_cantype  			0x10   	//XX
#define CRV_cantype   				0x11 	//CRV
#define bz207_cantype   				0x12 	//��־207(�ͳ�)
#define Encore_Onstar_cantype 		0x13	//������(������)
#define camry_cantype   				0x14
#define benz_b200_cantype   			0x15
#define Mondeo_cantype	      			0x16  	//    22   //CE8903   �ɵ�ŷ     //d_add_2012-10-8
#define VOLVO_cantype	                    	0x17  	//   �ֶ���
#define Megane3_cantype				0x18    	//÷����3 
#define Encore_cantype				0x19      //CE8921   ������     //	LZS		2012-10-30
#define bz307_cantype				0x1A    	//  ��־307��ʹ��s60   bz408��Э��       
#define bz408_cantype				0x1B        //  ��־408
#define B70_cantype					0x1C  	//һ������B70,tao add ,2012-11-30
#define Focus_cantype				0x1D    
#define BWM_X1_cantype 			0x1E//
#define bz206_cantype  	 			0x1F 	//��־206(����)
#define BWM320_cantype 				0x20 	//����320
//#define IX45_cantype					0x22	//�ִ�&���� IX45
#define L200_cantype                            0x21	//����L200
#define bz308_cantype  				0x22  	//��־308
#define teana_cantype  					 0x23//13��������  
#define CitroenC4C5_cantype 			0x24 	//ѩ����C4/C5
#define AudiA8_cantype  0x25  //�µ�A8
#define BWM_X3_cantype 0x26 //����X3
//
#define Chrysler_hechi_cantype  0x29  //Chrysler

//#define canbus_type tuguan_cantype

#endif

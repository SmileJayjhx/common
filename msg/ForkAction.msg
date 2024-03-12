std_msgs/Header header

uint8 type  
uint8 type_UNKNOW=0             #0-未知
uint8 type_UP_DOWN=1            #插齿升降
uint8 type_FORWORD_BACKWORD=2   #门架伸缩
uint8 type_RIGHT_LEFT=3         #插齿左右
uint8 type_PITCH=4              #插齿俯仰
uint8 type_ROLL=5               #横滚
uint8 type_YAW=6                #航向
uint8 type_FOLLOW_PALLET=7      #跟踪叉齿
uint8 type_HEIGHT_MEASURE=8      #高度测量
uint8 type_WEIGHT_MEASURE=9      #重量测量

uint8 up_down
uint8 up_down_UNKNOW=0    #未知
uint8 up_down_UP=1        #插齿升
uint8 up_down_DOWN=2      #插齿降


int64 id
float32 value  #具体数值mm

uint8 need_init #0-无初始化,1-需要给叉齿来一次初始化。一般在第一次叉齿动作需要


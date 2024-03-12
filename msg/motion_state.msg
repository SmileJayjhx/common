std_msgs/Header header

uint8 motion_state

uint8 STOP = 0              #机器人静止状态
uint8 FORWARD = 1       #机器人前进
uint8 FORWARD_RIGHT = 2     #机器人右前转弯
uint8 FORWARD_LEFT = 3      #机器人左前转弯

uint8 BACK = 4                  #机器人倒车
uint8 BACK_RIGHT = 5    #机器人右后转弯
uint8 BACK_LEFT = 6     #机器人左后转弯
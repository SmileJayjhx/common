float64 energy                   #
string ssid                     #
float64 rssi                    #
float64 temp_inside             #
float64 temp_outside            #
string walking_motor            # 控行走电机状态
string steering_motor           # 控打舵电机状态
string pump_motor               # 控制泵机状态
int32 left_safe_laser           # 左安全雷达
int32 right_safe_laser          # 右安全雷达
int32 walking_motor_encoder     # 控行走电机编码器
int32 steering_motor_encoder    # 控打舵电机编码器
int32 fork_encoder              # 叉齿编码器
float64[] fork_tilt_sensor      #
float64[] mounting_tilt_sensor  #
float64[] controller_tilt_sensor #
int32 fork_height               # 插齿高度(单位:mm)
int32 onoff                     #
uint64 start_up_time            # 本次开机时刻
float64 this_mileage            # 本次无故障里程
float64 sum_mileage             # 车辆行驶总里程
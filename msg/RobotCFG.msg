int32 baseplate_height                      # 底盘高度,插齿落到地高度(单位:mm)
int32 offset_topick                         # 取货上升高度(单位:mm)
int32 modified_toheight                     # 高度修正(单位:mm)
int32 offset_totiltdown                     # 卸货放平插齿高度(单位:mm)
int32 modified_degree                       # 原地旋转角度修正(单位:度)
int32 fork_measure_height_offset            # 测量时差值高度修正(单位:mm)
int32 len_r2000torefpt                      # R2000到参考点的距离(单位:mm)
int32 wheelbase                             # 前后轮轴距(单位:mm)
string robot_name                           # 机器人名
string c_sw_ver                             # 中心控制器软件版本号
string p_sw_ver                             # 外设控制器软件版本号
string map_ver                              # 地图编号
string c_board_id                           # 中心控制器编号
string p_board_id                           # 外设控制器编号
int32 robot_id                              # 机器人编号
int32 robot_type                            # 机器人类型
int32 move_height                           # 行走高度(单位:mm)
int32 accurate_pt_range                     # 精确点到点半径(单位:mm)
int32 R2000_hori_cali                       # R2000水平偏置补偿(单位:mm)
int32 xy_goal_tolerance                     # 到位圈精度(单位:mm)
int32 fork_height_max                       # 插齿最大上升高度(单位:mm)
int32 load_capacity_max                     # 最大载重(单位:mm)
# 车辆运动转角系数
int32 angle_zero_value                      # 零位
int32 front_right_angle_coefficient         # 前进左转角度系数
int32 front_left_angle_coefficient          # 前进右转角度系数
int32 back_right_angle_coefficient          # 后退左转角度系数
int32 back_left_angle_coefficient           # 后退右转角度系数
# 到位圈参数
int32 accurate_place_radius                 # 精确到位半径(单位:mm) 
int32 accurate_place_angle                  # 精确到位角度(单位:度)
int32 common_place_radius                   # 普通到位半径(单位:mm)
# 预回转参数
int32 pre_rotation_flag                     # 预回转标记
int32 pre_rotation_zero_angle               # 预回转为0度时的角度(单位:度)
int32 pre_rotation_start_angle              # 开始预回转的角度(单位:度)
int32 pre_rotation_start_rate               # 开始预回转的速度(单位:m/s)
int32 arm_offset_a                          # a侧夹具修正值
int32 arm_offset_b                          # b侧夹具修正值
int32 work_mode                             # 1-导航, 2-SLAM, 3-追加反光板
float64 wheeloffset
int32 offset_angle_lidar                    # 雷达零度角到车体零度角的偏差，逆时针为正，度数已乘了10000
string uuid_key                             # 注册码
int32 cfg_use_gateway                       # 调度走网管
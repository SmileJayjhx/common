geometry_msgs/Pose goalpos                # 目标坐标
geometry_msgs/Pose startpos               # 起始坐标
int32 flag                                # 置1表示已做过插齿升降动作 
uint64 taskid                             # 任务ID
common/Qrcode t_qrcode
common/Action t_action
int32 distance
int32 has_box
bool is_schedulept                        # 是否调度器下发的任务
bool isfinalgoal   # 
bool is_schedule_delete
bool more_pt                              # 更多的点
time s_time
time e_time
string start_time                         # 任务开始执行时间 
string finish_time                        # 任务完成时间 
uint8 oblique_laser_mode                          # 道路安全等级，0最近，数字越大越远
uint8 moving_mode  #运行模式
uint8 moving_mode_longitudinal=1  #运行模式:纵向
uint8 moving_mode_transverse=2  #运行模式:纵向
uint8 moving_mode_rotation=3  #运行模式:原地旋转

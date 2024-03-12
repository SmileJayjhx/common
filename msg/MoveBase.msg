#geometry_msgs/Pose cur_pos                      # 当前坐标
#geometry_msgs/Pose pre_pos                      # 上一时刻坐标
#geometry_msgs/Pose reference_pos                # 参考位置
geometry_msgs/Twist cur_vel                     # 目前的速度、角速度
common/RobotCFG t_robotcfg                  # 机器人配置文件
#common/VelocityCFG velocity_cfg             # 机器人运动参数配置
#common/RobotShape robot_shape               # 机器人形状
#int32 run_state                                 #
int64 cur_pos_time                              # 当前位姿时间戳
int64 pre_pose_time                             # 上一位姿时间戳
int32 run                                       #
uint64 impluse                                  #
common/MIB t_mib
# pthread_mutex_t lock;
# sem_t 					report_sem; // 上报任务信号量,好像用不到
# sem_t 					r2000_sem;// R2000信号量,用不到
# pthread_mutex_t     r2000_lock;// R2000 锁
# pthread_cond_t      mb_cond;// 条件变量,主要接受R2000数据用
int32 limit_switch                              # 从接口板接收到的货位开关
int32 fork_crash                                # 从接口板收到的光电触发开关
bool m_iManualModeFlag                          # 手动模式标记 1-手动 0-自动
bool is_schedule_delete                         # 该任务是否可以删除,做删除链表用
bool m_cForkLowOrHight                          # 叉齿所处位置  1:高位,可触发后置激光 0:低位,不触发后置激光
bool isreachgoal                                #
#common/NetworkCFG net_cfg                   #
# pthread_mutex_t can_lock;
# pthread_mutex_t uart_lock;
bool need_charge_flag                           # 0:无需充电,1:要充电,2:正在充电
bool has_task_no_charge                          # 有任务请勿充电
int64 m_lMoveBaseExecuteTime
string m_cMoveSafeState                         # 安全激光扫描状态
string m_cPostLaserScanConfig                   # 后置激光扫描范围配置
int32 m_lErrorCode
bool manua_intervention_flag                    # 人工干预叉车动作类型,0:unknow,1:停止,2:恢复,5为插齿下降 */

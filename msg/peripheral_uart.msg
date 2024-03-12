std_msgs/Header header
uint8 limit_switch #从接口板收到的货位开关 3 出发 0 没触发
uint8 fork_crash #从接口板收到的光电触发开关
uint8 isreachgoal #
uint8 m_iManualModeFlag #手动模式标记 1-手动 0-自动
uint8 m_cForkLowOrHight #叉齿所处位置  1:高位,可触发后置激光 0:低位,不触发后置激光
uint8 go_home #1-一键回起始位
int32 weight
int32 fork_height
uint8 m_cForkUpReachFlag
uint8 m_cForkDownReachFlag
uint8  charging_receiver_flag
uint8 err_a
uint8 err_b
uint8 err_c
uint8 err_d
uint8 height_flag

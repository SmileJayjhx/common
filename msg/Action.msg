string action_type                       #
int32 height                        # 叉齿需上升高度(单位：mm)
int32 forkadjust_height
int32 extraForkHeightOffset         # 取卸货调整高度(单位：mm)
int32 m_iForkWidth                  # 结束时候机器人的插齿宽度(单位：mm)
float64 max_speed                   #
int32 Radius                        # 圆弧半径(单位：mm)
geometry_msgs/Pose circle_center    # 圆心坐标
bool cw_or_ccw                      # 顺时针或逆时针旋转
int32 move_type                     # 点位
common/Speed[] speeds               #
uint32 speeds_cnt                   #
uint32 speeds_curr_id               # 直行时当前车辆处在哪个线段中,下标范围[0,speeds_cnt)
bool reach                          # 到达目的地

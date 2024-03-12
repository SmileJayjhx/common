geometry_msgs/Pose startpos                     # 起始位置
float64 fromSpeed                               # 起始速度(单位:m/s)
geometry_msgs/Pose goalpos                      # 目标位置
float64 endSpeed                                # 结束速度(单位:m/s)
uint32 duration                                 #
uint32 distance                                 # 
uint32 min_dis                                  # 存储当前位置点到goalpos的距离(单位:m)
string status                                   # 
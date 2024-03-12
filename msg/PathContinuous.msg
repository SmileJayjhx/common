
uint8 type
uint8 type_line = 0      
uint8 type_arccircle = 1   
uint8 type_rotation = 2   
uint8 type_discrete = 3   

uint8 safety_boundary
uint8 oblique_laser_mode
common/PathLine line
common/PathArccircle arccircle
common/PathRotation rotation


uint8 moving_mode  #运行模式
uint8 moving_mode_longitudinal=1  #运行模式:纵向
uint8 moving_mode_transverse=2  #运行模式:横向
uint8 moving_mode_rotation=3  #运行模式:原地旋转


float64 max_speed
float64 start_speed
float64 end_speed
int64 id

uint8 exactly
uint8 point_type
string t_qrcode_name
std_msgs/Header header
uint8 msg_type #消息类型
uint64 taskid #任务号
uint8 need_ack #0-无需应答,1-有应答即可,2-需要正确应答
int32 err_no #错误号
string url #调度url地址
int32 len
uint8[] datas
#!/usr/bin/python3
# coding=utf-8
'''
xiaolu机器人功能需求：
前置条件：
    树莓派电源打开，主程序开始运行
动作：
    1.打开电源开关，此时边扫电机和吸尘电机均开始工作，但行走机构不动，LCD显示“小鲁准备就绪，”
    2.操作员press启动按钮，此时行走电机开始工作，向前缓慢行走，LCD显示“小路正在专心打扫中,请勿打扰..”
    3.以下动作在启动后自动执行：
        a) 三个红外传感器持续工作，进近检测距离为5CM. 分7种情况：001 010 100 011 110 101 111 另外000(正常) ,导航系统每0.2秒取一次三个值，决定行走方向
        b) 行走进程持续运行，根据公共总线上的信号执行机动
        c) input/output
            红外遥控input接受命令，启动/停止行走机构
            LCD显示屏从总线接受显示内容，并显示在屏幕上。
'''
# 主进程
from multiprocessing import Process
from xiaolu import dd #控制通道  进程间数据共享
import affinity

if __name__ == "__main__":
    p1 = Process(target=wheel.standby,args=(dd,),name='wheel')


    p1.daemon = True

    p1.start()

    affinity.set_process_affinity_mask(p1.pid,7L)

    p1.join()

    print("系统停机...")
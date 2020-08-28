package cn.appsys.controller.xc;
//创建并启动线程
public class MyThread  extends Thread{
    public void run(){
        for (int i = 0; i <100 ; i++) {
            System.out.println(Thread.currentThread().getName()+":"+i);
        }
    }
}

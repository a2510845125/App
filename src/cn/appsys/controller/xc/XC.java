package cn.appsys.controller.xc;
//获取和设置主线程（名称）
public class XC {
    public static void main(String[] args) {
//        获取当前的线程对象
        Thread thread=Thread.currentThread();
//        获取当前线程对象的名称
        String name =thread.getName();
        System.out.println("当前线程的名字"+name);
//        为当前线程重新设置名称
        thread.setName("MyThread");
        name=thread.getName();
        System.out.println("当前线程的名字"+name);
    }
}

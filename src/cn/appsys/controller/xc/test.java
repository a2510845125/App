package cn.appsys.controller.xc;

//测试类
public class test {
    public static void main(String[] args) {
//        创建线程对象并启动
        MyThread myThread = new MyThread();
        MyThread myThread2 = new MyThread();
//        启动线程
        myThread.start();//相当于一个程序启动了一个线程 ， 第二个线程对象
        myThread2.start();
//        交替并行执行
//        是否可以调用fun（）方法调用线程？
        myThread.run();
        myThread2.run();//不是主线程，而且不是并行。失去了线程的意义
    }
}

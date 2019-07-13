# Video-Tracking-based-on-Particle-Filter

1、 算法：
  
  1）主要是利用粒子滤波来进行视频中物体的跟踪。
  
  2）在做粒子的权重计算时，使用的是与前一帧跟踪结果的相似性，相似性越高，粒子的权重越大。
  
  3）性能不是太好，因为前一帧的跟踪结果中的非目标部分会产生干扰。
  
  4）可做的进一步改进：
      
      使用目标模板匹配程度来作为粒子权重的衡量指标
      
      使用其他的特征（如：HOG,LBP）的匹配程度来作为粒子权重的衡量指标

2、使用说明：

  1）程序：
      
      在src文件夹内，其中runTracker.m为主程序，使用时直接运行该文件即可。
      
  2）数据：
      
      在data文件夹内，包括了两个视频，一个是用于跟踪汽车的视频，另一个是用于跟踪人脸的视频。

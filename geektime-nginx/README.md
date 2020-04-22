## 极客时间：nginx核心知识100讲

* [https://time.geekbang.org/course/detail/100020301-65086](https://time.geekbang.org/course/detail/100020301-65086)
* [https://github.com/geektime-geekbang/geektime-nginx](https://github.com/geektime-geekbang/geektime-nginx)


**第一章：初识 Nginx**

* [x] 01 | 课程综述
* [x] 02 | Nginx适用于哪些场景？
* [x] 03 | Nginx出现的历史背景
* [x] 04 | 为什么用Nginx：它的 5 个主要优点
* [x] 05 | Nginx的四个主要组成部分
* [x] 06 | Nginx的版本发布历史
* [x] 07 | 选择哪一个Nginx发行版本？
* [x] 08 | 编译出适合自己的Nginx
* [x] 09 | Nginx配置文件的通用语法介绍
* [x] 10 | Nginx命令行及演示：重载、热部署、日志切割
* [ ] 11 | 用Nginx搭建一个可用的静态资源Web服务器
* [ ] 12 | 用Nginx搭建一个具备缓存功能的反向代理服务
* [ ] 13 | 用GoAccess实现可视化并实时监控access日志
* [ ] 14 | 从网络原理来看SSL安全协议
* [ ] 15 | 对称加密与非对称加密各自的应用场景
* [ ] 16 | SSL证书的公信力是如何保证的？
* [ ] 17 | SSL协议握手时Nginx的性能瓶颈在哪里？
* [ ] 18 | 用免费SSL证书实现一个HTTPS站点
* [ ] 19 | 基于OpenResty用Lua语言实现简单服务

**第二章 Nginx 架构基础**


* [x] 20 | Nginx的请求处理流程
* [x] 21 | Nginx的进程结构
* [x] 22 | Nginx的进程结构实例演示
* [x] 23 | 使用信号管理Nginx的父子进程
* [x] 24 | reload重载配置文件的真相
* [x] 25 | 热升级的完整流程
* [x] 26 | 优雅地关闭worker进程
* [x] 27 | 网络收发与Nginx事件间的对应关系
* [x] 28 | Nginx网络事件实例演示
* [x] 29 | Nginx的事件驱动模型
* [x] 30 | epoll的优劣及原理
* [x] 31 | Nginx的请求切换
* [x] 32 | 同步&异步、阻塞&非阻塞之间的区别
* [x] 33 | Nginx的模块究竟是什么？
* [x] 34 | Nginx模块的分类
* [x] 35 | Nginx如何通过连接池处理网络请求
* [x] 36 | 内存池对性能的影响
* [x] 37 | 所有worker进程协同工作的关键：共享内存
* [x] 38 | 用好共享内存的工具：Slab管理器
* [x] 39 | 哈希表的max\_size与bucket\_size如何配置
* [x] 40 | Nginx中最常用的容器：红黑树
* [x] 41 | 使用动态模块来提升运维效率

**第三章 详解HTTP模块**

* [x] 42 | 第三章内容介绍
* [x] 43 | 冲突的配置指令以谁为准？
* [x] 44 | Listen指令的用法
* [x] 45 | 处理HTTP请求头部的流程
* [x] 46 | Nginx中的正则表达式
* [x] 47 | 如何找到处理请求的server指令块
* [x] 48 | 详解HTTP请求的11个阶段
* [x] 49 | 11个阶段的顺序处理
* [x] 50 | postread阶段：获取真实客户端地址的realip模块
* [x] 51 | rewrite阶段的rewrite模块：return指令
* [x] 52 | rewrite阶段的rewrite模块：重写URL
* [x] 53 | rewrite阶段的rewrite模块：条件判断
* [x] 54 | find_config阶段：找到处理请求的location指令块
* [x] 55 | preaccess阶段：对连接做限制的limit_conn模块
* [x] 56 | preaccess阶段：对请求做限制的limit_req模块
* [x] 57 | access阶段：对ip做限制的access模块
* [x] 58 | access阶段：对用户名密码做限制的auth_basic模块
* [x] 59 | access阶段：使用第三方做权限控制的auth_request模块
* [x] 60 | access阶段的satisfy指令
* [x] 61 | precontent阶段：按序访问资源的try_files模块
* [x] 62 | 实时拷贝流量：precontent阶段的mirror模块
* [x] 63 | content阶段：详解root和alias指令
* [x] 64 | static模块提供的3个变量
* [x] 65 | static模块对url不以斜杠结尾却访问目录的做法
* [x] 66 | index和autoindex模块的用法
* [ ] 67 | 提升多个小文件性能的concat模块
* [x] 68 | access日志的详细用法
* [x] 69 | HTTP过滤模块的调用流程
* [x] 70 | 用过滤模块更改响应中的字符串：sub模块
* [x] 71 | 用过滤模块在http响应的前后添加内容：addition模块
* [x] 72 | Nginx变量的运行原理
* [x] 73 | HTTP框架提供的请求相关的变量
* [x] 75 | 使用变量防盗链的referer模块
* [x ] 76 | 使用变量实现防盗链功能实践：secure_link模块
* [x] 77 | 为复杂的业务生成新的变量：map模块
* [x] 78 | 通过变量指定少量用户实现AB测试：split_client模块
* [x] 79 | 根据IP地址范围的匹配生成新变量：geo模块
* [x] 80 | 使用变量获得用户的地理位置：geoip模块
* [x] 81 | 对客户端使用keepalive提升连接效率

**反向代理与负载均衡**

* [x] 82 | 反向代理与负载均衡原理
* [x] 83 | 负载均衡策略：round-robin
* [x] 84 | 负载均衡哈希算法：ip_hash与hash模块
* [x] 85 | 一致性哈希算法：hash模块
* [x] 86 | 最少连接算法以及如何跨worker进程生效
* [x] 87 | upstream模块提供的变量
* [x] 88 | proxy模块处理请求的流程
* [x] 89 | proxy模块中的proxy_pass指令
* [x] 90 | 根据指令修改发往上游的请求
* [x] 91 | 接收用户请求包体的方式
* [x] 92 | 与上游服务建立连接
* [x] 93 | 接收上游的响应
* [x] 94 | 处理上游的响应头部
* [ ] 95 | 上游出现失败时的容错方案
* [ ] 96 | 对上游使用SSL连接
* [ ] 97 | 用好浏览器的缓存
* [ ] 98 | Nginx决策浏览器过期缓存是否有效
* [ ] 104 | uwsgi、fastcgi、scgi指令的对照表
* [ ] 135 | 用tcmalloc优化内存分配
* [ ] 136 | 使用Google PerfTools分析Nginx
* [ ] 137 | 使用stub_status模块监控Nginx的状态
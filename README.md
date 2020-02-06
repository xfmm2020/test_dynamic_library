# 该工程用来测试Makefile和CMakeList的用法

1. run.sh是直接用gcc命令编译库和可行性文件，主要是为了验证动态链接库的生成方式，动态链接库的直接引用和间接引用方式，以及生成的可执行文件是否包含动态链接库的地址。
2. CMakeLists.txt包含了生成两级动态链接库的方法以及引用动态链接库的方法
3. Makefile,Makefile1是两种静态编译的方法，不包含动态库
4. 尝试编译可执行文件以及下级的动态链接库，采用的自顶而下的方式，但是可能用法不对，并没有成功，目前知道，需要先makefile单独生成动态链接库，然后将该动态链接库连到可执行文件中是可行的，以后找到更合理的方式再尝试。


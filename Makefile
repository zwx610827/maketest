#伪目标 .PHONY:clean
#将clean声明目标为伪目标之后，makefile将不会判断目标是否存在或该目标是否需要更新
#(如果目录下有一个文件和make目标名称一样的文件，在执行make命令的时候，make会判断目标已存在，而不继续执行)
.PHONY:clean


OBJ=add.o sub.o multi.o calc.o
TARGET=calc

$(TARGET):$(OBJ)
	$(CC) $^ -o $@
#模式匹配 %目标:%依赖
#目标和依赖相同的部分，可用%来通配
#
%.o:%.c
	$(CC) -c $^ -o $@
clean:
	$(RM) *.o $(TARGET)
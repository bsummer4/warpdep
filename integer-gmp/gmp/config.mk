ifeq "$(HaveLibGmp)" ""
 HaveLibGmp = YES
endif

ifeq "$(HaveFrameworkGMP)" ""
 HaveFrameworkGMP = NO
endif

GMP_INCLUDE_DIRS = 
GMP_LIB_DIRS = 


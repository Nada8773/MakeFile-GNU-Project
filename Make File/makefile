
include config.mk

allObjs = $(allSrcs:.c=.o)
allDeps = $(allSrcs:.c=.d)

$(FinalTargetName) : CFLAG = -Wall
$(allObjs): CFLAG = -c  -Wall
$(allDeps): CFLAG = -MM



$(FinalTargetName) : $(allObjs)
	@ cmd /C progress.bat
	@ cmd /C progress.py 14
	@ $(CC) $(CFLAG) $^ -o $@ 
	@ echo 0 > progress.txt
	@echo\

$(allObjs) : %.o : %.c 
	@ cmd /C progress.bat
	@ cmd /C progress.py 14
	@ $(CC) $(CFLAG) $< -o $@ 
	
 
$(allDeps) : %.d : %.c | Dependencies
	@ $(CC) $(CFLAG) $< -o $@
	@ cp  $@ Dependencies
	@ cmd /C progress.bat
	@ cmd /C progress.py 14
	@echo\


Dependencies:
	@mkdir $@

	

.PHONY: clean link onlyCompile depend all

clean: 
	rm -r $(FinalTargetName) $(allObjs) $(allDeps) Dependencies\*
	

link: 
	@ $(CC) $(CFLAG) $(allObjs) -o $(FinalTargetName)

onlyCompile: $(allObjs)
	@ echo 0 > progress.txt
		

depend: $(allDeps)
	@ echo 0 > progress.txt
		

all: $(allDeps) 
	@ $(MAKE) $(FinalTargetName)
	


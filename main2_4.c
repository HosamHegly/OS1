#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>

int main(){
    pid_t pid=fork();
    if(pid==0)
    {
        char * args[2]={"./Fork",NULL};
        execvp(args[0],args);
                pid_t pid=fork();

        if(pid==0)
        {
            
        char * args[2]={"./Clone",NULL};
        execvp(args[0],args);
            pid_t pid=fork();
            if(pid==0)
            { char * args[2]={"./Daemon",NULL};
             execvp(args[0],args);
           
                
            }
        }
    }
   return 0;
}
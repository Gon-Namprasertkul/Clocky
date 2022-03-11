#include <ncurses.h>
#include <time.h>
#include <stdlib.h>
#include <unistd.h>
#include <string>


int main () {
   while(1) {
   WINDOW * win = initscr();
   box(win,0,0);
   refresh();
   erase();
   int row,col;
   time_t rawtime;
   struct tm *info;
   char buffer[80];

   time( &rawtime );

   info = localtime( &rawtime );
   strftime(buffer,80,"%I:%M:%S %p", info);
   getmaxyx(stdscr,row,col);
   mvprintw(row/2,(col-strlen(buffer))/2,"%s",buffer);
   }
   return(0);
}

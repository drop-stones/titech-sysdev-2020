#include <string.h>

int a;
struct user {
  unsigned int id;
  char name [10];
};


int
main (int argc, char *argv[])
{
  int a [5] = {0, 1, 2, 3, 4};
  struct user u;
  u.id = 100;
  strcpy (u.name, "Your name");

  return 0;
}

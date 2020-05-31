#include <stdint.h>

uint8_t* easy_p = 0x0202BD32;
uint8_t* hard_p = 0x0202BD04;
uint32_t* setval_args = 0x030004B8;

enum {easymode=0,normalmode,hardmode};

void inline not_easy() 
{
    *easy_p |= 0x20;
}
void inline hard() 
{
    *hard_p |= 0x40;
} 
void inline easy() 
{
    *easy_p &= ~0x20;
}
void inline not_hard() 
{
    *hard_p &= ~0x40;
} 

void modular()
{
    int mode = setval_args[1];
    (mode > easymode) ? not_easy() : easy();
    (mode > normalmode) ? hard() : not_hard();
}
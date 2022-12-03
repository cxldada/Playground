#include "../include/tools.h"

void main() {
    LCD_Init();
    LCD_ShowChar(1, 1, 'h');
    LCD_ShowString(1, 3, "cxldada");
    while (1) {
    }
}
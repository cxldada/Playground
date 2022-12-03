#include "../include/tools.h"

unsigned char KeyNum;

void main() {
    LCD_Init();
    LCD_ShowString(1, 1, "cxldada");
    while (1) {
        KeyNum = MatrixKey();
        if (KeyNum) {
            LCD_ShowNum(2, 1, KeyNum, 2);
        }
    }
}
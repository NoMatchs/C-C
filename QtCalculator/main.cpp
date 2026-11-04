#include <QApplication>
#include "calculator.h"
#include <windows.h>

int main(int argc, char *argv[]);

#ifdef _WIN32
int __stdcall WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
    return main(__argc, __argv);
}
#endif

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    Calculator calc;
    calc.setWindowTitle("简单计算器");
    calc.show();
    return a.exec();
}
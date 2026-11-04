#include "calculator.h"
#include <QFont>
// #include <QJSEngine>

// ==================== 构造函数：界面与样式 ====================
Calculator::Calculator(QWidget *parent) : QWidget(parent)
{
    this->setFixedSize(320, 450);
    this->setStyleSheet("background-color: #2b2b2b;");

    display = new QLineEdit("0");
    display->setReadOnly(true);
    display->setAlignment(Qt::AlignRight);
    display->setFixedHeight(80);
    display->setStyleSheet(
        "QLineEdit {"
        "  background-color: #1e1e1e;"
        "  color: #ffffff;"
        "  font-size: 32px;"
        "  border-radius: 10px;"
        "  padding-right: 15px;"
        "  border: none;"
        "}");

    QGridLayout *layout = new QGridLayout(this);
    layout->addWidget(display, 0, 0, 1, 4);
    layout->setSpacing(10);
    layout->setContentsMargins(15, 15, 15, 15);

    QStringList buttons = {
        "C", "/", "*", "-",
        "7", "8", "9", "+",
        "4", "5", "6", "",
        "1", "2", "3", "=",
        "0", ".", "", ""};

    int pos = 0;
    for (int row = 1; row <= 5; ++row)
    {
        for (int col = 0; col < 4; ++col)
        {
            if (row == 4 && col == 3)
                continue;
            if (row == 5)
            {
                if (col == 0)
                {
                    QPushButton *btn0 = new QPushButton("0");
                    btn0->setFixedHeight(60);
                    btn0->setStyleSheet("QPushButton { background-color: #3c3c3c; color: white; font-size: 24px; border-radius: 8px; font-weight: bold; } QPushButton:hover { background-color: #4a4a4a; } QPushButton:pressed { background-color: #222222; }");
                    connect(btn0, &QPushButton::clicked, this, &Calculator::digitClicked);
                    layout->addWidget(btn0, 5, 0, 1, 2);
                    continue;
                }
                else if (col == 1)
                {
                    continue;
                }
                else if (col == 2)
                {
                    QPushButton *btnPoint = new QPushButton(".");
                    btnPoint->setFixedHeight(60);
                    btnPoint->setStyleSheet("QPushButton { background-color: #3c3c3c; color: white; font-size: 24px; border-radius: 8px; font-weight: bold; } QPushButton:hover { background-color: #4a4a4a; } QPushButton:pressed { background-color: #222222; }");
                    connect(btnPoint, &QPushButton::clicked, this, &Calculator::pointClicked);
                    layout->addWidget(btnPoint, 5, 2);
                    continue;
                }
                else if (col == 3)
                {
                    QPushButton *btnEqual = new QPushButton("=");
                    btnEqual->setStyleSheet("QPushButton { background-color: #0078d7; color: white; font-size: 28px; border-radius: 8px; } QPushButton:hover { background-color: #1084d8; } QPushButton:pressed { background-color: #005a9e; }");
                    connect(btnEqual, &QPushButton::clicked, this, &Calculator::equalClicked);
                    layout->addWidget(btnEqual, 4, 3, 2, 1);
                    continue;
                }
            }

            if (pos >= buttons.size())
                break;
            QString btnText = buttons[pos];
            if (btnText == "")
            {
                pos++;
                continue;
            }

            QPushButton *btn = new QPushButton(btnText);
            btn->setFixedHeight(60);

            if (btnText == "+" || btnText == "-" || btnText == "*" || btnText == "/" || btnText == "C")
            {
                btn->setStyleSheet("QPushButton { background-color: #ff8c00; color: white; font-size: 24px; border-radius: 8px; font-weight: bold; } QPushButton:hover { background-color: #ffa333; } QPushButton:pressed { background-color: #cc7000; }");
            }
            else
            {
                btn->setStyleSheet("QPushButton { background-color: #3c3c3c; color: white; font-size: 24px; border-radius: 8px; font-weight: bold; } QPushButton:hover { background-color: #4a4a4a; } QPushButton:pressed { background-color: #222222; }");
            }

            layout->addWidget(btn, row, col);

            if (btnText == "C")
                connect(btn, &QPushButton::clicked, this, &Calculator::clearClicked);
            else if (btnText == "+" || btnText == "-" || btnText == "*" || btnText == "/")
                connect(btn, &QPushButton::clicked, this, &Calculator::operatorClicked);
            else
                connect(btn, &QPushButton::clicked, this, &Calculator::digitClicked);

            pos++;
        }
    }
}

// ==================== 逻辑部分 ====================

void Calculator::digitClicked()
{
    QPushButton *btn = qobject_cast<QPushButton *>(sender());
    if (!btn)
        return;

    QString digit = btn->text();

    // 如果当前是初始状态 "0"、出错、或者刚算完等号，直接替换
    if (display->text() == "0" || display->text() == "错误" || waitingForOperand)
    {
        display->setText(digit);
        waitingForOperand = false;
    }
    else
    {
        // 否则继续拼接
        display->setText(display->text() + digit);
    }
}

void Calculator::operatorClicked()
{
    QPushButton *btn = qobject_cast<QPushButton *>(sender());
    if (!btn)
        return;

    QString currentText = display->text();

    // 如果当前是错误状态，或者正等待输入新数字，重置为当前数字+运算符
    if (currentText == "错误")
    {
        display->setText("0" + btn->text());
    }
    else
    {
        // 防止连续输入两个运算符（比如 1++2）
        QChar lastChar = currentText.at(currentText.length() - 1);
        if (lastChar == '+' || lastChar == '-' || lastChar == '*' || lastChar == '/')
        {
            // 替换掉最后一个运算符
            currentText.chop(1);
            display->setText(currentText + btn->text());
        }
        else
        {
            display->setText(currentText + btn->text());
        }
    }
    waitingForOperand = false;
}

void Calculator::equalClicked()
{
    QString expression = display->text();
    std::string expr = expression.toStdString();

    // 如果只有一个数字没有运算符，不需要计算
    if (expr.find('+') == std::string::npos && expr.find('-') == std::string::npos &&
        expr.find('*') == std::string::npos && expr.find('/') == std::string::npos)
    {
        return;
    }

    try
    {
        size_t pos = 0;
        double firstNum = std::stod(expr, &pos); // 解析第一个数字
        if (pos >= expr.length())
        {
            display->setText(QString::number(firstNum));
            waitingForOperand = true;
            return;
        }

        char op = expr[pos]; // 获取运算符
        size_t opPos = pos;

        // 如果运算符前面不是数字（比如按了 + 开头），直接报错
        if (opPos == 0)
            throw std::invalid_argument("Format");

        // 切分剩下的部分
        std::string rest = expr.substr(pos + 1);
        double secondNum = std::stod(rest);

        // 计算
        double result = 0;
        if (op == '+')
            result = firstNum + secondNum;
        else if (op == '-')
            result = firstNum - secondNum;
        else if (op == '*')
            result = firstNum * secondNum;
        else if (op == '/')
        {
            if (secondNum == 0)
            {
                display->setText("错误");
                waitingForOperand = true;
                return;
            }
            result = firstNum / secondNum;
        }

        // 判断结果是否为无限大或非法
        if (std::isinf(result) || std::isnan(result))
        {
            display->setText("错误");
        }
        else
        {
            display->setText(QString::number(result));
        }
    }
    catch (...)
    {
        display->setText("错误");
    }

    waitingForOperand = true;
}

void Calculator::clearClicked()
{
    display->setText("0");
    waitingForOperand = true;
}

void Calculator::pointClicked()
{
    // 如果刚算完等号、出错或初始状态，直接按点变成 "0."
    if (waitingForOperand || display->text() == "错误")
    {
        display->setText("0.");
        waitingForOperand = false;
        return;
    }

    // 防止在一个数字里输入多个小数点
    QString currentText = display->text();
    int lastOperatorPos = -1;
    for (int i = 0; i < currentText.length(); ++i)
    {
        if (currentText[i] == '+' || currentText[i] == '-' || currentText[i] == '*' || currentText[i] == '/')
        {
            lastOperatorPos = i;
        }
    }
    QString lastNumber = currentText.mid(lastOperatorPos + 1);
    if (!lastNumber.contains('.'))
    {
        display->setText(currentText + ".");
    }
}
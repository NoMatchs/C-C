#include "calculator.h"

Calculator::Calculator(QWidget *parent) : QWidget(parent)
{
    // 1. 设置显示框
    display = new QLineEdit("0");
    display->setReadOnly(true);
    display->setAlignment(Qt::AlignRight);
    display->setFixedHeight(50);
    display->setStyleSheet("font-size: 24px; padding: 5px;");

    // 2. 创建按钮
    QGridLayout *layout = new QGridLayout(this);
    layout->addWidget(display, 0, 0, 1, 4); // 跨4列

    QStringList buttons = {"C", "/", "*", "-",
                           "7", "8", "9", "+",
                           "4", "5", "6", "=",
                           "1", "2", "3", "0"};

    int pos = 0;
    for (int row = 1; row <= 4; ++row)
    {
        for (int col = 0; col < 4; ++col)
        {
            if (row == 4 && col == 3)
                continue; // 右下角的 0 需要特殊处理
            if (pos >= buttons.size())
                break;

            QPushButton *btn = new QPushButton(buttons[pos]);
            btn->setFixedSize(60, 60);
            btn->setStyleSheet("font-size: 18px;");
            layout->addWidget(btn, row, col);

            // 绑定信号槽
            if (btn->text() == "C")
                connect(btn, &QPushButton::clicked, this, &Calculator::clearClicked);
            else if (btn->text() == "=")
                connect(btn, &QPushButton::clicked, this, &Calculator::equalClicked);
            else if (btn->text() == "+" || btn->text() == "-" || btn->text() == "*" || btn->text() == "/")
                connect(btn, &QPushButton::clicked, this, &Calculator::operatorClicked);
            else
                connect(btn, &QPushButton::clicked, this, &Calculator::digitClicked);

            pos++;
        }
    }

    // 处理 0 和 . (暂略小数点，0 占位)
    QPushButton *btn0 = new QPushButton("0");
    btn0->setFixedSize(60, 60);
    connect(btn0, &QPushButton::clicked, this, &Calculator::digitClicked);
    layout->addWidget(btn0, 4, 0, 1, 2); // 占两列

    QPushButton *btnPoint = new QPushButton(".");
    btnPoint->setFixedSize(60, 60);
    connect(btnPoint, &QPushButton::clicked, this, &Calculator::pointClicked);
    layout->addWidget(btnPoint, 4, 2);
}

void Calculator::digitClicked()
{
    QPushButton *btn = qobject_cast<QPushButton *>(sender());
    if (!btn)
        return;

    QString digit = btn->text();
    if (display->text() == "0" || waitingForOperand)
    {
        display->setText(digit);
        waitingForOperand = false;
    }
    else
    {
        display->setText(display->text() + digit);
    }
}

void Calculator::operatorClicked()
{
    QPushButton *btn = qobject_cast<QPushButton *>(sender());
    if (!btn)
        return;

    double operand = display->text().toDouble();

    if (!pendingOperator.isEmpty())
    {
        if (pendingOperator == "+")
            currentResult += operand;
        else if (pendingOperator == "-")
            currentResult -= operand;
        else if (pendingOperator == "*")
            currentResult *= operand;
        else if (pendingOperator == "/")
        {
            if (operand == 0.0)
            {
                display->setText("错误");
                pendingOperator.clear();
                waitingForOperand = true;
                return;
            }
            currentResult /= operand;
        }
        display->setText(QString::number(currentResult));
    }
    else
    {
        currentResult = operand;
    }

    pendingOperator = btn->text();
    waitingForOperand = true;
}

void Calculator::equalClicked()
{
    if (pendingOperator.isEmpty())
        return;

    double operand = display->text().toDouble();
    if (pendingOperator == "+")
        currentResult += operand;
    else if (pendingOperator == "-")
        currentResult -= operand;
    else if (pendingOperator == "*")
        currentResult *= operand;
    else if (pendingOperator == "/")
    {
        if (operand == 0.0)
        {
            display->setText("错误");
            pendingOperator.clear();
            waitingForOperand = true;
            return;
        }
        currentResult /= operand;
    }

    display->setText(QString::number(currentResult));
    pendingOperator.clear();
    waitingForOperand = true;
}

void Calculator::clearClicked()
{
    display->setText("0");
    currentResult = 0.0;
    pendingOperator.clear();
    waitingForOperand = true;
}

void Calculator::pointClicked()
{
    if (waitingForOperand)
    {
        display->setText("0.");
        waitingForOperand = false;
    }
    else if (!display->text().contains('.'))
    {
        display->setText(display->text() + ".");
    }
}
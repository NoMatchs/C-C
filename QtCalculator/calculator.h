#ifndef CALCULATOR_H
#define CALCULATOR_H

#include <QWidget>
#include <QLineEdit>
#include <QPushButton>
#include <QGridLayout>
#include <QString>

class Calculator : public QWidget
{
    Q_OBJECT

public:
    Calculator(QWidget *parent = nullptr);

private slots:
    void digitClicked();
    void operatorClicked();
    void equalClicked();
    void clearClicked();
    void pointClicked();

private:
    QLineEdit *display;
    double currentResult = 0.0;
    QString pendingOperator;
    bool waitingForOperand = true;
};

#endif // CALCULATOR_H
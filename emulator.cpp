#include <iostream>
#include <vector>
#include <string>
using namespace std;

// 极简指令集
enum Opcode
{
    LOAD,
    ADD,
    STORE,
    HLT
};

struct Instruction
{
    Opcode op;
    int addr; // 操作数地址
};

class SimpleComputer
{
private:
    vector<int> memory;  // 存储器：程序 + 数据
    int accumulator = 0; // 累加器（ALU 的工作寄存器）
    int pc = 0;          // 程序计数器

public:
    SimpleComputer(int memSize) : memory(memSize, 0) {}

    // 加载程序到内存
    void loadProgram(const vector<Instruction> &prog, int startAddr)
    {
        for (size_t i = 0; i < prog.size(); ++i)
        {
            // 简化：每条指令占两个内存单元（op 和 addr）
            memory[startAddr + i * 2] = prog[i].op;
            memory[startAddr + i * 2 + 1] = prog[i].addr;
        }
    }

    void setData(int addr, int value) { memory[addr] = value; }
    int getData(int addr) const { return memory[addr]; }

    // CPU 主循环：取指 → 译码 → 执行
    void run()
    {
        while (true)
        {
            // 1. 取指
            Opcode op = static_cast<Opcode>(memory[pc]);
            int addr = memory[pc + 1];
            pc += 2;

            // 2. 译码 + 3. 执行
            switch (op)
            {
            case LOAD:
                accumulator = memory[addr];
                cout << "LOAD  mem[" << addr << "] -> ACC = "
                     << accumulator << "\n";
                break;
            case ADD:
                accumulator += memory[addr];
                cout << "ADD   mem[" << addr << "] -> ACC = "
                     << accumulator << "\n";
                break;
            case STORE:
                memory[addr] = accumulator;
                cout << "STORE ACC -> mem[" << addr << "] = "
                     << accumulator << "\n";
                break;
            case HLT:
                cout << "HLT   停机\n";
                return;
            }
        }
    }
};

int main()
{
    SimpleComputer cpu(64);

    // 程序：计算 mem[10] + mem[11]，结果存到 mem[12]
    vector<Instruction> prog = {
        {LOAD, 10},  // ACC = mem[10]
        {ADD, 11},   // ACC += mem[11]
        {STORE, 12}, // mem[12] = ACC
        {HLT, 0}};

    cpu.loadProgram(prog, 0); // 程序从地址 0 开始
    cpu.setData(10, 7);       // 数据
    cpu.setData(11, 35);

    cpu.run();

    cout << "结果 mem[12] = " << cpu.getData(12) << "\n"; // 42
    return 0;
}
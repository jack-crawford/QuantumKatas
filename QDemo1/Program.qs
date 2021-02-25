namespace QDemo1 {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Diagnostics;
    @EntryPoint()
    operation SayHello() : Unit {
        Message("Hello quantum world!");

        MeetTheQubit();
    }
    operation MeetTheQubit() : Unit {
        use q = Qubit() {
            Message("Qubit in state |0>");
            DumpMachine();
            let bit = M(q);
            Reset(q);
            Message($"bit = {bit}");
        }
    }
}

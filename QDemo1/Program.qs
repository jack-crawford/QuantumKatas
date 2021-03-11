namespace QDemo1 {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Diagnostics;
    @EntryPoint()
    operation SayHello() : Unit {
        Message("Hello quantum world!");

        Mystery();
    }
    // operation MeetTheQubit() : Unit {
    //     use q = Qubit() {
    //         Message("Qubit in state |0>");
    //         DumpMachine();
    //         let bit = M(q);
    //         Reset(q);
    //         Message($"bit = {bit}");
    //     }
    // }
     operation Mystery() : Unit {
        use q = Qubit() {
            H(q);
            let bit = M(q);
            H(q);
            // DumpMachine();
            Reset(q);
        }
    }
}

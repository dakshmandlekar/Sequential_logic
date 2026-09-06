# Sequential Circuits – Verilog

This repository contains my implementations and simulations of **sequential digital circuits** using Verilog/SystemVerilog.

The projects focus on understanding clocked logic, memory elements, registers, counters, and other sequential building blocks used in digital system design.

---

## What is Sequential Logic?

Unlike combinational logic, where the output depends only on the present input, sequential logic has **memory**.

The output depends on:

- Present inputs
- Previous state
- Clock signal

Basic concept:

```text
        Inputs
           |
           v
   +----------------+
   | Combinational  |
   |     Logic      |
   +----------------+
           |
           v
   +----------------+
   |  Memory /      |
   |  State Elements|
   +----------------+
           ^
           |
         Clock
           |
           v
        Outputs

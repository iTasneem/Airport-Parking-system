# Airport Parking system

This repository contains VHDL code for an airplane parking system designed to simulate the management of parking slots at an airport. The system includes components for individual airplanes, airport emergency detection, and a top-level integration module.

## Components

1. **airplane.vhd**: Defines the `airplane` entity, which manages the state of individual airplanes, including entry, exit, and emergency conditions.
2. **airplaneParking.vhd**: Defines the `airplaneParking` entity, which manages the parking slots at the airport, including both normal and emergency slots.
3. **airportE.vhd**: Defines the `airportE` entity, which detects emergency conditions at the airport, such as fire or adverse weather.
4. **Timer.vhd**: Defines a timer component used for timing operations in the airplane entity.
5. **Top.vhd**: Integrates the above components at the top level to orchestrate the overall system behavior.

## Description

The airplane parking system simulates the process of airplanes entering, parking, and leaving parking slots at an airport. It also detects and handles emergency conditions at the airport.

## Usage

1. **Simulation**: Use a VHDL simulator to simulate the behavior of the airplane parking system. Provide appropriate input signals and observe the outputs to understand the system's operation.
2. **Integration**: Integrate the provided components into a larger system design if needed. Ensure proper connectivity and initialization for correct functionality.

## Testbench

1. **top_tp.vhd**: Provides a testbench for the `Top` entity. It generates clock signals, reset signals, and simulates fire emergencies to test the behavior of the integrated system.



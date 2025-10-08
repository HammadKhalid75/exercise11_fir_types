### Overview

This repository contains a **MATLAB** project for analyzing the four main types of **Finite Impulse Response (FIR) filters** (Type I, II, III, and IV). The analysis focuses on visualizing the filters' key characteristics: **Magnitude Response**, **Unwrapped Phase Response**, and **Pole-Zero Diagram**.

The script organizes the results into a single $4 \times 3$ figure, allowing for easy comparison of the different filter types.

-----

### Files

  * **`ex11_main.m`**: The core MATLAB script. It defines the four FIR impulse responses, calculates the frequency response using `freqz`, and plots the required diagrams using `subplot`, `unwrap`, and `zplane`.

-----

### Filters Implemented

| Filter | Impulse Response | Type | Characteristic |
| :---: | :---: | :---: | :---: |
| **h1** | $\text{[1 2 3 4 4 3 2 1]}$ | **Type I** | Even Length, Symmetric |
| **h2** | $\text{[1 2 3 4 3 2 1]}$ | **Type II** | Odd Length, Symmetric |
| **h3** | $\text{[-1 -2 -3 -4 4 3 2 1]}$ | **Type III** | Even Length, Antisymmetric |
| **h4** | $\text{[-1 -2 -3 0 3 2 1]}$ | **Type IV** | Odd Length, Antisymmetric |

-----

### Usage

1.  Clone this repository or download the `ex11_main.m` file.
2.  Open **MATLAB**.
3.  Navigate to the directory containing the script.
4.  Run the script from the command window:
    ```matlab
    ex11_main
    ```

A figure will be generated showing the $4 \times 3$ set of plots.

-----

### Results Layout

The figure is structured with four rows (one for each FIR type) and three columns:

| Column 1 | Column 2 | Column 3 |
| :---: | :---: | :---: |
| Magnitude Response | Unwrapped Phase Response | Pole-Zero Diagram |

The Pole-Zero plots confirm that all **poles** for FIR filters are located at the **origin** ($z=0$).

# System Overview – Single Phase DC–AC Inverter

This document describes the **system-level operation** of a single-phase DC–AC inverter
developed during an industrial R&D internship. The explanation is conceptual and
non-confidential.

---

## Input Stage

The system supports both **AC input** and **wide-range DC input**.
The DC input is conditioned internally to meet the required DC bus level
for inverter operation.

---

## Auxiliary Power Supply (SMPS)

An internal SMPS stage generates auxiliary voltages required for control
and gate drive circuits. Typical outputs include:

- +5 V
- +15 V
- −15 V
- +12 V

These supplies power logic control, sensing, and isolated driver stages.

---

## Master Control & Regulating Interface (MCRI)

The MCRI acts as the central control unit of the system and performs:

- Generation of firing pulses for SCR stages
- PWM generation for IGBT inverter switching
- Voltage and current feedback handling
- Basic protection logic

---

## Driver Stages

### SCR Driver
Provides electrical isolation, gate pulse shaping, and controlled gate
current for reliable triggering of SCRs used in controlled rectification.

### IGBT Driver
Provides isolation, level shifting, and high-side / low-side gate driving
for PWM-controlled inverter bridge legs.

---

## Power Conversion Stages

### SCR Controlled Rectification
Used to control and regulate the DC bus when operating from AC input.

### IGBT PWM Inverter
Converts regulated DC into single-phase AC output using PWM switching.

---

## Output Stage

The inverter delivers a **single-phase AC output** to the connected load,
controlled through PWM and feedback mechanisms.

---

## Design Focus Areas

- Isolation between control and power stages
- Coordination between SCR and IGBT stages
- Safe gate driving and feedback handling
- Modular system architecture

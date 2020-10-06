# Network Attacks
Repository to aggregate network attacks algorithms.

## Required Software
The code found here requires [ns-3](https://www.nsnam.org/) to be simulated. Version used: 3.31.

## Instructions
Every attack have a script to inject needed files in ns-3 (inject.sh), and another one to run (run.sh).

### Inject
A proper root and ns-3 version should be replaced in the inject.sh.

### Run
The run.sh script will be injected in the ns-3 home.

## DDOS Attack
The code to simulate a DDOS attack in ns-3 can be found at [ddos-attack](ddos-attack). It was created by [Saket-Upadhyay](https://github.com/Saket-Upadhyay/ns3-cybersecurity-simulations). A detailed explanation can be found at [here](https://medium.com/bugbountywriteup/ddos-simulation-in-ns-3-c-12f031a7b38c).

### Steps

1. Run inject.sh script.
2. Go to ns-3 home.
3. Run run.sh script.
4. Wait simulation to be finished.
5. Go to netanim home.
6. If you do not installed netanim yet, follow these [instructions](https://www.nsnam.org/wiki/NetAnim_3.108#Prerequisites).
7. Run Netanim and open DDoSim.xml generated from simulation in ns-3 home.
8. Run animation and note network behavior.
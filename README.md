# DFT Project Flow

This repository contains DFT (Design for Test) projects for various designs. Each project directory includes scripts and configurations for synthesis using Cadence Genus.

## Directory Structure

```
DFT/ 
├── mcrb/ 
| ├── LIB/                    # Library files (.lib)
│ ├── LEF/                  # Layout Exchange Format files
│ ├── RTL/                  # RTL source files
│ │ ├── mcrb.v              # Main Verilog file
│ │ └── constraints.sdc     # Timing constraints
│ ├── OUTPUTS/              # Generated output files (netlist, logs)
│ ├── REPORTS/              # Synthesis reports (timing, area)
│ └── run.tcl               # Genus synthesis script
├── ics298/                 # Another project
├── counter_dft/            # Another project
└── ...                     # Additional projects <br>

```


## Prerequisites
- Cadence Genus installed and licensed
- Valid library files (.lib, LEF) in project directories
- UNIX/Linux environment

---

# Running Synthesis with Genus

## Step 1: Prepare Your Project
Navigate to your project directory:
```bash
cd DFT/mcrb/  # Example for mcrb project
```

## Step 2: Edit run.tcl Script

Open run.tcl in a text editor and modify these critical variables:
```tcl
# ====== USER CONFIGURATION ======
set VERILOG mcrb            # Your main Verilog filename
set TOP_MODULE mcrb         # Top module name
# ================================
```

## Step 3: Run Genus Synthesis

Launch Genus:
```bash
genus -gui &  # For GUI mode
# or
genus -nogui  # For command-line mode
```

In Genus TCL console:

```tcl
# Source the run script
source run.tcl

# The script will:
# 1. Read libraries and LEF
# 2. Load RTL design
# 3. Apply constraints
# 4. Run synthesis
# 5. Generate reports and outputs

```

## After completion:

- Check OUTPUTS/ for:

    - mcrb_netlist.v (synthesized netlist)

    - mcrb.sdf (timing data)

- Check REPORTS/ for:

    - timing_report.rep

    - area_report.rep

    - power_report.rep

# Troubleshooting Common Issues
1. File Not Found Errors:
    - Verify paths in run.tcl match your directory structure
    - Check case sensitivity of filenames

2. Missing Constraints:
    - Ensure constraints.sdc exists in RTL/
    - Validate clock definitions in SDC file

3. Library Compatibility:
    - Confirm .lib and LEF versions match your Genus version
    - Check library corner (slow.lib vs fast.lib)

4. Undefined Modules:
    - Verify all submodules are included in RTL/
    - Check TOP_MODULE name matches Verilog

# Customization Options

1. Synthesis Strategy: <br>
    Modify these parameters in run.tcl:
    ```tcl
    set SYNTH_EFFORT "high"  # [low|medium|high]
    set CLOCK_UNCERTAINTY 0.2
    set OUT_DELAY 0.4
    ```

2. Multi-Corner Analysis: <br>
    Add additional libraries:
    ```tcl
    read_libs [list "LIB/slow.lib" "LIB/fast.lib" "LIB/typical.lib"]
    ```

# Support
For issues contact: [Jagadeesh Pradhani] jagadeesh.d.pradhani@gmail.com <br>
Last updated: 20/02/2025
#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo "Start Times"

echo "<rplparallel-slurm.sh>"
head -n 1 rplpl-slurm*.out
echo "<rs1-slurm.sh>"
head -n 1 rs1-slurm*.out
echo "<rs2-slurm.sh>"
head -n 1 rs2-slurm*.out
echo "<rs3-slurm.sh>"
head -n 1 rs3-slurm*.out
echo "<rs4-slurm.sh>"
head -n 1 rs4-slurm*.out

echo "End Times"

echo "<rplparallel-slurm.sh>"
tail -n 5 rplpl-slurm*.out
echo "<rs1-slurm.sh>"
tail -n 5 rs1-slurm*.out
echo "<rs2-slurm.sh>"
tail -n 5 rs2-slurm*.out
echo "<rs3-slurm.sh>"
tail -n 5 rs3-slurm*.out
echo "<rs4-slurm.sh>"
tail -n 5 rs4-slurm*.out

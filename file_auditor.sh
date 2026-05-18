#!/bin/bash
#====================================================================
#
#FILE SYSTEM AUDITOR REPORT
#Purpose: View potentially dangerous files with insecure permissions
#
#====================================================================

SCAN_DIR=~/projects/file-auditor/test_directory
REPORT_FILE=~/projects/file-auditor/Audit_Report.txt

echo "=================" > $REPORT_FILE
echo "File System Audit Report" >> $REPORT_FILE
echo "Generated: $(date)" >>$REPORT_FILE
echo "=================" >> $REPORT_FILE
echo "" >> $REPORT_FILE

echo "--- Scanning $SCAN_DIR ---" >> $REPORT_FILE
echo "" >> $REPORT_FILE

echo "--- WORLD WRITABLE FILES (dangerous) ---" >> $REPORT_FILE
find $SCAN_DIR -type f -perm -o=w >> $REPORT_FILE
echo "" >> $REPORT_FILE

echo "--- WORLD EXECUTABLE FILES (review needed) ---" >> $REPORT_FILE
find $SCAN_DIR -type f -perm -o=x >> $REPORT_FILE
echo "" >> $REPORT_FILE

echo "--- FULL PERMISSIONS AND OWNERSHIP OF FILES ---" >> $REPORT_FILE
ls -lh $SCAN_DIR >> $REPORT_FILE
echo "" >> $REPORT_FILE

echo "AUDIT COMPLETE" >> $REPORT_FILE 
echo "" >> $REPORT_FILE

echo "Audit Complete."
echo "View Report by Running: cat $REPORT_FILE"

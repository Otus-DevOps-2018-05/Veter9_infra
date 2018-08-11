#!/usr/bin/env bash

path="/home/nedoumenie/Desktop/Veter9_infra/ansible"
echo "[app]" > $path/inventory
echo "appserver ansible_host="`gcloud compute instances list | awk 'NR==2' | awk '{print $5}'` >> $path/inventory



path="/home/nedoumenie/Desktop/Veter9_infra/ansible"
echo "[db]" >> $path/inventory
echo "appserver ansible_host="`gcloud compute instances list | awk 'NR==3' | awk '{print $5}'` >> $path/inventory
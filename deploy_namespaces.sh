#!/bin/bash

# Define a bunch of namespaces
# GPO is for container workloads
# PPO is for VM workloads

PROJECTS=("gpo-ns-app" "gpo-ns-cli-1" "gpo-ns-cli-2" "ppo-ns-vm")

# Loop with error catch
# In Dutch

for PROJECT in "${PROJECTS[@]}"
do
    echo "Aanmaken project: $PROJECT"
    oc new-project "$PROJECT" --description="Project $PROJECT" --display-name="$PROJECT"
    if [ $? -eq 0 ]; then
        echo "Project $PROJECT is succesvol aangemaakt."
    else
        echo "Aanmaken van project $PROJECT is mislukt. Controleer het script of debug via de OpenShift CLI."
    fi
done

echo "Alle projecten aangemaakt."

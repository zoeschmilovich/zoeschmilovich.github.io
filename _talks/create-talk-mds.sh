#!/bin/bash

mkdir -p _talks

create_talk () {
  DATE=$1
  SLUG=$2
  TITLE=$3
  TYPE=$4
  VENUE=$5
  LOCATION=$6

  FILE="_talks/${DATE}-${SLUG}.md"

  cat <<EOF > $FILE
---
title: "$TITLE"
collection: talks
type: "$TYPE"
permalink: /talks/${SLUG}
venue: "$VENUE"
location: "$LOCATION"
date: ${DATE}-01-01
---

EOF

  echo "Created $FILE"
}

create_talk 2024 precision-medicine \
"Precision Medicine Winter Symposium" \
"Invited Speaker" \
"Precision Medicine Winter Symposium, McGill University Health Centre" \
"Montreal, Canada"

create_talk 2023 wcpg \
"Exploring the common genetic architecture of autism spectrum disorder using a novel multi-polygenic risk score approach" \
"Invited Speaker" \
"World Congress of Psychiatric Genetics" \
"Montreal, Canada"

create_talk 2023 eshg \
"Exploring the common genetic architecture of autism spectrum disorder using a novel multi-polygenic risk score approach" \
"Invited Speaker (Best-scored paper)" \
"European Society for Human Genetics" \
"Scotland, UK"

create_talk 2021 nam \
"Modelling the combined effects of rare and common genetic variants, with opposite effects on cognition, on autism spectrum disorder risk" \
"Invited Speaker" \
"National Academy of Medicine" \
"Paris, France"

create_talk 2026 future-in-focus \
"Future in Focus: Development of a Commercialization Plan and Continued Assessment for Drug Safety" \
"Invited Speaker (Upcoming)" \
"The Desjardins Centre for Advanced Training, Research Institute of the MUHC" \
"Montreal, Canada"

echo "All talks created successfully."
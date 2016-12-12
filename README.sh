#!/usr/bin/env sh


README="$(cd "$(dirname "$0")"; pwd)/README.md"


cat <<EOF > "${README}"
---
layout: documentation
---

{% include base.html %}

# Classic Icon Set

These are animated weather conditions icons for UI widgets.<br/><br/>

EOF


for icon in icons/*.png; do

  name="$(basename "${icon}" | cut -d '.' -f1)"

  if [ "${name}" != 'none' ]; then
    echo "![${name}](${icon} \"${name}\")" >> "${README}"
  fi

done

# run this when you first download the repo
# if you need a new version of the fmi-mineral-dsp and/or fmi_core package, update the version number you require in line 6 & 7 before you run this

az login --allow-no-subscriptions

az artifacts universal download --organization "https://dev.azure.com/fmvso/" --feed "Mineral-DSP" --name "mineral-dsp" --version "0.0.32" --path ./packages/fmi-mineral-dsp
az artifacts universal download --organization "https://dev.azure.com/fmvso/" --feed "Mineral-DSP" --name "fmi-core" --version "0.0.2" --path ./packages/fmi_core

pushd packages/fmi-mineral-dsp/scripts/flutter
tr -d '\015' <init-mac.sh >unix-init-mac.sh
popd
sh packages/fmi-mineral-dsp/scripts/flutter/unix-init-mac.sh
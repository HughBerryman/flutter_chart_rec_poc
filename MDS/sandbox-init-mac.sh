pushd packages/fmi-mineral-dsp/scripts/flutter
tr -d '\015' <init-mac.sh >unix-init-mac.sh
popd

sh ./packages/fmi-mineral-dsp/scripts/flutter/unix-init-mac.sh
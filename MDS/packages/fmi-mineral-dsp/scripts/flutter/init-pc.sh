#$ sh ./packages/fmi-mineral-dsp/scripts/flutter/init.sh

echo "Initializing Mineral DSP for Flutter..."

echo "Installing Style Dictionary..."
npm i -g style-dictionary

pushd packages/fmi-mineral-dsp/dist/styledictionary
npm install
popd

### Font Awesome Pro Setup
echo "Installing FontAwesome Pro for Flutter..."
pushd packages/fmi-mineral-dsp/dist/font_awesome_flutter
# install dependencies
flutter pub get
popd

# copy FontAwesome Pro Font files and icons.json to font_awesome_flutter custom implementation
mkdir ./packages/fmi-mineral-dsp/dist/font_awesome_flutter/lib/fonts
cp ./packages/fmi-mineral-dsp/assets/fontAwesomePro/*.ttf ./packages/fmi-mineral-dsp/dist/font_awesome_flutter/lib/fonts/
cp ./packages/fmi-mineral-dsp/assets/fontAwesomePro/meta/icons.json ./packages/fmi-mineral-dsp/dist/font_awesome_flutter/lib/fonts/

pushd packages/fmi-mineral-dsp/dist/font_awesome_flutter/util
# Run setup script for FontAwesome Pro
sh configurator.sh  --exclude thin
popd

echo "FontAwesome Pro Installed."

# Copy build script to project root (current location)
cp ./packages/fmi-mineral-dsp/scripts/flutter/build.sh ./dsp-build.sh

# Run initial build
sh dsp-build.sh

echo "Initialization Complete!"
echo "To rebuild the Mineral DSP after updates, run 'sh dsp-build.sh' from the Flutter Project's root folder."
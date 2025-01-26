# Run from project root after running init.sh:
#$ sh dsp-build.sh

echo "Building Mineral DSP for Flutter..."

############# TRANSFORM/CONVERT #######
#### Design Tokens ####
echo "Translating tokens..."
## Set Working Directory to DSP styledictionary folder
pushd packages/fmi-mineral-dsp/dist/styledictionary

# Build Custom/Additional Token Sets
node ./build.js

echo "Token Translation Complete"
## Reset Working Directory Location to project root
popd

#### Convert Static Assets ####
## ImageMagick (or whatever tool we use)
# Convert Images to Proper Size/Formats
# TODO

################ COPY ##################
#### Copy All Assets & Tokens to Project
## Fonts
echo "Copying Fonts to Project..."
mkdir ./lib/fonts
cp ./packages/fmi-mineral-dsp/assets/fonts/* ./lib/fonts
echo "Fonts Copied to Project"

## Images
# TODO

## Tokens
echo "Copying Design Tokens to FMI Core Project..."
cp ./packages/fmi-mineral-dsp/dist/styledictionary/flutter/* ./packages/fmi_core/lib/designTokens
echo "Design Tokens Copied to FMI Core Project"

echo "Finished building Mineral DSP for Flutter."
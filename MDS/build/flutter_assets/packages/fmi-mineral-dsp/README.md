The DSP (Design System Package) for the Mineral Design System, fmi-mineral-dsp, enables a single source of truth for development & design. Implementing it in your project allows you to access to standardized design components based on the Mineral Design System design tokens, utilize pre-defined code snippets, and [reference documentation](https://mds.apps-dev.fmi.com/#/).

`  ` 

 

#### Prerequisites

1. **Node.js and NPM:** Run the command npm –v in the terminal. If you see the version number, you have it installed. If you see an error, [install npm globally](https://nodejs.org/en/download) on your machine. Note: You may need to restart your IDE for the Node/npm install to take effect. 

2. **Git Bash:** In the Terminal pane in VS Code, there is a “+” dropdown. Select “Git Bash” to open a new bash terminal window. If “Git Bash” is not an option, follow the [instructions to install it](https://www.makeuseof.com/install-git-git-bash-windows/). 

3. **Azure CLI:** Run the command az --version in the terminal. If you see the version informaiton, you have it installed. If you see an error, [install the necessary Azure CLI tools](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli). Next, run the command az extensions add --name azure-devops to ensure you add the required CLI extension. 

4. **Installation Script Files:** Check the project to which you wish to add the Mineral DSP. If the files dsp-get-mac.sh and dsp-get-pc.sh are not present at the root directory of the project you want to add MDS to, these files can be found in the [MDS-Flutter-Sandbox repository](https://dev.azure.com/fmvso/Design%20Ops/_git/MDS-Flutter-Sandbox) in the directory /packages/fmi-mineral-dsp/scripts/flutter/get/. 

`  ` 

 

**Install the DSP in the Project** 

1. Make sure the version numbers in the ‘dsp-get’ scripts are updated to the desired version. Information on the most recent versions can be found here: [Azure Artifacts: Mineral-DSP.](https://dev.azure.com/fmvso/Design%20Ops/_artifacts/feed/Mineral-DSP@Local/)

2. To install, update the version numbers you wish to use (usually the latest) in both files: dsp-get-mac.sh and dsp-get-pc.sh. The lines to update look like: 

```shell
az artifacts universal download --organization "https://dev.azure.com/fmvso/" --feed "Mineral-DSP" --name "mineral-dsp" --version "0.0.32" --path ./packages/fmi-mineral-dsp
az artifacts universal download --organization "https://dev.azure.com/fmvso/" --feed "Mineral-DSP" --name "fmi-core" --version "0.0.2" --path ./packages/fmi_core
```

`  `

3. Run the script for your respective OS: 

  * Mac OS X: 
  ```
  sh sandbox-init-mac.sh
  ```
`  ` 
  * Windows: 
  ```
  sh sandbox-init-pc.sh 
  ```

`  ` 

This will download both fmi_core and fmi-mineral-dsp packages, copy the build script from the dsp package at scripts/flutter/build.sh into the flutter project root folder as dsp-build.sh and run it (see below for expected output).  

`  ` 

Note: To update any DSP-sourced dependency files changed locally such as tokens, images, or fonts, simply run the build script from the root of the Flutter project:  

```
sh dsp-build.sh
```

***Do not run*** build.sh ***script from the original location; it will not work!***

`  ` 

4. To complete setup of Font Awesome Pro icon set implementation, update pubspec.yaml to include the following override in the dependency_override section: 

```
 dependency_overrides:
   font_awesome_flutter:
     path: path/to/font_awesome_flutter
```

`  `  


**Update Mineral DSP & FMI_Core Packages** 

Follow steps 1-3 in “Install the DSP in the project” section above.  

`  `  

 
**Font-Awesome-Flutter Icon Updates** 

When new icon sets are made available to Font Awesome Pro, these new webfont files need to be manually added to this solution. For instructions to do this, please see the README.md file located in the font-awesome-flutter implementation at fmi-mineral-dsp/dist/fontAwesomeFlutter/README.md. 

`  `  

 
**Font-Awesome-Flutter Custom Icon Updates** 

When new custom icons are made in Font Awesome Pro, it will be necessary to create a new font file and update the solution manually.  

1. Receive a kit from MDS Design Team 
2. Go to FlutterIcon.com 
3. From the kit, copy the svgs from svgs/custom-svgs, keep the same order in the zip file, and paste them into the Custom Icons section on FlutterIcon. Note: All file names should be in lowercase 
4. In FlutterIcon, change the valid dart class name to ‘FmiIcons’ 
5. Select all custom icons for download 
6. Click download 
7. From the downloaded zip file, extract ‘FmiIcons.ttf’ and copy/paste in packages/fmi_core/assets/fonts/FmiIcons.ttf 
8. From the downloaded zip file, extract ‘fmi_icons_icons.dart’ and copy/paste file in packages/fmi_core/lib/presentation/fmi_icons_icons.dart 
9. Update fmi_icons_icons.dart static const String? _kFontPkg from null to ‘fmi_core’ 
10. Any new icons should now be available use 
11. If unicode changes on any of the individual fmi icons, must notify architectural team for needed database changes and provide fmi_icons_icons.dart to arch team
      * Arch team will coordinate timing of database changes in various environments

`  `  


#### Additional Resources

Mineral Design System relies on additional third-party tooling to work. Here is a list of resources for each of the tools implemented for Flutter projects, should you need to learn more about them:  

* Font Awesome Pro for Flutter: [https://github.com/fluttercommunity/font_awesome_flutter](https://github.com/fluttercommunity/font_awesome_flutter)
* Style Dictionary: [https://amzn.github.io/style-dictionary/](https://amzn.github.io/style-dictionary/)

`  `  

 

**Use Mineral UI Code Snippets** 

 Code snippets are available on the [Mineral Design System Guide Site.](https://mds.apps-dev.fmi.com/#/)

`  `  


A list of available components is provided on the left and selecting the “Implementation” tab at the top of the component page will direct you to implementation guide which includes code examples which can be copied by selecting the icon in the top left corner of the code view area. Simply paste it into your code where needed.  

 
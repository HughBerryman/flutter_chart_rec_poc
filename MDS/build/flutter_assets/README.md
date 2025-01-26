#### Design Process – Figma

Our design system is based on Google’s Material Design 3, Flutter and SyncFusion (Charts & Graphs). As a designer, you will be utilizing Figma to ideate and create designs for various Freeport products. The design system in Figma has been organized into proper sections to locate the necessary components you’ll need to get started. Resources that can be found in the system include:

* References 
* Breakpoints 
* Colors 
* Iconography 
* Components 
* And many more.. 

`  ` 


In Figma, reference the [Getting Started](https://www.figma.com/file/TN3spserGlpzL1SThq1uOW/Mineral-Design-System?type=design&node-id=62216%3A34019&mode=design&t=Asj2lvw3HZZZwqdD-1) section, as well as this MDS Guide Site, as you begin and throughout your process.

`  ` 


#### Development Process – MDS Flutter Sandbox

**Project Setup** 

Be aware that this is the single source of truth for everything related to the Mineral Design System for the Flutter platform.

**Prequisites** 

1. **Node.js and NPM:** Run the command npm –v in the terminal. If you see the version number, you have it installed. If you see an error, [install npm globally](https://nodejs.org/en/download) on your machine. Note: You may need to restart your IDE for the Node/npm install to take effect. 

2. **Git Bash:** In the Terminal pane in VS Code, there is a “+” dropdown. Select “Git Bash” to open a new bash terminal window. If “Git Bash” is not an option, follow the [instructions to install it](https://www.makeuseof.com/install-git-git-bash-windows/). 

`  ` 


**Basic Setup** 

In order to setup the project initially after first clone/download, in the root folder of the project (MDS-Flutter-Sandbox) run the respective script for the OS you are working on:

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


All subsequent pushes/pulls of new code, it may be required to run sh dsp-build.sh.

`  ` 


**Contributing to FMI Mineral DSP Package** 

After any updates to fonts, Font Awesome icon fonts, or design token files, you will need to run the build script for the raw data files to be compiled/translated into the proper format and language: sh dsp-build.sh.

`  ` 


**Figma Token Export File Format** 

* Uncheck “include parent key” 
* Check “expand typography” 
* Check “expand shadows” 
* Check “expand composition” 

`  ` 


**Artifacts** 

* **fmi_core:** Updates to fmi_core require separate manual pipeline deployment with new artifact to be made available for other applications to use.
* **fmi-mineral-dsp:** Updated to fmi-mineral-dsp require separate manual pipeline deployment with new artifact to be made available for other applications to use. 

 
Updating Figma tokens is a straightforward process that can help you create more consistent and scalable designs. Whether new tokens are added, aliases are modified, or values need to be updated, the process is the same.

` `

It’s important to discuss the need of adding or changing tokens with a developer to ensure the various use cases and proper naming/structure set-up of the desired token. Please keep in mind that once they’ve been added and utilized within design/development, making certain changes can be more difficult.

` `

Contact the DesignOps Team Lead if a new or update to an existing token is desired. Once the request has been discussed and approved, review the below overviews for designers and developers as there are different steps for each to follow:

` `

#### Design Process

In Figma, you can locate the five-step process for [Adding New Tokens](https://www.figma.com/file/TN3spserGlpzL1SThq1uOW/Mineral-Design-System?type=design&node-id=63948%3A120&mode=design&t=eQwZvIgakaad65su-1) in the Token Set-Up section of the MDS design system. 

` `

As noted above, the designer should be in communication with the developer to verify the recommended naming and structure is best before adding/updating tokens within the plugin.

` `

#### Development Process

**Flutter Development**

MDS is built to support Flutter using the basis of Material Design. The design tokens are applied to the Material Theming in Flutter to enable easy theming. The rest of this Flutter section assumes you:

* Have access to the [MDS-Flutter-Sandbox](https://dev.azure.com/fmvso/Design%20Ops/_git/MDS-Flutter-Sandbox) repository and have cloned it to your machine 
* A code editor that supports Flutter development (such as Visual Studio Code or Android Studio) 
* Have and set up your [Flutter Dev Environment](https://docs.flutter.dev/get-started/install) so that the Flutter CLI command flutter doctor returns all green checkmarks 
* Have installed [Node and NPM](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm)
* Have received a set of JSON design token files from a designer or were able to export the necessary files yourself 

` `

**Update Token JSON Files in Development**

* **Step 1:** Open the MDS-Flutter-Sandbox project in your code editor 
* **Step 2:** Ensure the files are named the same as the files in the directory packages/fmi-mineral-dsp/data/fmi-tokens/ 
* **Step 3:** Replace the files at that location with the new design token files 

` `

**Run Token Translation Process to Build New Tokens** 

The script below will run a series of commands and should result in updated dart files for use in Flutter applications. The files updated should include:
* The files in the directory packages/fmi-mineral-dsp/dist/styledictionary/flutter/ 
* The files in the directory packages/fmi_core/lib/designTokens/ 

` `

**The dsp-build.sh file is at Project Root**

Run the command sh dsp-build.sh in the command prompt or terminal

` `

**The dsp-build.sh file is NOT at Project Root**

This is OS-specific: If you are running a Windows machine, run the command sh sandbox-init-pc.sh. If you are running a Mac OSX machine, run the command sh sandbox-init-mac.sh. This command (whichever IS) will have copied the dsp-build.sh file to the project root so any subsequent token builds you need to do should use that script.
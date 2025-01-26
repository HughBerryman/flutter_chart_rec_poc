#### General Guidelines:

**Avoid using hard coded numerical values in code (applicable to areas not containers). Use tokens.**

* For example:  
  * Don't use padding: 0 or padding: 2 
  * Do use padding: FMIThemeBase.basePadding0 or FMIThemeBase.basePadding1 

` `

**Avoid using hard coded numerical values in code for containers.** 

* For example: 
  * Container(height: 200, width: 200, child: Card()) 

* Overall, widgets need to be responsive and flex in size depending on screen sizes 
* Exceptions: There may be a need for exceptions with items like dialogs, app bars, etc. 

` `

**Avoid using hard coded color values in code. Use color schemes.** 

* For example:  
  * Don't use Colors.red 
  * Do use Theme.of(context).colorScheme.error 
* Exception:  
  * Can use Colors.transparent which will remove Flutter default coloring on areas like surface tints and other color parameters 
 
` `

**Don't use combinations of tokens to derive a value.**

* For example:  
  * Don't use height: FMIThemeBase.basePadding10 * 10 or FMIThemeBase.baseIconLarge + FMIThemeBase.baseIconMedium 

` `

**Avoid mis-aligning tokens.**

* For example:  
  * Don't use Container(height: FMIThemeBase.baseHeadlineLargeFontSize)) 
* Tokens should be used in the context intended 

` `

**Icons/Font Awesome Icons**

* Icons are seldom perfectly square 
* In addition, the lower level on a Figma design usually encompasses the image only 
* Figma designs should specify what icon size to use, such as icon-small which equals FMIThemeBase.baseIconSmall 

` `

**Path for values that don't appear to be represented in tokens.**

* For example: 
  * padding = 7 
  * height = 102 

* **Step 1:** Reach out to designer and discuss alternatives  
  * We have a padding token for 6 or 8. Can we use one of those tokens instead? 
  * We don't have container dimension tokens for 102.    
    * Can this be built with a responsive/flex layout?  
      * Yes, then proceed with responsive/flex layout 
      * No, proceed to Step 2


* **Step 2:** Designers reach out to Meagan Shoots and Kim Kruel with token request. 
  * Include use case for token - example, dialog on EWS home page 
  * Include business use - example, need to define constraints for dialog 

* **Step 3:** MDS team will review request and also determine if use case can be applied to multiple areas.  
  * For example, all dialogs should be 102. 

* **Step 4:** If approved, Figma and Core and Fmi-Mineral-Dsp will have token additions 
* **Step 5:** Figma will be updated for universal application of token and design recommendations.    
  * For example, all dialogs may be updated to use new token to get a consistent look for all dialogs 

` `

If there are any questions about a design or token usage, please reach out to the designer and ask for clarification.

 
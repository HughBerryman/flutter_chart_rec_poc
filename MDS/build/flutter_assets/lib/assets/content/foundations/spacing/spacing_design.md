Spacing methods are more granular than the responsive layout grid. Spacing methods are a set of rules around how to place elements within layouts and components. 

`  ` 

#### Padding*

Padding refers to the space **around** UI elements. Padding can be measured vertically and horizontally and does not need to span the entire height or width of a layout. Typically adding padding increases the size of the element and is included in the target area.

`  ` 

#### Gap*

Gap refers to the space **between** two UI elements that would not be part of a target area. It can be defined vertically or horizontally, similar to padding.

`  `  

**Padding and gap are subjective to the design and the Flutter widgets being used in the construction of the design. The goal is to use spacing tokens when spacing is required.*

`  ` 

#### Dimensions  

The width and height of component elements are referred to as dimensions. Some components, such as an app bar or list, only outline an element’s height. These elements’ heights should correspond to the grid. Since it is responsive to the viewport width, their widths are not specified.

`  ` 

#### Aspect Ratio  

An aspect ratio is the proportion of an element’s width to its height. Essentially, it’s describing an image or container’s shape. Aspect ratios are written as width:height.

`  ` 

To maintain consistency in your layout, use a consistent aspect ratio on elements like images, surfaces, and screen sizes.

`  ` 

Common aspect ratio for UI includes: 16:9, 3:2, 4:3, and 1:1.

`  ` 

#### Breakpoints 

Breakpoints are based on the various devices issues at Freeport. Prior to 2024, there were three targets as the standard screen resolutions for Design and Dev. The current version has four targets as the standard screen resolutions for Design and Dev. Pre-existing and in-progress designs will be for the prior version of breakpoints. Future designs will be for the current version of breakpoints. Designers should be supplying 4 designs - 1 for each breakpoint and designing to the lowest breakpoint in the applicable range.

`  ` 

**Breakpoint current version**

* **XSmall:** <600px (lowest target = 375px)
* **Small:** 600-900px 
* **Medium:** 901-1216px 
* **Large:** >1216px 

`  ` 

**Breakpoint version prior to 2024**

* **Mobile:** <901px (lowest target = 375px)
* **Laptop:** 901-1216px 
* **Desktop:** >1216px 

`  `  

In Figma, you can locate the frames under the [Breakpoints & Guides](https://www.figma.com/file/TN3spserGlpzL1SThq1uOW/Mineral-Design-System?type=design&node-id=59566%3A17219&mode=design&t=9c1wRWPMV2NHODvt-1) section of the MDS design system. To ensure consistency across applications, please make sure the layout grid is turned on in the properties panel in order to utilize the column grid set-up for each breakpoint. You can also use the Control Key + G to easily hide/show the column grids.

`  `  

The Figma link above will also provide further details regarding specific outerGutter, horizontalSpacing, and column requirements per breakpoint.

`  `  

Please note there is a content max constraint for desktop, visualized in the last frame with proper documentation.

`  ` 

#### Layouts**  

For guidance on setting up layouts within Flutter, please refer to the following [Layouts in Flutter](https://docs.flutter.dev/ui/layout) documentation. It provides information on how to structure an individual widget and illustrates common layout patterns when arranging widgets among a page.

`  ` 

** *Layouts are subjective to the design and the Flutter widgets being used in the construction of the design. Hierarchy and combinations of widgets, like rows and columns, will be impacted by grid, alignment, and target area requirements.*

`  ` 

**Examples of symmetrical and asymmetrical layouts within the breakpoint versions:**
![Spacing and Layout](assets/assets/images/foundation/spacing.png) 

`  ` 

![Spacing and Layout - pre 2024](assets/assets/images/foundation/spacing_pre2024.png) 
#### How to Add a New Page for Component Documentation

**Where to Create File**

Create the new file (markdown) **inside the lib/assets/content directory** in the specifying folders depending on the topic. 

` `

**Add to pubspec.yaml**

After creating the file, if on VSCode you can copy those files relative path by right clicking on the file in the explorer list tab. If unable to do so using your IDE, manually enter the path starting from the parent directory of the MDS-Flutter-Sandbox project. For example – lib/assets/content.../new_directory/new_page.md.

` `

**Add to page_manifest.json**

Inside the **lib/assets/content** directory contains a json file that defines the schema of the page layouts for the Mineral Design Guide. It is advised to know the basics of json syntax to understand the page hierarchy. Depending on where you want to place the new files or if you want to add a new category depends on where and how you define the page syntax. If adding new files in components, add the file alphabetically.

` `

**Adding a documentation page**
```json
{
  "name": "List Tiles",
  "route": "/components/listtiles",
  "designContents": [
    {
      "content": "lib/assets/content/components/listTiles/subtitleTwoLine/subtitleTwoLine_design.md"
    },
  ],
  "codeContents": [
    {
      "componentName": "Subtitle Two Line",
      "platform": "flutter",
      "component": "subtitleTwoLine",
      "content": "lib/assets/content/components/listTiles/subtitleTwoLine/subtitleTwoLine_flutter.md"
    },
  ],
  "view": "documentationView",
  "category": "components"
},
```

Looking at the above example, notice that the block starts with a label name of ‘List Tiles’. The route is labeled with the category ‘components' and the directory name of the component. Both the name and route are used for navigation and is important if you want to manually add linking from other pages. 

` `

The design contents are a list of the singular property “content” to specify the design markdown files (containing parameters, usage, etc). 

` `

The code content is a list of a trio of properties that contains the code snippets and link to the demo via the component label which is of enum type Demos. Platform label specifies the platform type. The component label naming should be the component in camelCase one word. Content is the relative file path of the markdown file. The author must update the enum files (demo.dart & demo_helper.dart) to link/display the demo files in the documentation.

` `

The view is marked as a documentation view defined as one of the pages for MDG which allows for the documentation (e.g. flutter-dev site) page layout.

` `

The category is used for placing the current block into a section (e.g. components section).

` `

If requiring more guidance, please refer to the List Tile section in lib/assets.

` `

**Adding an overview page**

```json
{
  "name": "Components Overview",
  "route": "/components",
  "view": "componentView",
  "category": "components",
  "overviewContent": "lib/assets/content/components/components_overview.md"
},
```

The above json defines a new category named ‘components’ starting with the page ‘Components Overview’ containing a view specific to the category, notice it’s using a different view, and it specifies the overview markdown file for the overviewContent label. The overview is to be a quick summary of what the category and its content should contain and convey. The overview files should be placed in the parent directory outside the directories of child directories. For example, buttons (contains overview) > elevatedButton (child, contains tabbedView markdown).

` `

**Embedding an image**

```md
![alt text](assets/image.png)
```

The syntax above is used to embed a local image into a markdown file. You’ll need to first add the image as an asset in the pubspec, this part is not needed if adding a network image. Depending on the location of the image, you may need to configure the path inside the parenthesis using ‘./’,’...’,’/’, etc.

` `

**Adding text** 

Follow the markdown guide via the official markdown website for tips on using headings, bolding, formatting, etc.

` `

**Adding a link**

To add a link in markdown the syntax is the following:

```md
[Link to Google](www.google.com)
```

` `

#### Adding a Code Snippet 

To add a code snippet in markdown, wrap your code block with triple ` (tilde).

` `

"```” (without the quotations)

` `

**Adding an example component to the demo page**

To add a new component it’s advised to create a separate flutter class and add a reference to it in the demo_widgets file under the demo directory which then is inside the ui directory.

` `

**Looking for help**

If requiring additional help, please reference at the README inside the MDS-Flutter-Sandbox repository.

 
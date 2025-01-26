**Usage** 

Used to attach any files from local storage.  

` ` 


**Alternatives** 

FilePicker  

` ` 

 
**Parameters** 

* onAttachmentsChanges – Function(List<Attachment> attachments), optional 
* initialAttachments – List<Attachment>, optional 
* isEditable – bool, default true 
* imageOny – bool, default false 
* stretch – bool, default false 
* label - String, optional default 'Attach' with translation
* canDownload – bool, default false 

` ` 


**Models** 

class Attachment  
* id - String, optional (auto generated) 
* fileID – String, optional 
* name – String, required 
* title – String, optional 
* type – String, optional 
* url – String, optional 
* bytes – Uint8List, required 
* size – int, required 

` ` 

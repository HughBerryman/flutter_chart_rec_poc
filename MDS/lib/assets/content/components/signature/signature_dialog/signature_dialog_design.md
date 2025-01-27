### Fmi Signature Dialog

##### Usage

Display a separate dialog containing a signature canvas where the user can use the mouse cursor to draw a signature.

##### Alternatives

* FMISignatureCanvas

##### Parameters

* onSave - dynamic Function(FmiSignatureDialogResult), required
* isEditable - bool, required
* initValue - FmiSignatureDialogResult?, required
* dialogOptions - FmiSignatureDialogOptions?, required
* showSaveAsSubmit - bool, default = false)
* canDownload - bool, default = false)

###### Models

class FmiSignatureDialogResult
* comment - String, optional
* attachments - List<Attachment>, optional
* points - List<Point>, optional

class FmiSignatureDialogOptions
* collectComment - bool, default false
* collectAttachment - bool, default false
* title - String, default "Signature"
* imageAttachmentOnly - bool, default false

class Attachment
* id - String, optional (auto generated)
* fileID - String, optional
* name - String, required
* title - String, optional
* type - String, optional
* url - String, optional
* bytes - Uint8List? bytes, required
* size - int, required

`  `
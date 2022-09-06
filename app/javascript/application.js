// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "trix"

// https://github.com/rails/rails/issues/43973#issuecomment-1001877734
// import "@rails/actiontext"
import { AttachmentUpload } from "@rails/actiontext/app/javascript/actiontext/attachment_upload"

addEventListener("trix-attachment-add", event => {
  const { attachment, target } = event

  if (attachment.file) {
    const upload = new AttachmentUpload(attachment, target)
    upload.start()
  }
})
import "trix"
import "@rails/actiontext"

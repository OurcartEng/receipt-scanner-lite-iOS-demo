# receipt-scanner-lite-iOS-demo

## Installation
### Swift Package Manager:
- #### Add the following URL: **https://github.com/OurcartEng/receipt-scanner-iOS-demo** .

### Supported iOS versions
- #### The minimal supported version of iOS is 15.


## Quickstart

### 📤 ReceiptScannerUploader

`ReceiptScannerUploader` provides utility methods for uploading scanned receipts (images or PDFs) to the backend.

### 🚀 Upload Methods

- **Upload a Single Image**  
  ✅ This method uploads a single receipt image to the backend.
  ```swift
              do {
                  let config = try ReceiptScannerLiteUploaderConfiguration(
                      apiKey: "YOUR_API_KEY",
                      clientCode: "YOUR_CLIENT_CODE",
                      clientUserID: "YOUR_CLIENT_USER_ID",
                      clientCountry: "YOUR_CLIENT_COUNTRY_CODE",
                      isProd: false // Set to true for production environment
                  )
      
                  ReceiptScannerLiteUploader.configuration = config
      
                  ReceiptScannerLiteUploader.sendImage(image, with: config) { result in
                      switch result {
                      case .success(let url):
                          print("✅ Image uploaded successfully: \(url)")
                      case .failure(let error):
                          self.imagePreviewView.showError(message: "Upload of image failed: \(error.localizedDescription)")
                      }
                  }
        
                } catch {
                    print("Configuration error: \(error.localizedDescription)")
                }
- **Upload Multiple Images**  
  ✅ This method uploads multiple receipt images to the backend.
  ```swift
              do {
                  let config = try ReceiptScannerLiteUploaderConfiguration(
                      apiKey: "YOUR_API_KEY",
                      clientCode: "YOUR_CLIENT_CODE",
                      clientUserID: "YOUR_CLIENT_USER_ID",
                      clientCountry: "YOUR_CLIENT_COUNTRY_CODE",
                      isProd: false // Set to true for production environment
                  )
      
                  ReceiptScannerLiteUploader.configuration = config
      
                  ReceiptScannerLiteUploader.sendMultipleImages(images, with: config) { result in
                      switch result {
                      case .success(let urls):
                          print("✅ Images uploaded successfully: \(urls)")
                      case .failure(let error):
                          self.imagePreviewView.showError(message: "Upload of images failed: \(error.localizedDescription)")
                      }
                  }
        
                } catch {
                    print("Configuration error: \(error.localizedDescription)")
                }
- **Upload a PDF Receipt**  
  ✅ This method uploads a PDF receipt to the backend.
  ```swift
              do {
                  let config = try ReceiptScannerLiteUploaderConfiguration(
                      apiKey: "YOUR_API_KEY",
                      clientCode: "YOUR_CLIENT_CODE",
                      clientUserID: "YOUR_CLIENT_USER_ID",
                      clientCountry: "YOUR_CLIENT_COUNTRY_CODE",
                      isProd: false // Set to true for production environment
                  )
      
                  ReceiptScannerLiteUploader.configuration = config
      
                  ReceiptScannerLiteUploader.sendPDF(pdf, with: config) { result in
                      switch result {
                      case .success(let urls):
                          print("✅ PDF uploaded successfully: \(urls)")
                      case .failure(let error):
                          self.imagePreviewView.showError(message: "Upload of pdf failed: \(error.localizedDescription)")
                      }
                  }
        
                } catch {
                    print("Configuration error: \(error.localizedDescription)")
                }
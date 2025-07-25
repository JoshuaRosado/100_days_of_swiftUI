import UIKit


//Challenge
//One of the best ways to learn is to write your own code as often as possible, so here are three ways you should try extending this app to make sure you fully understand what’s going on.
//
//Try making the Slider and Change Filter buttons disabled if there is no image selected.
//Experiment with having more than one slider, to control each of the input keys you care about. For example, you might have one for radius and one for intensity.
//Explore the range of available Core Image filters, and add any three of your choosing to the app.


import CoreImage
import CoreImage.CIFilterBuiltins
import PhotosUI //*
import StoreKit //*
import SwiftUI

struct ContentView: View {
    @State private var processedImage: Image?
    // Challenge 2 - Track the filter's radius digit. So we can use it in a Slider
    @State private var filterRadius = 0.1
    @State private var filterIntensity = 0.5
    @State private var selectedItem: PhotosPickerItem?

    // Challenge 1 - track if an image is selected or not.
    @State private var isImageSelected = true
    
    @State private var showingFilters = false

    @AppStorage("filterCount") var filterCount = 0
    @Environment(\.requestReview) var requestReview
    
    @State private var currentFilter: CIFilter = CIFilter.sepiaTone()

    let context = CIContext()
    
    var body: some View {
        VStack{
            Spacer()
            PhotosPicker(selection: $selectedItem){
                if let processedImage {
                    
                    processedImage
                        .resizable()
                        .scaledToFit()
                } else {
                    
                    ContentUnavailableView("No picture", systemImage: "photo.badge.plus", description: Text("Import a photo to get started"))
                    
                    
                }
            }
            .buttonStyle(.plain)
            .onChange(of: selectedItem, loadImage)
                Spacer()
            
            HStack{
                Text("Intensity")
                
                Slider(value:$filterIntensity)
                    .onChange(of: filterIntensity, applyProcessing)
                // Challenge 1 - Disable if an Image has not been selected.
                    .disabled(isImageSelected)
            }
            // Challenge 2 - New Slider
            HStack{
                Text("Radius")
                
                Slider(value:$filterRadius)
                    .onChange(of: filterRadius, applyProcessing)
                // Challenge 1 - Disable if an Image has not been selected.
                    .disabled(isImageSelected)
            }
            
            HStack{
                Button("Change Filter", action: changeFilter)
                Spacer()
                
                if let processedImage {
                    ShareLink(item: processedImage, preview: SharePreview("Instafilter image", image: processedImage))
                }
        
            }
            // Challenge 1 - Disable if an Image has not been selected.
            .disabled(isImageSelected)
            
            
        }

        .padding([.horizontal, .bottom])
        .navigationTitle("Instafilter")
 
        .confirmationDialog("Select a filter", isPresented: $showingFilters){
            Button("Crystallize") { setFilter(CIFilter.crystallize())}
            
            // Challenge 3 Completed
            Button("Bloom"){ setFilter(CIFilter.bloom())}
            Button("Bokeh Blur") { setFilter(CIFilter.bokehBlur())}
            Button("Morphology Maximum") { setFilter(CIFilter.morphologyMaximum())}
            
            Button("Edges") { setFilter(CIFilter.edges())}
            Button("Gaussian Blur") { setFilter(CIFilter.gaussianBlur())}
            Button("Pixellate") { setFilter(CIFilter.pixellate())}
            Button("Sepia Tone") { setFilter(CIFilter.sepiaTone())}
            Button("Unsharp Mask") { setFilter(CIFilter.unsharpMask())}
            Button("Vignette") { setFilter(CIFilter.vignette())}
            Button("Cancel", role: .cancel){}
            
        }
        
        
        }
    
    func changeFilter() {

        showingFilters = true
        
    }
    
    func loadImage() {

        Task{
            

            guard let imageData = try await selectedItem?.loadTransferable(type: Data.self) else { return }

            guard let inputImage = UIImage(data: imageData) else { return }
            
            
            let beginImage = CIImage(image: inputImage)
            currentFilter.setValue(beginImage, forKey: kCIInputImageKey)
            
            applyProcessing()
            
            // Trigger the boolean to let us know an image has being selected
            isImageSelected = false
            
            
        }
    }
    
    func applyProcessing() {
//        currentFilter.intensity = Float(filterIntensity)
        //Update to this
        
        
        let inputKeys = currentFilter.inputKeys
        // Use any Key that it's needed for that selected filter
        
        // Intensity
        if inputKeys.contains(kCIInputIntensityKey){
            currentFilter.setValue(filterIntensity, forKey: kCIInputIntensityKey)}
        
        // Challenge 2 - Update the property to "filterRadius" to match any filter selected that uses the RadiusKey
        
        if inputKeys.contains(kCIInputRadiusKey){
            currentFilter.setValue(filterRadius * 200, forKey: kCIInputRadiusKey)
        }
        
        if inputKeys.contains(kCIInputScaleKey){
            currentFilter.setValue(filterIntensity * 10, forKey: kCIInputScaleKey)
        }
        
        guard let outputImage = currentFilter.outputImage else { return }
        guard let cgImage = context.createCGImage(outputImage, from: outputImage.extent) else { return }
        // .extent = Read it all
        
        let uiImage = UIImage(cgImage: cgImage)
        processedImage = Image(uiImage: uiImage)
    }
    
    @MainActor func setFilter(_ filter: CIFilter) {
        // Update our current filter with the filter selected
        currentFilter = filter
        // Load image with the new filter
        loadImage()
        
        filterCount += 1
        
        if filterCount >= 3 {
            requestReview()
        }
        
    }
 
}

#Preview {
    ContentView()
}

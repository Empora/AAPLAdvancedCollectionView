Pod::Spec.new do |s|
    s.name         = "AAPLAdvancedCollectionView"
    s.version      = "1.1.28"
    s.summary      = "Advanced User Interfaces Using Collection View"
    s.description  = <<-DESC
    This example demonstrates code factoring approaches to UICollectionViewDataSource
    that allow developers to compose complex and rich data models. In addition,
    the framework features a sophisticated custom UICollectionViewLayout that
    with pinning headers, global headers, and loading placeholders.
    DESC
    s.homepage     = "https://developer.apple.com"
    s.license      = { :type => "Apple Sample Code", :file => "LICENSE.txt" }
    s.authors      = {"Apple" => "info@apple.com", "Robert Biehl" => "robert.biehl@empora.com", "Neil Coxhead" => "neil.coxhead@empora.com", "Sebastian Boldt" => "sebastian.boldt@empora.com"}
    s.platform     = :ios, "7.0"
        s.framework    = "UIKit"
    s.requires_arc = true
    s.source       = { :git => "https://github.com/empora/AAPLAdvancedCollectionView.git", :tag => s.version.to_s }


    s.default_subspec = 'Core'
    s.subspec 'Core' do |s|
        s.source_files = "AdvancedCollectionView/{Categories,DataSources,Layouts,Views,ViewControllers}/*.{h,m}", "AdvancedCollectionView/AAPL{ContentLoading,StateMachine,Action}.{h,m}"
    end
    
    s.subspec 'AppExtension' do |s|
        s.xcconfig     = { "GCC_PREPROCESSOR_DEFINITIONS" => "$(inherited) AAPL_APPEXTENSION=1" }
        s.source_files = "AdvancedCollectionView/{Categories,DataSources,Layouts,Views,ViewControllers}/*.{h,m}", "AdvancedCollectionView/AAPL{ContentLoading,StateMachine,Action}.{h,m}"
    end
end
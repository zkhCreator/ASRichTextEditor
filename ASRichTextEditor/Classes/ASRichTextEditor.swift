//
//  ASRichTextEditor.swift
//  Pods
//
//  Created by zkhCreator on 04/06/2017.
//
//

import UIKit
import WebKit

public class ASRichTextEditor: NSObject {
    
    public let vc = UIViewController();
    public var webview:WKWebView {
        get {
            return vc.view as! WKWebView
        }
        set {
            vc.view = newValue
        }
    }
    
    var uploadImageURL:URL?
    var uploadContentURL:URL?
    
    public init?(uploadImageURL:URL?, uploadContentURL:URL?) {

        if uploadContentURL == nil || uploadContentURL == nil {
            return nil;
        }
        
        super.init()
        
        self.uploadImageURL = uploadImageURL
        self.uploadContentURL = uploadContentURL
        
        // load framework bundle
        let podBundle = Bundle.init(for: ASRichTextEditor.classForCoder())
        
        // load bundle in framework
        guard let bundlePath = podBundle.path(forResource: "ASRichTextEditor", ofType: "bundle") else {
            return nil
        }
        
        let bundle = Bundle.init(path: bundlePath)
        
        guard let htmlURL = bundle?.path(forResource: "richTextEditor", ofType: "html")?.toURL() else {
            return nil
        }
        
        self.webview = WKWebView.init()
        
        let request = URLRequest.init(url: htmlURL)
        
        self.webview.load(request)
    }
    
    // cancel upload text and image, clean all info in the webview
    public func cancelUpload() {
        
    }
    
    // upload content text and image
    public func uploadContent() {
        
    }
    
    // select Image in the album or camera
    public func addImage() {
        
    }
}

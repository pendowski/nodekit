/*
* nodekit.io
*
* Copyright (c) -> Void -> Void 2016 OffGrid Networks. All Rights Reserved.
* Portions Copyright (c) -> Void 2013 GitHub, Inc. under MIT License
*
* Licensed under the Apache License, Version 2.0 (the "License") -> Void;
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

import Foundation
import WebKit
import JavaScriptCore

@objc protocol NKEMenuProtocol: NKScriptPlugin {
    
    static func setApplicationMenu(menu: NKEMenuProtocol) -> Void
    static func sendActionToFirstResponder(action: String) -> Void //OS X
    static func buildFromTemplate(template: [Dictionary<String, AnyObject>]) -> NKEMenuProtocol
    
    func popup(browserWindow: NKE_BrowserWindow?, x: Int, y: Int) -> Void
    func append(menuItem: NKEMenuItemProtocol) -> Void
    func insert(pos: Int, menuItem: NKEMenuItemProtocol) -> Void
    func items() -> [NKEMenuItemProtocol]
}

@objc protocol NKEMenuItemProtocol: NKScriptPlugin {
    init(options: Dictionary<String, AnyObject>)
}
//
//  SVGView.swift
//  Expocar-iOS
//
//  Created by user234243 on 3/24/23.
//

import SwiftUI
import UIKit
import SVGKit

/*struct SVGV: UIViewRepresentable {
    @State var svgName: String

    func makeUIView(context: Context) -> SVGKFastImageView {
        let svgImageView = SVGKFastImageView(named: svgNameb)
        svgImageView.isUserInteractionEnabled = true

        let tapGesture = UITapGestureRecognizer(target: context.coordinator,
                                                 action: #selector(Coordinator.handleTap(_:)))
        svgImageView.addGestureRecognizer(tapGesture)

        return svgImageView
    }

    func updateUIView(_ uiView: SVGKFastImageView, context: Context) {}

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject {
        let parent: SVGV

        init(_ parent: SVGV) {
            self.parent = parent
        }

        @objc func handleTap(_ gesture: UITapGestureRecognizer) {
            // Handle the tap gesture here
        }
    }
}

struct SVGView: View {
    var body: some View {
        SVGV(svgName: "my_svg_image")
            .frame(width: 200, height: 200)
    }
}

struct SVGView_Previews: PreviewProvider {
    static var previews: some View {
        SVGView()
    }
}*/

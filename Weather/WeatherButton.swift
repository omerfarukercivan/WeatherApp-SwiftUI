//
//  WeatherButton.swift
//  Weather
//
//  Created by Ömer Faruk Ercivan on 25.10.2023.
//

import SwiftUI

struct WeatherButton: View {

	var title: String
	var textColor: Color
	var backgroundColor: Color

	var body: some View {
		Text(title)
			.frame(width: 280, height: 50)
			.background(backgroundColor)
			.foregroundStyle(textColor)
			.cornerRadius(10)
			.font(.system(size: 20, weight: .bold))
	}
}

#Preview {
		WeatherButton(title: "Change Day Tine", textColor: .blue, backgroundColor: .white)
			.previewLayout(.sizeThatFits)
}

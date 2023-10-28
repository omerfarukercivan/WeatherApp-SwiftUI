//
//  ContentView.swift
//  Weather
//
//  Created by Ömer Faruk Ercivan on 24.10.2023.
//

import SwiftUI

struct ContentView: View {

	@State private var isNight = false

	var body: some View {
		ZStack {
			BackgroundView(isNight: $isNight)

			VStack {
				CityTextView(cityName: "Cupertino, CA")

				MainWeatherStatusView(imageName: "cloud.sun.fill",
				                      temprature: 76)

				HStack(spacing: 20) {
					WeatherDayView(dayOfWeek: "Tue",
					               imageName: "cloud.sun.fill",
					               temprature: 74)

					WeatherDayView(dayOfWeek: "Tue",
					               imageName: "cloud.sun.fill",
					               temprature: 74)

					WeatherDayView(dayOfWeek: "Tue",
					               imageName: "cloud.sun.fill",
					               temprature: 74)

					WeatherDayView(dayOfWeek: "Tue",
					               imageName: "cloud.sun.fill",
					               temprature: 74)

					WeatherDayView(dayOfWeek: "Tue",
					               imageName: "cloud.sun.fill",
					               temprature: 74)
				}

				Spacer()

				Button(action: {
					isNight.toggle()
				}, label: {
					WeatherButton(title: "Change Day Time",
					              textColor: .blue,
					              backgroundColor: .white)
				})

				Spacer()
			}
		}
	}
}

#Preview {
	ContentView()
}

struct WeatherDayView: View {

	var dayOfWeek: String
	var imageName: String
	var temprature: Int

	var body: some View {
		VStack {
			Text(dayOfWeek)
				.font(.system(size: 16, weight: .medium))
				.foregroundStyle(.white)

			Image(systemName: imageName)
				.renderingMode(.original)
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: 40, height: 40)

			Text("\(temprature)°")
				.font(.system(size: 28, weight: .medium))
				.foregroundStyle(.white)
		}
	}
}

struct BackgroundView: View {

	@Binding var isNight: Bool

	var body: some View {
		LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : .lightBlue]),
		               startPoint: .topLeading,
		               endPoint: .bottomTrailing)
			.ignoresSafeArea(.all)
	}
}

struct CityTextView: View {

	var cityName: String

	var body: some View {
		Text(cityName)
			.font(.system(size: 32, weight: .medium))
			.foregroundStyle(.white)
			.padding()
	}
}

struct MainWeatherStatusView: View {

	var imageName: String
	var temprature: Int

	var body: some View {
		VStack(spacing: 10) {
			Image(systemName: imageName)
				.renderingMode(.original)
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: 180, height: 180)

			Text("\(temprature)°")
				.font(.system(size: 70, weight: .medium))
				.foregroundStyle(.white)
		}
			.padding(.bottom, 40)
	}
}

# ChetaFlix

A production-grade, beautifully designed movie discovery app built with SwiftUI, MVVM, and the latest iOS technologies. ChetaFlix demonstrates senior-level engineering, scalable architecture, and a premium user experience inspired by the Cinemax Figma UI Kit.

---

## 🚀 Features

- **Modern Tab Bar Interface:** Home, Upcoming, Search, and Download tabs for intuitive navigation.
- **Trending & Upcoming Movies:** Real-time data from TMDb API.
- **Integrated Trailers:** Watch official trailers via YouTube API, embedded seamlessly in-app.
- **Advanced Search:** Find movies, genres, or actors with live, responsive results.
- **Offline Downloads:** Save movies for offline access using SwiftData.
- **Favorites & Watchlist:** Effortlessly manage your personal movie lists.
- **Responsive Design:** Adaptive layouts for iPhone & iPad, full dark mode support.
- **Smooth Animations:** Custom transitions, matched geometry effects, and haptics.
- **Accessibility:** VoiceOver, Dynamic Type, and color contrast compliance.
- **Localization Ready:** Easily extensible for multiple languages.

---

## 🛠️ Tech Stack

- **SwiftUI (latest)** — Declarative UI, advanced animations, and accessibility.
- **MVVM Architecture** — Clean separation of concerns, testable codebase.
- **SwiftData** — Modern local persistence for downloads and favorites.
- **Combine & async/await** — Reactive programming and modern concurrency for networking.
- **URLSession** — Robust API integration.
- **WidgetKit** *(optional)* — Home screen widgets for trending movies.
- **XCTest** — Comprehensive unit and UI testing.

---

## 📐 Architecture & Best Practices

- **Strict MVVM:** Each screen has a dedicated ViewModel, with clear data flow and state management.
- **Reusable Components:** Modular MovieCardView, TrailerPlayerView, etc., for rapid scaling.
- **Networking Layer:** Decoupled API services for TMDb and YouTube, using Combine publishers and async/await.
- **Persistence Layer:** SwiftDataController for seamless offline support.
- **Accessibility & Localization:** Designed from the ground up for inclusivity and global reach.
- **Continuous Integration:** GitHub Actions for automated testing and linting *(optional)*

---

## 🖌️ UI/UX

- Inspired by the [Cinemax Figma UI Kit](https://www.figma.com/design/MkI1elM7Sm7OJE3of6vn4x/Cinemax---Movie-Apps-UI-Kit--Community-?node-id=5-2&p=f)
- Custom SF Symbols, color palette, and typography for a premium look.
- Smooth navigation, context-aware modals, and gesture support.

---

## 📸 Screenshots

> _Add screenshots and demo GIFs here to showcase the app in action._

---

## 🚦 Getting Started

1. **Clone the repository:**
   ```sh
   git clone [https://github.com/shaikat1993/ChetaFlix.git](https://github.com/shaikat1993/ChetaFlix.git)
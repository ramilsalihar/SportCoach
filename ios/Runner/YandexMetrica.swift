import YandexMobileMetrica

extension AppDelegate {
    func initializeYandexMetrica() {
        let configuration = YMMYandexMetricaConfiguration.init(apiKey: DataManager().metricaID)
            YMMYandexMetrica.activate(with: configuration!)
    }

    func reportEvent(eventName: String) {
        YMMYandexMetrica.reportEvent(eventName)
    }
}

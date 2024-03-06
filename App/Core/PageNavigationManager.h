#pragma once

#include <QObject>
#include <QQmlEngine>

class PageNavigationManager : public QObject
{
	Q_OBJECT
public:
    explicit PageNavigationManager(QQmlEngine* engine = nullptr, QObject* parent = nullptr);
	~PageNavigationManager() override;

public slots:
	Q_INVOKABLE void goToPage(const QString& page);

private:
	QQmlEngine* _engine = nullptr;
	QObject* _currentPage = nullptr;
};


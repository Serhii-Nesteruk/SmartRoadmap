#include "PageNavigationManager.h"

#include <QQmlComponent>

PageNavigationManager::PageNavigationManager(QQmlEngine* engine, QObject* parent)
	: QObject(parent), _engine(engine)
{
}

void PageNavigationManager::goToPage(const QString& page)
{
	QQmlComponent component(_engine, QUrl(QStringLiteral("qrs:/") + page + QStringLiteral(".qml")));
	QObject* object = component.create();

	if (object)
	{
		delete _currentPage;

		_currentPage = object;
	}
	else
	{
		qDebug() << component.errorString();
	}
}

PageNavigationManager::~PageNavigationManager()
{
	// delete _engine;
	// delete _currentPage;
}

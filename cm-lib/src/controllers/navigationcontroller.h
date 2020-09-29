/**
    Responsibility for navigation
*/
#ifndef NAVIGATIONCONTROLLER_H
#define NAVIGATIONCONTROLLER_H

#include <QObject>
#include <QDebug>

#include <cm-lib_global.h>
#include <models/client.h>

namespace cm {
namespace controllers{

//Do not forget CMLIB_EXPORT if we awant to use it in other projects
class CMLIB_EXPORT NavigationController : public QObject
{
    Q_OBJECT

public:
    explicit NavigationController(QObject *_parent = nullptr)
        :QObject(_parent)
    {qDebug() << "NavigationController";}

signals:
    void goCreateClientView();
    void goDashboardView();
    void goEditClientView(cm::models::Client* client);
    void goFindClientView();
};

}}//namespaces

#endif // NAVIGATIONCONTROLLER_H

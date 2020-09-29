#include "mastercontroller.h"

#include <QDebug>

namespace cm {
namespace controllers {
class MasterController::Implementation
{
public:
    Implementation(MasterController* _masterController)
        : masterController(_masterController)
    {
         qDebug() << "Implementation";
        navigationController = new NavigationController(masterController);
    }

    MasterController* masterController {nullptr};
    NavigationController* navigationController{nullptr};
    QString welcomeMessage = "This is MasterController to Major Tom";
};

MasterController::MasterController(QObject *parent) : QObject(parent)
{
    //reset - QPointer method
     qDebug() << "MasterController";
    implementation.reset(new Implementation(this));
}

MasterController::~MasterController()
{

}

NavigationController *MasterController::navigationController()
{
    return implementation->navigationController;
}

const QString &MasterController::welcomeMessage() const
{
    return implementation->welcomeMessage;
}

}}//namespaces


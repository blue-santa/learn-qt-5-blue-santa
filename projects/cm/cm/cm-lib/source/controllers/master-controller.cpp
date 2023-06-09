#include "master-controller.h"

namespace cm {
namespace controllers {

class MasterController::Implementation
{
public:
    Implementation(MasterController* _masterController)
        : masterController(_masterController)
    {
        commandController = new CommandController(masterController);
        navigationController = new NavigationController(masterController);
    }

    MasterController* masterController{nullptr};
    CommandController* commandController{nullptr};
    NavigationController* navigationController{nullptr};
    QString welcomeMessage = "This is MasterController to Major Tom";
};

MasterController::MasterController(QObject* parent)
    : QObject(parent)
{
    implementation.reset(new Implementation(this));
}

MasterController::~MasterController()
{
}

CommandController* MasterController::commandController()
{
    return implementation->commandController;
}

NavigationController* MasterController::navigationController()
{
    return implementation->navigationController;
}

const QString& MasterController::welcomeMessage() const
{
    return implementation->welcomeMessage;
}

}}

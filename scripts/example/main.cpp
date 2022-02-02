#include <OAIDrive.h>

#include <QFile>
#include <iostream>


int main(void) {
    QFile file{"../fixture.json"};
    auto foo = file.open(QIODevice::ReadOnly);
    auto fixture = file.readAll();
    // qDebug() << "FIXTURE:" << fixture;

    qDebug() << "parse drive response";
    OpenAPI::OAIDrive drive{fixture};
    qDebug() << "ID" << drive.getId();
    qDebug() << "device displayName" << drive.getLastModifiedBy().getDevice().getDisplayName();
}
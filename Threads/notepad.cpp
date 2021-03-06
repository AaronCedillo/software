#include "notepad.h"
#include "notepad.h"

#include "QDebug"
#include "QFile"
#include "QDirIterator"
#include "QFileDialog"

NotePad::NotePad(int Tiempo, QObject *parent) : QThread(parent)
{
    mTiempo = Tiempo;
}

void NotePad::run(){

    QFile arch;
    QString name = "images.txt";
    arch.setFileName(name);
    arch.open(QIODevice::WriteOnly | QIODevice::Text);

    QDirIterator Directory(ImagesPaths, QDir::Files | QDir::Dirs |QDir::NoDotAndDotDot);

    while(Directory.hasNext()) {
        Directory.next();
        QTextStream stream(&arch);

        stream << Directory.fileName() << endl;
        arch.flush();
    }
}

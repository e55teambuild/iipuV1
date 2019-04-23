#include "fileio.h"
#include <QFile>
#include <QTextStream>
#include <unistd.h>
#include <iostream>

QString a;

FileIO::FileIO(QObject *parent) :
    QObject(parent)
{

}

QString FileIO::read()
{
    if (mSource.isEmpty()){
        emit error("source is empty");
        return QString();
    }

    QFile file(mSource);
    QString fileContent;
    if ( file.open(QIODevice::ReadOnly) ) {
        QString line;
        QTextStream t( &file );
        do {
            line = t.readLine();
            fileContent += line;
            fileContent += "\n";
         } while (!line.isNull());

        file.close();
    } else {
        emit error("Unable to open the file");
        return QString();
    }
    return fileContent;
}

QString FileIO::lab2zd1()
{
    system("cat /proc/devices > devices.txt");
    if (mSource.isEmpty()){
        emit error("source is empty");
        return QString();
    }

    QFile file(mSource);
    QString fileContent;
    if ( file.open(QIODevice::ReadOnly) ) {
        QString line;
        QTextStream t( &file );
        do {
            line = t.readLine();
            fileContent += line;
            fileContent += "\n";
         } while (!line.isNull());

        file.close();
    } else {
        emit error("Unable to open the file");
        return QString();
    }
    system("rm devices.txt");
    return fileContent;

}

QString FileIO::lab2zd2()
{
    system("cat  /proc/cpuinfo > devices.txt");
    if (mSource.isEmpty()){
        emit error("source is empty");
        return QString();
    }

    QFile file(mSource);
    QString fileContent;
    if ( file.open(QIODevice::ReadOnly) ) {
        QString line;
        QTextStream t( &file );
        do {
            line = t.readLine();
            fileContent += line;
            fileContent += "\n";
         } while (!line.isNull());

        file.close();
    } else {
        emit error("Unable to open the file");
        return QString();
    }
    system("rm devices.txt");
    return fileContent;
}

QString FileIO::lab2zd3()
{
    system("cat   /proc/meminfo > devices.txt");
    if (mSource.isEmpty()){
        emit error("source is empty");
        return QString();
    }

    QFile file(mSource);
    QString fileContent;
    if ( file.open(QIODevice::ReadOnly) ) {
        QString line;
        QTextStream t( &file );
        do {
            line = t.readLine();
            if(line.startsWith("MemTotal")){
                line.append(" - доступный объем оперативной памяти");
             }
            if(line.startsWith("MemFree")){
                line.append(" - объем неиспользуемой и свободой памяти");
            }
            if(line.startsWith("MemAvailable")){
                line.append(" - доступный объем памяти для выделения процессам");
            }
            if(line.startsWith("Buffers")){
                line.append(" - область ОЗУ, занятая хранением данных");
            }
            if(line.startsWith("Cashed")){
                line.append(" - объем, занятый под КЭШ чтения страниц с диска");
            }
            if(line.startsWith("SwapCahed")){
                line.append(" - объем памяти, который был однажды помещен в область подкачки");
            }
            if(line.startsWith("Active")){
                line.append(" - область памяти, занятая часто используемыми страницами");
            }
            if(line.startsWith("Inactive")){
                line.append(" - объем памяти, занятый неиспользуемыми сейчас страницами");
            }
            if(line.startsWith("Dirty")){
                line.append(" - измененные страницы ОЗУ, не сброшеныые на диск");
            }
            if(line.startsWith("Writeback")){
                line.append(" -страницы памяти, которые сейчас сбрасываются на диск");
            }

            fileContent += line;
            fileContent += "\n";
         } while (!line.isNull());

        file.close();
    } else {
        emit error("Unable to open the file");
        return QString();
    }
    system("rm devices.txt");
    return fileContent;

}

QString FileIO::lab3zd2()
{
     system("xset q >caps.txt");
      usleep(140000);
     QFile file("caps.txt");
     QString fileContent;
     if ( file.open(QIODevice::ReadOnly) ) {
         QString line;
         QTextStream t( &file );
         int q =0;
          do {
             line = t.readLine();
             if(q == 3){ fileContent = line;}
             q++;
         } while (!line.isNull());
         file.close();
     }

     QString w = fileContent.mid(8,16);
     return w;

}

QString FileIO::lab3zd22()
{   usleep(80000);
    system("xset q >caps.txt");
    QFile file("caps.txt");
    QString fileContent;
    if ( file.open(QIODevice::ReadOnly) ) {
        QString line;
        QTextStream t( &file );
        int q =0;
         do {
            line = t.readLine();
            if(q == 3){ fileContent = line;}
            q++;
        } while (!line.isNull());
        file.close();
    }
    QString w = fileContent.mid(32,16);
    return w;


}

QString FileIO::lab3zd3()
{
    system("xset q >caps.txt");
    usleep(140000);
    QFile file("caps.txt");
    QString fileContent;
    if ( file.open(QIODevice::ReadOnly) ) {
        QString line;
        QTextStream t( &file );
        int q =0;
         do {
            line = t.readLine();
            if(q == 3){ fileContent = line;}
            q++;
        } while (!line.isNull());
        file.close();
    }
    QString w = fileContent.mid(32,16);
    system("rm caps.txt");
        system("xdotool key Caps_Lock");

        system("xdotool key Num_Lock");
        usleep(4000000);//}


   return "ok";


}

QString FileIO::lab3zd1()
{
    for(int i = 0; i< 30; i++){
    system("xdotool key Caps_Lock");
     system("xdotool key Num_Lock");
     usleep(14000);
    }



    return "ok";

}






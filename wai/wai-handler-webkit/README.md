wai-handler-webkit
==================

Turn WAI applications into standalone GUIs using Qt WebKit.


Linux
-----

You'll need the appropriate system libraries, on Ubuntu:

    apt-get install libqtwebkit-dev

On Lucid, this required adding a PPA:

    sudo add-apt-repository ppa:kubuntu-ppa/backports


Windows
-------

Install the Qt SDK from <http://qt.nokia.com/downloads/>

Your application's Cabal file will require certain options for Windows,
shown below.  In particular, we need to link with `g++`, so make sure
it's in your `PATH`.  The option `-optl-mwindows` ensures that the
application does not open a terminal.

    if os(windows)
      ghc-options: -Wall -threaded -pgml g++ -optl-static -optl-mwindows
    else
      ghc-options: -Wall

Run `cabal-install` with the Qt `include` and `lib` directories.

    export QT_PATH=c:/QtSDK/Desktop/Qt/4.7.3/mingw

    cabal-dev install \
      --extra-include-dirs=$QT_PATH/include \
      --extra-include-dirs=$QT_PATH/include/QtCore \
      --extra-include-dirs=$QT_PATH/include/QtNetwork \
      --extra-include-dirs=$QT_PATH/include/QtGui \
      --extra-include-dirs=$QT_PATH/include/QtWebKit \
      --extra-lib-dirs=$QT_PATH/lib

You'll need to include these DLLs with your application:

    phonon4.dll
    libgcc_s_dw2-1.dll
    QtCore4.dll
    QtGui4.dll
    QtNetwork4.dll
    QtWebKit4.dll

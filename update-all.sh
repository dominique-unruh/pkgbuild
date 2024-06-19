PIP2PKGBUILD=/tmp/pip2pkgbuild/pip2pkgbuild/pip2pkgbuild.py

pip_package () {
    mkdir -p "python-$1"
    ( cd "python-$1" && $PIP2PKGBUILD --pep517 "$1" )
}

pip_package qiskit-qasm3-import

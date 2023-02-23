{ lib
, buildPythonPackage
, pythonOlder
, fetchFromGitHub
, setuptools
, construct
, websockets
, pytest-asyncio
, pytestCheckHook
}:

buildPythonPackage rec {
  pname = "vallox-websocket-api";
  version = "3.1.0";
  format = "pyproject";

  disabled = pythonOlder "3.8";

  src = fetchFromGitHub {
    owner = "yozik04";
    repo = "vallox_websocket_api";
    rev = "refs/tags/${version}";
    hash = "sha256-JbTuBzRSgMTPSgWEEAJGc8R44VLHiMr4qocbBjpJBmk=";
  };

  nativeBuildInputs = [
    setuptools
  ];

  propagatedBuildInputs = [
    construct
    websockets
  ];

  nativeCheckInputs = [
    pytest-asyncio
    pytestCheckHook
  ];

  pythonImportsCheck = [ "vallox_websocket_api" ];

  meta = {
    description = "Async API for Vallox ventilation units";
    homepage = "https://github.com/yozik04/vallox_websocket_api";
    license = lib.licenses.lgpl3Only;
    maintainers = with lib.maintainers; [ dotlambda ];
  };
}

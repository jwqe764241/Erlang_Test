## 윈도우즈에서 Erlang VSCode 설정

1. https://www.erlang.org/downloads 에서 erlang OTP를 설치한 후 설치된 디렉토리 및에 있는 bin 폴더의 경로를 환경변수로 등록한다.
2. https://github.com/erlang/rebar3 에서 rebar3를 다운로드 받는다.
3. rebar3 디렉토리에 존재하는 bootstrap.bat을 실행한 후, rebar3의 경로를 환경변수로 등록한다.
4. VSCode를 설치한 후 https://marketplace.visualstudio.com/items?itemName=pgourlain.erlang 에서 erlang 플러그인을 설치한다.
5. 설치 후, Settings -> Extensions -> erlang configuration 탭에서 Erlang Path와 Rebar Path에 각각 설치 경로를 입력한다.
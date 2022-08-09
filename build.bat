SET CGO_ENABLED=0
set APPNAME=go-piping-server

SET GOOS=windows
SET GOARCH=amd64
go build -ldflags "-s -w" -o build/%APPNAME%_%GOOS%_%GOARCH%.exe main/main.go 

SET GOOS=linux
SET GOARCH=amd64
go build -ldflags "-s -w" -o build/%APPNAME%_%GOOS%_%GOARCH% main/main.go 

SET GOOS=linux
SET GOARCH=arm64
go build -ldflags "-s -w" -o build/%APPNAME%_%GOOS%_%GOARCH% main/main.go 

SET GOOS=linux
SET GOARCH=mips
SET GOMIPS=softfloat
go build -ldflags "-s -w" -o build/%APPNAME%_%GOOS%_%GOARCH% main/main.go 

SET GOOS=linux
SET GOARCH=mipsle
SET GOMIPS=softfloat
go build -ldflags "-s -w" -o build/%APPNAME%_%GOOS%_%GOARCH% main/main.go 


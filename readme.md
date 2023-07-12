Verify if font installation is working.

commands:

### How to run

#### 1. One needs to build the image

```
docker build . -f Dockerfile -t playwright-font-check
```

#### 2. One needs to create the output folder if it does not exist yet

```
mkdir -p tests/example.spec.ts-snapshots
mkdir -p playwright-report
```

#### 3. One needs to run the image

WINDOWS POWERSHELL:
```powershell
docker run -it --rm -v ${PWD}\tests\example.spec.ts-snapshots:/tests/example.spec.ts-snapshots -v ${PWD}\playwright-report:/playwright-report playwright-font-check
```
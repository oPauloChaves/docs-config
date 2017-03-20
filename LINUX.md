# Linux commands

### Count the num txt files recursively

```sh
# http://stackoverflow.com/a/30457540/3050126
cd some-folder
find . -name \*.txt -not -path \*/\.\* | wc -l
```

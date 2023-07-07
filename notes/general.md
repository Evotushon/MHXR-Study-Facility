# General Notes

|Info                      | Info            |
|:---:                     | :---:           |
|Protocol Used             | `TCP/IP`, `HTML`|
|Type                      | `IPV4`          |
|Main Game Code File in APK| `libMHS.so`     |

Domains and IPs Found:
- https://mhxr-dispatch.s3.ap-northeast-1.amazonaws.com (Cloud Storage, first tries to connect to [/09.03.06.json](https://mhxr-dispatch.s3.ap-northeast-1.amazonaws.com/09.03.06), which may be a list of the files to download?) (Making a basic encrypted file server can work, also making a free [S3 AWS server](https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html) should do) (Important to know that this is the first server it tries to connect to)
- http://10.202.3.44/android/filelist.txt.patch (???)
- http://203.191.249.158:13000/ (???)
- http://web.mh-xr.jp/ (The original MHExplore website, but, since the site now is a porn website, it can't be used anymore. We don't know what it's used for)
- http://localhost/MHi_Server/Server/htdocs/index.php?api=Login&app_id=A0300_7-b&gameuser_id=G0300_7-b&password=IguIqecBKgnzMcq6KMmS0p1I0CX83FBcpl9MwKzY1LjdaYzA (We don't know why this exists, but it queries using some credentials)
- http://test.capcom.com.tw/ (Only thing for sure is that it's from TW, maybe it was for testing new builds?)
- http://mhxrres.capcom.com.tw/ (probably the TW servers' equivalent of mhxr-dispatch)
- http://api.mh-xr.net/ (100% where the server resided)

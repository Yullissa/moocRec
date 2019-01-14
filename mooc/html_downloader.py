# coding=gbk
import requests

class Html_Downloader(object):
    '''
    这个类用于下载html
    '''
    def download(self,url):
        if url is None:
            return None
        #response = requests.get(url,headers={'Accept-Encoding':'deflate'})
        response = requests.get(url)
        #encode(utf-8)非常重要
        return response.text.encode('utf-8')
    
# coding=gbk
import requests

class Html_Downloader(object):
    '''
    �������������html
    '''
    def download(self,url):
        if url is None:
            return None
        #response = requests.get(url,headers={'Accept-Encoding':'deflate'})
        response = requests.get(url)
        #encode(utf-8)�ǳ���Ҫ
        return response.text.encode('utf-8')
    
# coding:gbk

import os
import html_parser
import html_downloader
import save_data

class MoocUser(object):
    def __init__(self):
        self.downloader = html_downloader.Html_Downloader() #html������
        self.parser = html_parser.Html_Parser()
        self.save_data = save_data.SaveData()
        
    def crawl(self,url):
        #���غõ�rank_html
        rank_cont = self.downloader.download(url)
        #ץȡ�����û�������Ϣ#####֮���ٴ��������Ϣ    
        self.parser.parser_rank(rank_cont)
        
    def show(self):
        print ("hello")
        try:
            url = "http://mooc.guokr.com/rank/?order=review"
            print ("��ʼ������ҳ".decode('gbk'))
            self.crawl(url)
            print "in this"

            self.save_data.ins_cmt()
            print " end save cmt"
            self.save_data.ins_course()

        except Exception as e:
            print (u"wrong",e)
            return
    
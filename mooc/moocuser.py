# coding:gbk

import os
import html_parser
import html_downloader
import save_data

class MoocUser(object):
    def __init__(self):
        self.downloader = html_downloader.Html_Downloader() #html下载器
        self.parser = html_parser.Html_Parser()
        self.save_data = save_data.SaveData()
        
    def crawl(self,url):
        #下载好的rank_html
        rank_cont = self.downloader.download(url)
        #抓取到的用户数据信息#####之后再处理这个信息    
        self.parser.parser_rank(rank_cont)
        
    def show(self):
        print ("hello")
        try:
            url = "http://mooc.guokr.com/rank/?order=review"
            print ("开始解析网页".decode('gbk'))
            self.crawl(url)
            print "in this"

            self.save_data.ins_cmt()
            print " end save cmt"
            self.save_data.ins_course()

        except Exception as e:
            print (u"wrong",e)
            return
    
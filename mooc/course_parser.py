#coding=gbk
import re
#import urlparse
from bs4 import BeautifulSoup
from html_downloader import Html_Downloader
from conf import COURSE_DICT
from conf import PLAT_DICT
from save_data import SaveData

class Course_Parser(object):
    def __init__ (self):  
        self.html_down = Html_Downloader()

    def get_coursedetail(self,course_as,cmt_score,stu_rank):
        self.school = [0 for i in range(0,88)]  
        self.plat = [0 for i in range(0,22)]
        self.lang = [0 for i in range(0,3)]
        self.sourse_disp = 0
        self.plat_disp = 0
        self.save_data = SaveData()
        self.course_info = {}
        self.score = [0 for i in range(0,11)]
        self.stud_test = [0 for i in range(0,84)]
        self.course_odd_num = 0
        self.course_index = -1
        self.course_info1 = {}
        
        for course_a in course_as: 
            print "enter again"
            flag = 0
            self.course_index = self.course_index + 1
            course_href = course_a['href']    
            print "1"
            try:
                self.course_info["img_href"] = "None"
                course_detail = self.html_down.download(course_href)
                #Beautiful Soup自动将输入文档转换为Unicode编码，输出文档转换为utf-8编码。
                soup_course = BeautifulSoup(course_detail,'html.parser')
                
                print "2"
                #try:
                print "course_href",course_href
                self.course_info["course_id"] = course_href.split('/')[4]
                if (int(self.course_info["course_id"])%2) == 1:
                    print "before flag = ",flag
                    print self.course_info["course_id"]
                    flag = 1
                    print "after flag = ",flag
                else:
                    self.course_odd_num = self.course_odd_num + 1
                    self.stud_test[self.course_odd_num] = self.course_info["course_id"]
              
                print "3"
                self.course_info["imgid"] = str(self.course_info["course_id"])+".jpg"
                self.course_info["course_name"] = soup_course.find('title').text.strip().split(' ')[0]
                #self.course_info["course_name"] = course_href.split('/')[5]
                print "\n"
                print self.course_info["course_name"]
                self.course_info["course_href"] = course_href
                
                print "4"
                plat_regexp = re.compile("/platform/*")
                plat_info = soup_course.find('a',href = plat_regexp)  
                school_regexp = re.compile("school_id")
                school_info = soup_course.find('a',href = school_regexp)
                try:
                    # print plat_info.text.replace(' ','').replace('\n','').encode('gbk')
                    ind1 = int(PLAT_DICT[plat_info.text.replace(' ','').replace('\n','').encode('gbk')])
                    self.course_info["course_plat"] = plat_info.text.replace(' ','').replace('\n','')
                    #print "course_plat == ",self.course_info["course_plat"]
                    if flag ==1:
                        self.plat[ind1] = self.plat[ind1] + 1
                        self.plat_disp = self.plat_disp + 1 
                        self.course_info["cour_plat_id"] = ind1+1
                except:
                    test_exist = plat_info.text.replace('\n','').encode('gbk')
                    ind1 = int(PLAT_DICT['others'])
                    self.course_info["course_plat"] = "others"
                    if flag ==1:
                        self.plat[ind1] = self.plat[ind1] + 1
                        self.course_info["cour_plat_id"] = 0
    #                    print "other plats"
    #                    print plat_info.text.replace('\n','').encode('gbk')
                try:
                    print school_info.text.replace('\n','').encode('gbk')
                    ind2 = int(COURSE_DICT[school_info.text.replace('\n','').encode('gbk')])
                    
                    self.course_info["course_school"] = school_info.text.replace('\n','')
                    #print "course_school = ",self.course_info["course_school"]
                    if flag ==1:
                        self.school[ind2] = self.school[ind2] + 1
                        self.course_info["cour_school_id"] = ind2+1
                        self.sourse_disp = self.sourse_disp + 1
                except:
                    #若页面存在
                    test_exist = school_info.text.replace('\n','').encode('gbk')
                    ind2 = int(COURSE_DICT['others'])
                    self.course_info["course_school"] = "others"
                    if flag ==1:
                        self.school[ind2] =  self.school[ind2] + 1
                        self.course_info["cour_school_id"] = 0
                    #print "other schools"
                    #print "               "+school_info.text.replace('\n','').encode('gbk')          
                try:
                    course_langinfo = soup_course.find('ul',class_ = "course-info")
                    if "中文授课" in str(course_langinfo.encode('gbk')):
                        if flag ==1:
                            self.lang[0] = self.lang[0] + 1 
                        self.course_info["course_lang"] = "中文授课".decode('gbk')
                        self.course_info["cour_lang_id"] = 1
                    elif "英语授课" in str(course_langinfo.encode('gbk')):
                        if flag ==1:
                            self.lang[1] = self.lang[1] + 1
                        self.course_info["course_lang"] = "英文授课".decode('gbk')
                        self.course_info["cour_lang_id"] = 2
                    else:
                        #若页面存在
                        test_exist = school_info.text.replace('\n','')
                        if flag ==1:
                            self.lang[2] = self.lang[2] + 1
                    print "course_lang = ",self.course_info["course_lang"]
                except:
                     print "lang wrong"
                     
                print "5"
                
                try:
                    #保存评分5-9
                    course_score = soup_course.find('span',class_="course-score-average")
                    self.course_info["course_score"] = course_score.text
                    if "暂无评价".decode('gbk') in self.course_info["course_score"].replace('\n','').replace(' ',''):
                        print "暂无评价"
                        self.course_info["course_score"] = "None"
                        self.course_info["cour_score_id"] = 0
                        if flag ==1:
                            self.score[0] = self.score[0] + 1
                        
                    print "course_score = ",float(self.course_info["course_score"])
                    if self.course_info["course_score"] == "None":
                        print self.course_info["course_score"]
                        if flag ==1:
                            self.score[0] = self.score[0] + 1 #others
                        self.course_info["cour_score_id"] = 0
                    elif float(self.course_info["course_score"]) >=9.0:
                        print "9"
                        if flag ==1:
                            self.score[9] =  self.score[9]+1
                        self.course_info["cour_score_id"] = 9
                    elif float(self.course_info["course_score"])>=8:
                        print "8"
                        if flag ==1:
                            self.score[8] =  self.score[8]+1
                        self.course_info["cour_score_id"] = 8
                    elif float(self.course_info["course_score"])>=7:
                        print "7"
                        if flag ==1:
                            self.score[7] =  self.score[7]+1    
                        self.course_info["cour_score_id"] = 7
                    elif float(self.course_info["course_score"])>=6:
                        print "6"
                        if flag ==1:
                            self.score[6] =  self.score[6]+1   
                        self.course_info["cour_score_id"] = 6 
                    elif float(self.course_info["course_score"])>=5:
                        print "5"
                        if flag ==1:
                            self.score[5] =  self.score[5]+1
                        self.course_info["cour_score_id"] = 5
                except:
                    print "score wrong" 
                try:
                    course_duration = soup_course.find('p',class_ = "course-duration")
                    self.course_info["course_duraweek"] = course_duration.find('b').text.split('/')[0]
                    self.course_info["course_durahour"] = course_duration.find('b').text.split('/')[1]
                except:
                    self.course_info["course_durahour"] = "None"
                    self.course_info["course_duraweek"] = "None"
                    print "duration wrong" 
                try:
                    course_go = soup_course.find('a',class_ = "course-go")
                    self.course_info["course_go"] = course_go["href"]
                    print self.course_info["course_go"]
                except:
                    print "course_go wrong" 
                try:
                    course_start = soup_course.find('p',class_ = "course-start")
                    self.course_info["course_start"] = course_start.text.encode('gbk').split('：')[1].decode('gbk')
                    print self.course_info["course_start"]
                except:
                    print "course_info wrong" 
                print "enter savecourse-info"
                self.course_info1["course_id"] = self.course_info["course_id"]
                self.course_info1["cour_school_id"] = self.course_info["cour_school_id"]
                self.course_info1["cour_score_id"] = self.course_info["cour_score_id"]
                self.course_info1["cour_lang_id"] = self.course_info["cour_lang_id"]
                self.course_info1["cour_plat_id"] = self.course_info["cour_plat_id"]
                print "selfcourse_id",self.course_info["course_id"]
                #将信息插入数据库
                self.save_data.ins_course_in(self.course_info1)  
                
                print "score",cmt_score[self.course_index]
                print "stu_rank",stu_rank
                self.save_data.ins_cmt_score(self.course_info["course_id"],cmt_score[self.course_index],stu_rank)
                # self.save_data.ins_cs(self.course_index,self.course_info["course_id"],stu_rank)
            except:
                continue 


        return self.school,self.plat,self.lang,self.score,self.stud_test
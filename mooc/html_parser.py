# coding=gbk
import re
# import urllib
from bs4 import BeautifulSoup
from conf import DOWNLOAD_URL
from html_downloader import Html_Downloader
from entity import Entity
from save_data import SaveData
from course_parser import Course_Parser
import sys

import sys

reload(sys)
sys.setdefaultencoding('utf-8')


class Html_Parser(object):
    '''
    html��������������ȡ����Ƶ��Ϣ
    '''

    def __init__(self):
        # sys.setdefaultencoding('utf-8')
        self.res_data = []  # ����û���Ϣ
        self.html_down = Html_Downloader()
        self.save_data = SaveData()
        self.entity = Entity()
        self.entity.rank = 0
        self.course_parser = Course_Parser()
        self.school = [0 for i in range(0, 88)]
        self.plat = [0 for i in range(0, 22)]
        self.lang = [0 for i in range(0, 3)]
        self.totalcourse = 0
        self.course_info = {}
        self.score = [0 for i in range(0, 11)]
        self.stud_test = [0 for i in range(0, 84)]
        self.cmt_score = [0 for i in range(0, 200)]

    def parser_user(self, user_cont):
        return None

    def parser_rank(self, html_cont):
        '''
        :param html_cont:html������
        '''
        if html_cont is None:
            return

        # ʹ��BeautifulSoupģ���html���н���
        # == ʹ��html_cont�ļ�����BeautifulSoup����
        soup = BeautifulSoup(html_cont, 'html.parser', from_encoding='utf-8')

        # �ҵ���������/user/98230941/������
        user_regexp = re.compile("/user/\d+/")
        # user_regexp = re.compile("/user/[1062673018/")
        links = soup.find_all('a', href=user_regexp)
        linkset = []
        # i = 0
        for link in links:
            linkset.append(link['href'])
        links2 = list(set(linkset))
        links2.sort(key=linkset.index)

        for link in links2:
            try:
                self.del_userinfo(link)
            except:
                continue

    def del_userinfo(self, link):
        try:
            url_user = DOWNLOAD_URL + link
            # --���������û���ҳ��,��ȡ������Ϣ
            self.entity.rank = self.entity.rank + 1
            self.entity.sid = link
            user_cont = self.html_down.download(url_user)
            soup_user = BeautifulSoup(user_cont, 'html.parser')
            self.entity.name = soup_user.find('a', href=link)['title']

            div_edu = soup_user.find('div', class_="education")
            if str(div_edu.p) != "None":
                self.entity.education = div_edu.p.text
            else:
                self.entity.education = "None"

            # �Ѽ�ѧ���û���ѧ���Ŀγ���Ϣ ���Ż�
            url_course = DOWNLOAD_URL + self.entity.sid + "/review/"
            courses_html = self.html_down.download(url_course)
            soup_courses = BeautifulSoup(courses_html, 'html.parser')
            courses_list = re.compile("https://mooc.guokr.com/(course|career)/[0-9]+")
            course_as = soup_courses.find_all('a', href=courses_list)

            # ��������
            self.cmt_score = [0 for i in range(0, 400)]
            cmt_score = soup_courses.find_all('div', class_="cmt_list-cmt")
            cmt_index = 0
            score_gray = re.compile("gray$")
            for cmt_scoreitem in cmt_score:
                cmt_scoregray = cmt_scoreitem.find_all('b', class_=score_gray)
                cmt_graynum = len(cmt_scoregray)
                cmt_sc = round(float(5 - float(cmt_graynum * 0.5)), 2)
                self.cmt_score[cmt_index] = cmt_sc
                cmt_index = cmt_index + 1

            next_flag = "��һҳ".decode('gbk')
            next_link = soup_courses.find('a', text=next_flag)
            while str(next_link) != "None":
                next_link = next_link['href']
                print "##########next_link", next_link
                url_course = DOWNLOAD_URL + str(next_link)
                try:
                    courses_html = self.html_down.download(url_course)
                    soup_courses = BeautifulSoup(courses_html, 'html.parser')
                    courses_list = re.compile("http://mooc.guokr.com/(course|career)/[0-9]+")
                    course_as = course_as + soup_courses.find_all('a', href=courses_list)
                    print "2"
                    cmt_score = soup_courses.find_all('div', class_="cmt_list-cmt")
                    for cmt_scoreitem in cmt_score:
                        cmt_scoregray = cmt_scoreitem.find_all('b', class_=score_gray)
                        cmt_graynum = len(cmt_scoregray)
                        print "3"
                        cmt_sc = round(float(5 - float(cmt_graynum * 0.5)), 2)
                        self.cmt_score[cmt_index] = cmt_sc
                        cmt_index = cmt_index + 1
                    next_link = soup_courses.find('a', text=next_flag)
                except:
                    next_link = "None"
                    pass
            # ��ȡ�γ̵���ϸ��Ϣ
            self.course_parser.get_coursedetail(course_as, self.cmt_score, self.entity.rank)
            print "end html parser"
        except:
            pass

        # ��ѧ���û�����Ϣ�洢��Mysql���ݿ���
        # self.save_data.ins_stu(self.entity.rank,self.entity.sid.split('/')[2],self.entity.name,self.entity.education)

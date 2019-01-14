# coding=utf-8

class Entity(object):
    def __init__ (self):
        self.__sid = '' #学生id号
        self.__rank = '' #学生排名
        self.__name = '' 
        self.__education = ''
        self.__cno = '' #学生课程数量
        
    def sid(self):
        return self.__sid
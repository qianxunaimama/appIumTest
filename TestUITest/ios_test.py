"""
Simple iOS tests, showing accessing elements and getting/setting text from them.
"""
import unittest
import os
from random import randint
from appium import webdriver
from time import sleep

class SimpleIOSTests(unittest.TestCase):

    def setUp(self):
        # set up appium
        app = os.path.abspath('/Users/zxj/Desktop/TestUITest/build/Release-iphonesimulator/TestUITest.app')
        self.driver = webdriver.Remote(
            command_executor='http://127.0.0.1:4723/wd/hub',
            desired_capabilities={
                'app': app,
                'automationName':'XCUITest',
                'platformName': 'iOS',
                'platformVersion': '10.2',
                'deviceName': 'iPhone 7'
            })

    def tearDown(self):
        self.driver.quit()

    def test_ui_computation(self):
    	print('begin work')

    	self._testBtn()

    def _testBtn(self):
    	try:
    		el = self.driver.find_element_by_accessibility_id('hello')
    		el.click()
    		sleep(6)
    	except:
    		print('not work')

if __name__ == '__main__':
	suite = unittest.TestLoader().loadTestsFromTestCase(SimpleIOSTests)
	unittest.TextTestRunner(verbosity=2).run(suite)

import random
import math

def sine(theta):
    theta %= 3600000
    sineSign = 1
    if theta >= 1800000: sineSign = -1
    theta %= 1800000

    temp = 1800000
    temp -= theta
    if theta > 900000: theta = temp
    if theta > 900000: theta -= 900000

    x = theta
    x //= 90
    x -= 5000

    s = x
    s *= x
    s //= 6930
    s *= -5741
    s //= 10000
    s += x
    s += 7071
    s *= sineSign

    return s

class LessThan:
    __slots__ = ()
    def __eq__(self, other):
        return type(other) is LessThan
    def __lt__(self, other):
        if type(other) is LessThan:
            return False
        return True
    def __le__(self, other):
        return True
    def __ne__(self, other):
        return type(other) is not LessThan
    def __gt__(self, other):
        return False
    def __ge__(self, other):
        if type(other) is LessThan:
            return True
        return False
    def __abs__(self):
        return 0

def absmax(*args):
    result = LessThan()
    for arg in args:
        if abs(arg) > abs(result):
            result = arg
    return result

worstRelErr = -float("inf")
worstAbsErr = -float("inf")
#while 1:
if 1:
    #angle = random.randint(0, 3600000)
    angle = 598
    actual = round(math.sin(math.radians(angle / 10000)) * 10000) / 10000
    approx = sine(angle) / 10000
    if approx == 0.0 and actual != 0.0:
        if abs(actual) >= 0.00025:
            print("Incorrect Zero for angle %u" % (angle,))
            print("Actual = % 10.7f" % (actual,))
        #continue
        exit()
    #print("% 10.7f v % 10.7f => %17.14f" % (actual, approx, ,))
    # relerr = abs(actual - approx) / absmax(0.00001, actual)
    # if relerr > worstRelErr:
    #     worstRelErr = relerr
    #     print("Worst relative error so far is angle %r => %r" % (angle, worstRelErr))
    #     print("Actual = % 10.7f" % (actual,))
    #     print("Approx = % 10.7f" % (approx,))
    abserr = abs(actual - approx)
    if abserr > worstAbsErr:
        worstAbsErr = abserr
        print("Worst absolute error so far is angle %r => %r" % (angle, worstAbsErr))
        print("Actual = % 10.7f" % (actual,))
        print("Approx = % 10.7f" % (approx,))

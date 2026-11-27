# to understand different imports 
# import method
from demo1_package.demo2_methods import area_of_circle

# import module with alias 
from demo1_package import demo2_methods as area

# import package - need to configure __init__.py (as of now not going to work)
# recommended
import demo1_package

# import variable
from demo1_package.demo1_datatypes import colors



print(area_of_circle(2))

print(area.area_of_circle(3))






